
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

## Release 2.2.0 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2929](https://issues.apache.org/jira/browse/RANGER-2929) | Update Atlas Ranger Authorizer for "type-read" accessType changes done in ATLAS-3898 |  Major | plugins | Nixon Rodrigues | Nixon Rodrigues |
| [RANGER-2845](https://issues.apache.org/jira/browse/RANGER-2845) | Cleanup ozone service configurations |  Minor | plugins | Abhishek Shukla | Sailaja Polavarapu |
| [RANGER-2992](https://issues.apache.org/jira/browse/RANGER-2992) | Ranger policy engine should support super-user as a permission |  Major | plugins | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2937](https://issues.apache.org/jira/browse/RANGER-2937) | Refresh Ranger's Solr configs |  Major | Ranger | Dhaval B. SHAH | Dhaval B. SHAH |
| [RANGER-2983](https://issues.apache.org/jira/browse/RANGER-2983) | Add hbase users with Decrypteek permission in default policy for kms |  Major | Ranger | Dhaval B. SHAH | Dhaval B. SHAH |
| [RANGER-2988](https://issues.apache.org/jira/browse/RANGER-2988) | Role Name Search filter is not available on policy listing page |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2998](https://issues.apache.org/jira/browse/RANGER-2998) | API for Ranger KMS service status |  Major | Ranger | Dhaval B. SHAH | Dhaval B. SHAH |
| [RANGER-3012](https://issues.apache.org/jira/browse/RANGER-3012) | Dockerfile to support building from local repository |  Major | Ranger | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-3018](https://issues.apache.org/jira/browse/RANGER-3018) | [Ozone Ranger Plugin] Include and Recursive buttons are overlapped in Ranger Admin UI |  Minor | admin | Abhishek Shukla | Nitin Galave |
| [RANGER-3060](https://issues.apache.org/jira/browse/RANGER-3060) | Maven build failing due to PMD violations |  Major | Ranger | Kishor Gollapalliwar | Kishor Gollapalliwar |
| [RANGER-3056](https://issues.apache.org/jira/browse/RANGER-3056) | Show Audit ID in Audit-\>Access tab |  Major | Ranger | Kishor Gollapalliwar | Kishor Gollapalliwar |
| [RANGER-3057](https://issues.apache.org/jira/browse/RANGER-3057) | Support Audit search based on Audit ID |  Major | Ranger | Kishor Gollapalliwar | Kishor Gollapalliwar |
| [RANGER-3067](https://issues.apache.org/jira/browse/RANGER-3067) | Schema changes to improve performance of chained plugin feature |  Major | Ranger | Mahesh Hanumant Bandal | Mahesh Hanumant Bandal |
| [RANGER-3074](https://issues.apache.org/jira/browse/RANGER-3074) | Fix build issues |  Major | Ranger | Kishor Gollapalliwar | Kishor Gollapalliwar |
| [RANGER-3065](https://issues.apache.org/jira/browse/RANGER-3065) | RangerServiceResource model object needs to be enhanced to store/track any additional information about the resource |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2985](https://issues.apache.org/jira/browse/RANGER-2985) | User with all permission in ranger is not able to update volume |  Major | Ranger | Abhishek Shukla | Sailaja Polavarapu |
| [RANGER-2848](https://issues.apache.org/jira/browse/RANGER-2848) | Update Ozone service definition resource type volume |  Major | plugins | Abhishek Shukla | Sailaja Polavarapu |
| [RANGER-2987](https://issues.apache.org/jira/browse/RANGER-2987) | Remove unused ratis jars in ranger admin packaging for ozone plugin |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2997](https://issues.apache.org/jira/browse/RANGER-2997) | Ranger usersync role assignment issues |  Major | Ranger | Csaba Koncz | Sailaja Polavarapu |
| [RANGER-3003](https://issues.apache.org/jira/browse/RANGER-3003) | RangerAtlas Service doesn't auto complete Business metadata type on policy UI |  Major | plugins | Nixon Rodrigues | Nixon Rodrigues |
| [RANGER-3007](https://issues.apache.org/jira/browse/RANGER-3007) | Ozone & Ranger Upgrade: Not able to access volume after Upgrade |  Major | Ranger | Nilotpal Nandi | Sailaja Polavarapu |
| [RANGER-3008](https://issues.apache.org/jira/browse/RANGER-3008) | Internal API for controlling Trie behavior |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-3021](https://issues.apache.org/jira/browse/RANGER-3021) | RangerRole Version update is not in correct format in an upgraded cluster |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-3020](https://issues.apache.org/jira/browse/RANGER-3020) | Normalize naming and processing of config parameters for chained plugin |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-3034](https://issues.apache.org/jira/browse/RANGER-3034) | Remove cached policies in plugin if the service is deleted in Ranger admin |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-3038](https://issues.apache.org/jira/browse/RANGER-3038) | Group memberships not getting updated to ranger. |  Major | Ranger | Harshal Chavan | Sailaja Polavarapu |
| [RANGER-3061](https://issues.apache.org/jira/browse/RANGER-3061) | Default configuration error when enable ssl for ranger admin |  Minor | Ranger | gaozhan ding | gaozhan ding |
| [RANGER-3068](https://issues.apache.org/jira/browse/RANGER-3068) | Ranger Usersync is not handling error during initialization process |  Major | Ranger, usersync | Sailaja Polavarapu | Sailaja Polavarapu |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2982](https://issues.apache.org/jira/browse/RANGER-2982) | Update version in ranger-2.2 to 2.2.0-SNAPSHOT |  Major | Ranger | Madhan Neethiraj | Madhan Neethiraj |


