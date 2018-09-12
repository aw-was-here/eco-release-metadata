
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

## Release 1.0.1 - Unreleased (as of 2018-09-12)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2162](https://issues.apache.org/jira/browse/RANGER-2162) | Upgrade c3p0 libraries |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2169](https://issues.apache.org/jira/browse/RANGER-2169) | Create unique index on service and name column of x\_policy table |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2168](https://issues.apache.org/jira/browse/RANGER-2168) | Add service admin user through service config |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2028](https://issues.apache.org/jira/browse/RANGER-2028) | Fix release build scripts to conform to latest Apache release guidelines |  Major | Ranger | Colm O hEigeartaigh | Velmurugan Periasamy |
| [RANGER-2023](https://issues.apache.org/jira/browse/RANGER-2023) | Hive test connection / lookup failed in kerberos cluster. |  Major | Ranger | Deepak Sharma | Ramesh Mani |
| [RANGER-2038](https://issues.apache.org/jira/browse/RANGER-2038) | Handle validations for Auditor role users for Grant/revoke actions as well |  Major | Ranger | Fatima Amjad Khan | Fatima Amjad Khan |
| [RANGER-2035](https://issues.apache.org/jira/browse/RANGER-2035) | Errors accessing servicedefs with empty implClass with Oracle backend |  Major | admin | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-2042](https://issues.apache.org/jira/browse/RANGER-2042) | Fix error variable and remove invalid import package in upgrade\_admin.py file of the security admin. |  Major | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-2051](https://issues.apache.org/jira/browse/RANGER-2051) | Unable to delete services on Ranger Admin UI |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2057](https://issues.apache.org/jira/browse/RANGER-2057) | ranger-ugsync-default file not found and Log message |  Major | Ranger | suja s | Pradeep Agrawal |
| [RANGER-2060](https://issues.apache.org/jira/browse/RANGER-2060) | Knox proxy with knox-sso is not working for ranger |  Major | Ranger | Deepak Sharma | Vishal Suvagia |
| [RANGER-2066](https://issues.apache.org/jira/browse/RANGER-2066) | Hbase column family access is authorized by a tagged column in the column family |  Major | Ranger | Anuja Leekha | Abhay Kulkarni |
| [RANGER-2068](https://issues.apache.org/jira/browse/RANGER-2068) | Fix ranger.plugin.hbase.policy.rest.ssl.config.file parameter error. |  Major | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-2090](https://issues.apache.org/jira/browse/RANGER-2090) | Empty start and end time Strings should be interpreted same as NULL in Ranger |  Major | Ranger | Anuja Leekha | Abhay Kulkarni |
| [RANGER-2104](https://issues.apache.org/jira/browse/RANGER-2104) | Ranger tagsync should ignore ENTITY\_UPDATE events if the updated entity does not have associated traits |  Major | tagsync | Abhay Kulkarni | Abhay Kulkarni |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2171](https://issues.apache.org/jira/browse/RANGER-2171) | Unit Test cases to cover policy operations from service admin user |  Major | Ranger | Pradeep Agrawal | Nikhil Purbhe |


