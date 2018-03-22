
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

## Release 1.1.0 - Unreleased (as of 2018-03-22)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1159](https://issues.apache.org/jira/browse/KNOX-1159) | Create ".sha1" files when releasing instead of ".sha" |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1200](https://issues.apache.org/jira/browse/KNOX-1200) | Update Apache parent pom version |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1195](https://issues.apache.org/jira/browse/KNOX-1195) | Some misc code cleanups |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1201](https://issues.apache.org/jira/browse/KNOX-1201) | Disable DocTypes |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-1006](https://issues.apache.org/jira/browse/KNOX-1006) | Service Discovery and Topology Generation |  Major | Server | Phil Zampino | Phil Zampino |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1168](https://issues.apache.org/jira/browse/KNOX-1168) | ClassNotFoundException exception because of package restructuring |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-1169](https://issues.apache.org/jira/browse/KNOX-1169) | Clear Cluster Configuration Monitor Cache When No Relevant Descriptors Remain |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1171](https://issues.apache.org/jira/browse/KNOX-1171) | Handle invalid hadoop.auth cookie returned by Oozie |  Major | Server | Kevin Minder | Kevin Minder |
| [KNOX-1172](https://issues.apache.org/jira/browse/KNOX-1172) | OOZIEUI service definition name conflict |  Major | Server | Kevin Minder | Kevin Minder |
| [KNOX-1108](https://issues.apache.org/jira/browse/KNOX-1108) | NiFiHaDispatch not failing over |  Major | Server | Jeff Storck | Jeff Storck |
| [KNOX-1188](https://issues.apache.org/jira/browse/KNOX-1188) | Provider parameter order not maintained in generated topologies |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1167](https://issues.apache.org/jira/browse/KNOX-1167) | Support HDFS Federation in Knox topology generation |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1186](https://issues.apache.org/jira/browse/KNOX-1186) | Descriptors and Topology Generation Must Support Service Versioning |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1176](https://issues.apache.org/jira/browse/KNOX-1176) | Provider Configuration Reference Isn't Updated If New Reference Is Invalid |  Minor | Server | Phil Zampino | Phil Zampino |
| [KNOX-1177](https://issues.apache.org/jira/browse/KNOX-1177) | Retighten the rewrite rule on oozieui to reduce false positives |  Trivial | Server | Wei Han | Kevin Minder |
| [KNOX-1181](https://issues.apache.org/jira/browse/KNOX-1181) | Service Discovery feature should be enabled for RANGER service |  Major | Server | J.Andreina | Phil Zampino |
| [KNOX-1194](https://issues.apache.org/jira/browse/KNOX-1194) | AdminUI should use safe versions of YAML load and dump methods. |  Major | AdminUI | Phil Zampino | Phil Zampino |
| [KNOX-1199](https://issues.apache.org/jira/browse/KNOX-1199) | Ambari View API for Tez View needs Double Quotes Encoded on Dispatch |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-1198](https://issues.apache.org/jira/browse/KNOX-1198) | Ambari Service Discovery mappings should allow override/augmentation with external config |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1197](https://issues.apache.org/jira/browse/KNOX-1197) | AnonymousAuthFilter is not added when authentication=Anonymous in service |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-1179](https://issues.apache.org/jira/browse/KNOX-1179) | Document process for adding Ambari URL discovery support for services |  Major | Site | Phil Zampino | Phil Zampino |
| [KNOX-1203](https://issues.apache.org/jira/browse/KNOX-1203) | Provider Configuration Wizard for Shiro-based Providers Produces Configurations With Mis-ordered Params |  Major | AdminUI | Phil Zampino | Phil Zampino |
| [KNOX-1208](https://issues.apache.org/jira/browse/KNOX-1208) | WEBHBASE ZooKeeper ensemble discovery is incorrect |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1211](https://issues.apache.org/jira/browse/KNOX-1211) | Admin UI XSS/XSRF Protection |  Major | AdminUI, Server | Phil Zampino | Phil Zampino |
| [KNOX-1216](https://issues.apache.org/jira/browse/KNOX-1216) | Validate simple descriptors' provider configuration reference |  Major | AdminUI, Server | Phil Zampino | Phil Zampino |
| [KNOX-1217](https://issues.apache.org/jira/browse/KNOX-1217) | PAM auth provider configuration wizard should allow for specifying the login module/service |  Major | AdminUI | Phil Zampino | Phil Zampino |
| [KNOX-1219](https://issues.apache.org/jira/browse/KNOX-1219) | Dispatch Filter Params are Duplicated |  Major | Server | Phil Zampino | Phil Zampino |
| [KNOX-1091](https://issues.apache.org/jira/browse/KNOX-1091) | Knox Audit Logging - duplicate correlation ids |  Major | Server | Kevin Risden | Kevin Risden |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-1192](https://issues.apache.org/jira/browse/KNOX-1192) | Knox SSO - some config variables not getting picked up. |  Major | . | Sandeep More | Sandeep More |
| [KNOX-1040](https://issues.apache.org/jira/browse/KNOX-1040) | Knox Admin UI for Simple Descriptors and Provider Configurations |  Major | AdminUI | Phil Zampino | Phil Zampino |


