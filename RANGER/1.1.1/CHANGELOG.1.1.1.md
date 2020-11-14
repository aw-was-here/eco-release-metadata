
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

## Release 1.1.1 - Unreleased (as of 2020-11-14)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2209](https://issues.apache.org/jira/browse/RANGER-2209) | Service Definition for ABFS to support Ranger Authorization |  Major | Ranger | Yuan Gao | Yuan Gao |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2162](https://issues.apache.org/jira/browse/RANGER-2162) | Upgrade c3p0 libraries |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2169](https://issues.apache.org/jira/browse/RANGER-2169) | Create unique index on service and name column of x\_policy table |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2168](https://issues.apache.org/jira/browse/RANGER-2168) | Add service admin user through service config |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2218](https://issues.apache.org/jira/browse/RANGER-2218) | Service-Definition update should not allow updates to names of resources, access-types,  conditions or data-masks |  Major | Ranger | Abhay Kulkarni | Sailaja Polavarapu |
| [RANGER-2140](https://issues.apache.org/jira/browse/RANGER-2140) | Upgrade spring and guava libraries |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2207](https://issues.apache.org/jira/browse/RANGER-2207) | Allow resources to appear in column mask policies without being visible in access policies |  Major | Ranger | Eric Alton | Nitin Galave |
| [RANGER-2279](https://issues.apache.org/jira/browse/RANGER-2279) | Reduce the time spent changing passwords during Ranger Admin install |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2286](https://issues.apache.org/jira/browse/RANGER-2286) | Ranger install may be prevented by leftover DB entry |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2291](https://issues.apache.org/jira/browse/RANGER-2291) | Make optimized db schema script idempotent for all DB Flavors |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2308](https://issues.apache.org/jira/browse/RANGER-2308) | User role user should not able to access usersync audit report if it does not have permissions on the audit module. |  Minor | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2295](https://issues.apache.org/jira/browse/RANGER-2295) | Set specific Ranger version in patches status entry table |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2309](https://issues.apache.org/jira/browse/RANGER-2309) | Improve group search on policy edit page. |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2208](https://issues.apache.org/jira/browse/RANGER-2208) | Code improvement to fetch User/Group information and Service Config details |  Major | Ranger | Bhavik Patel | Bhavik Patel |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2204](https://issues.apache.org/jira/browse/RANGER-2204) | Ranger Admin's admin log event for changing Audit Logging of a policy doesn't show the actual changes |  Minor | Ranger | Janos Kovacs | Sailaja Polavarapu |
| [RANGER-2241](https://issues.apache.org/jira/browse/RANGER-2241) | Fix release build scripts to conform to latest Apache release guidelines - Part 2 - Remove sha1 and mds |  Major | Ranger | Colm O hEigeartaigh | Velmurugan Periasamy |
| [RANGER-2242](https://issues.apache.org/jira/browse/RANGER-2242) | JiSQL utility is failing Oracle UDF |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2238](https://issues.apache.org/jira/browse/RANGER-2238) | String comparison should not use ‘==’ in ServiceUtil.java |  Minor | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-2245](https://issues.apache.org/jira/browse/RANGER-2245) | Exclude Jetty libraries |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2250](https://issues.apache.org/jira/browse/RANGER-2250) | Service configs  fields are not showing for atlas service form page |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2247](https://issues.apache.org/jira/browse/RANGER-2247) | Ranger Plugin for HDFS throws StringIndexOutOfBounds exception when policy resource is "\\" |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2262](https://issues.apache.org/jira/browse/RANGER-2262) | Improvement of export to excel from report listing page for Oracle database. |  Major | Ranger | Harshal Chavan | Nikhil Purbhe |
| [RANGER-2269](https://issues.apache.org/jira/browse/RANGER-2269) | Implement best coding practices for validating user input |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2272](https://issues.apache.org/jira/browse/RANGER-2272) | Ensure that case of resource-definition names and access-type names in Ranger policy is the same as in service-definition after successful validation |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2275](https://issues.apache.org/jira/browse/RANGER-2275) | Make db\_setup retry delay configurable |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2278](https://issues.apache.org/jira/browse/RANGER-2278) | Unable to delete user if he has references in new ref tables. |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2297](https://issues.apache.org/jira/browse/RANGER-2297) | getContentSummary validation failure |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2305](https://issues.apache.org/jira/browse/RANGER-2305) | When Audit spooling to local filesystem is enabled, log files of the component have show a wrong error message |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2327](https://issues.apache.org/jira/browse/RANGER-2327) | Update Ranger db schema to use common sequence name |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2337](https://issues.apache.org/jira/browse/RANGER-2337) | Context-Enrichers need to clean up completely when the policy-engine is destroyed |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2419](https://issues.apache.org/jira/browse/RANGER-2419) | Improve sql script to skip statements when atlas service def is not supported |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2171](https://issues.apache.org/jira/browse/RANGER-2171) | Unit Test cases to cover policy operations from service admin user |  Major | Ranger | Pradeep Agrawal | Nikhil Purbhe |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2320](https://issues.apache.org/jira/browse/RANGER-2320) | Make db schema patches script idempotent for all DB Flavors |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |


