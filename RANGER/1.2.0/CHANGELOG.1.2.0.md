
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
# Apache Ranger Changelog

## Release 1.2.0 - 2018-10-04



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2213](https://issues.apache.org/jira/browse/RANGER-2213) | Tomcat Security Vulnerability Alert. The version of the tomcat for ranger should upgrade to 7.0.90. |  Major | Ranger | Qiang Zhang | Qiang Zhang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2158](https://issues.apache.org/jira/browse/RANGER-2158) | Performance improvement to REST API call to update policies |  Critical | Ranger | Ramesh Mani | Abhay Kulkarni |
| [RANGER-2162](https://issues.apache.org/jira/browse/RANGER-2162) | Upgrade c3p0 libraries |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2164](https://issues.apache.org/jira/browse/RANGER-2164) | Ranger to add default altlas policy for rangertagsync user. |  Major | admin | Nixon Rodrigues | Nikhil Purbhe |
| [RANGER-2173](https://issues.apache.org/jira/browse/RANGER-2173) | Optimize Trie constuction and Policy lookup |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2169](https://issues.apache.org/jira/browse/RANGER-2169) | Create unique index on service and name column of x\_policy table |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2153](https://issues.apache.org/jira/browse/RANGER-2153) | Supply the function of reverting policy history version. |  Major | Ranger | Qiang Zhang | Qiang Zhang |
| [RANGER-2168](https://issues.apache.org/jira/browse/RANGER-2168) | Add service admin user through service config |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2172](https://issues.apache.org/jira/browse/RANGER-2172) | Good coding practices for unix authentication Service in Ranger |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2177](https://issues.apache.org/jira/browse/RANGER-2177) | Handle validations for duplicate configuration item during service create/edit |  Minor | admin | Peng Xing | Peng Xing |
| [RANGER-2181](https://issues.apache.org/jira/browse/RANGER-2181) | Code Improvement To Follow Best Practices |  Major | admin | Mehul Parikh | Bhavik Patel |
| [RANGER-2188](https://issues.apache.org/jira/browse/RANGER-2188) | Support multiple threads to build Trie and on-lookup post-setup for Trie nodes |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2167](https://issues.apache.org/jira/browse/RANGER-2167) | Upgrade to Apache parent pom version 20 |  Minor | admin, plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-2191](https://issues.apache.org/jira/browse/RANGER-2191) | Update ranger-tool with new options to control Trie |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2161](https://issues.apache.org/jira/browse/RANGER-2161) | Improvement in policy screen permission item's |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2214](https://issues.apache.org/jira/browse/RANGER-2214) | Do some code improvement for the error message for KylinClient.java |  Minor | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-2212](https://issues.apache.org/jira/browse/RANGER-2212) | Add multiple urls tips for the ‘Kylin URL’ configuration item when creating the kylin-plugin service |  Minor | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-2184](https://issues.apache.org/jira/browse/RANGER-2184) | Update RangerAtlas authorization to authorize add/update/remove of relationships |  Major | plugins | Nixon Rodrigues | Nixon Rodrigues |
| [RANGER-2157](https://issues.apache.org/jira/browse/RANGER-2157) | Add NiFi Registry service definition and NiFiRegistryClient |  Major | plugins | Koji Kawamura | Koji Kawamura |
| [RANGER-2218](https://issues.apache.org/jira/browse/RANGER-2218) | Service-Definition update should not allow updates to names of resources, access-types,  conditions or data-masks |  Major | Ranger | Abhay Kulkarni | Sailaja Polavarapu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2152](https://issues.apache.org/jira/browse/RANGER-2152) | Incorrect debugging information in RangerPluginClassLoader.java |  Trivial | plugins | Peng Xing | Peng Xing |
| [RANGER-1951](https://issues.apache.org/jira/browse/RANGER-1951) | build problems with the saveVersion.py script |  Major | build-infra | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-2165](https://issues.apache.org/jira/browse/RANGER-2165) | Address JPA Cache issue when policies Create, Update and Delete are done via REST API in Apache Ranger admin |  Critical | Ranger | Ramesh Mani | Abhay Kulkarni |
| [RANGER-2166](https://issues.apache.org/jira/browse/RANGER-2166) | A ClassNotFound exception is thrown with atlasrest as a tag source |  Major | tagsync | Vishal Suvagia | Abhay Kulkarni |
| [RANGER-2180](https://issues.apache.org/jira/browse/RANGER-2180) | Handle token replacement correctly when token is not defined in the request context |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2182](https://issues.apache.org/jira/browse/RANGER-2182) | Handle upgrade scenario since atlas-service def is added with new resources for relationship |  Critical | Ranger | Bhavik Patel | Bhavik Patel |
| [RANGER-2183](https://issues.apache.org/jira/browse/RANGER-2183) | Use INodeAttribute information to authorize HDFS access |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2189](https://issues.apache.org/jira/browse/RANGER-2189) | Atlas service default policies should allow relationship operations for all |  Critical | plugins | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2186](https://issues.apache.org/jira/browse/RANGER-2186) | Increment service-specific policy and tag versions after update transaction is committed |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2196](https://issues.apache.org/jira/browse/RANGER-2196) | Ensure that any explicit threads used by Ranger are marked as daemon threads |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2197](https://issues.apache.org/jira/browse/RANGER-2197) | Delegate Admin is not able to create policy |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2201](https://issues.apache.org/jira/browse/RANGER-2201) | Log no ranger audits when entityId value is not null or empty string |  Major | plugins | Nixon Rodrigues | Nixon Rodrigues |
| [RANGER-2215](https://issues.apache.org/jira/browse/RANGER-2215) | Can't copy and paste multiple paths into Ranger Admin UI for HDFS create policy |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2204](https://issues.apache.org/jira/browse/RANGER-2204) | Ranger Admin's admin log event for changing Audit Logging of a policy doesn't show the actual changes |  Minor | Ranger | Janos Kovacs | Sailaja Polavarapu |
| [RANGER-2230](https://issues.apache.org/jira/browse/RANGER-2230) | Update Atlas version to 1.1.0 |  Major | Ranger | Velmurugan Periasamy | Velmurugan Periasamy |
| [RANGER-2187](https://issues.apache.org/jira/browse/RANGER-2187) | External Group search fails on Ranger UI when installed with postgres |  Major | admin | Mehul Parikh | Bhavik Patel |
| [RANGER-2114](https://issues.apache.org/jira/browse/RANGER-2114) | Internal Exception: com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column 'content' at row 1 |  Major | Ranger | Alexander Posledov | Fatima Amjad Khan |
| [RANGER-2195](https://issues.apache.org/jira/browse/RANGER-2195) | TagPolicy not working due to failure in updating tag policy version |  Critical | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2193](https://issues.apache.org/jira/browse/RANGER-2193) | Form validation during testconnection should be consistent with service creation/editing |  Minor | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-2270](https://issues.apache.org/jira/browse/RANGER-2270) | Restrict tag module access to unprivileged users |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2163](https://issues.apache.org/jira/browse/RANGER-2163) | Spelling error for "Persmission" in the PatchPersmissionModel\_J10003.java. |  Minor | admin | xiehaihong | Qiang Zhang |
| [RANGER-2696](https://issues.apache.org/jira/browse/RANGER-2696) | Fix unit test failure in TestPolicyEngine.testValiditySchedulerApplicable |  Minor | Ranger | Abhay Kulkarni | Abhay Kulkarni |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2150](https://issues.apache.org/jira/browse/RANGER-2150) | Unit test coverage for XUserMgr and UserMgr class |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2171](https://issues.apache.org/jira/browse/RANGER-2171) | Unit Test cases to cover policy operations from service admin user |  Major | Ranger | Pradeep Agrawal | Nikhil Purbhe |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2198](https://issues.apache.org/jira/browse/RANGER-2198) | Remove deprecated client API from HBase plugin |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-2226](https://issues.apache.org/jira/browse/RANGER-2226) | Define explicit (test) dependency on json-smart in the Knox agent |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-2228](https://issues.apache.org/jira/browse/RANGER-2228) | Release Ranger 1.2.0 |  Major | Ranger | Velmurugan Periasamy | Velmurugan Periasamy |


