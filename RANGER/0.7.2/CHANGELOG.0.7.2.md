
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

## Release 0.7.2 - Unreleased (as of 2018-08-14)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-1788](https://issues.apache.org/jira/browse/RANGER-1788) | Install Ranger admin failure. |  Critical | admin | peng.jianhua | peng.jianhua |
| [RANGER-1810](https://issues.apache.org/jira/browse/RANGER-1810) | Ranger supports plugin to enable, monitor and manage apache Sqoop2 |  Major | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1932](https://issues.apache.org/jira/browse/RANGER-1932) | After create the service of yarndev,the policy named 'all-queue' created for the default user should have all the permissions.However, this policy does't take effect. |  Major | plugins | Qiang Zhang | Qiang Zhang |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-1735](https://issues.apache.org/jira/browse/RANGER-1735) | Support representing nested group memberships in Ranger Admin |  Major | Ranger, usersync | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-1647](https://issues.apache.org/jira/browse/RANGER-1647) | Allow Ranger policy conditions to use tag attributes and values in Ranger |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-1697](https://issues.apache.org/jira/browse/RANGER-1697) | Update NiFi service def |  Minor | plugins | Matt Gilman | Nikhil Purbhe |
| [RANGER-1938](https://issues.apache.org/jira/browse/RANGER-1938) | Solr for Audit setup doesn't use DocValues effectively |  Major | audit | Kevin Risden | Kevin Risden |
| [RANGER-1953](https://issues.apache.org/jira/browse/RANGER-1953) | improvement on user-group page listing |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-1805](https://issues.apache.org/jira/browse/RANGER-1805) | Code improvement to follow best practices in js |  Minor | Ranger | Nitin Galave | Nitin Galave |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-1631](https://issues.apache.org/jira/browse/RANGER-1631) | create temp function failing with permission issues |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-1665](https://issues.apache.org/jira/browse/RANGER-1665) | Ranger needs to provide a way to get list of policies associated with given resource |  Major | admin | Srikanth Venkat | Abhay Kulkarni |
| [RANGER-1666](https://issues.apache.org/jira/browse/RANGER-1666) | Ranger UI should consider "recursiveSupported" attribute value at each resource level to Store the Policy |  Critical | Ranger | Ramesh Mani | Nitin Galave |
| [RANGER-1689](https://issues.apache.org/jira/browse/RANGER-1689) | Add support for defining recursive policies for WASB service def |  Major | Ranger | Ramesh Mani |  |
| [RANGER-1638](https://issues.apache.org/jira/browse/RANGER-1638) | Improve the password validation from Ranger API |  Major | admin | Mehul Parikh | Ankita Sinha |
| [RANGER-1696](https://issues.apache.org/jira/browse/RANGER-1696) | Request to get all policies for hive or hbase service-type does not include policies that apply to specific child resource(such as table in hive/column family in hbase) |  Major | Ranger | Deepak Sharma | Abhay Kulkarni |
| [RANGER-1695](https://issues.apache.org/jira/browse/RANGER-1695) | Optimize Ranger code for authorization of HDFS 'getContentSummary' and 'delete' commands |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-1714](https://issues.apache.org/jira/browse/RANGER-1714) | Disable dynamic sorting of policies when trie pre-filter is enabled |  Major | plugins | Madhan Neethiraj |  |
| [RANGER-1708](https://issues.apache.org/jira/browse/RANGER-1708) | Remove tag services from service type and service name filters under Access Audit. |  Major | Ranger | suja s | Nitin Galave |
| [RANGER-1674](https://issues.apache.org/jira/browse/RANGER-1674) | IMPORT START audit is not appearing on audit page |  Major | Ranger | Deepak Sharma | bhavik patel |
| [RANGER-1661](https://issues.apache.org/jira/browse/RANGER-1661) | Default policy for KMS audits is pointing to incorrect location |  Major | Ranger | Ali Bajwa |  |
| [RANGER-1676](https://issues.apache.org/jira/browse/RANGER-1676) | Policy Details popup from Access audit page not displaying details of masking policy |  Major | Ranger | suja s | Nitin Galave |
| [RANGER-1724](https://issues.apache.org/jira/browse/RANGER-1724) | On Report listing page for masking/row filter policies show only mask/row filter conditions |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-1632](https://issues.apache.org/jira/browse/RANGER-1632) | Users are not sync'd when sAMAccountName is different than CN associated with groups |  Major | Ranger, usersync | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-1747](https://issues.apache.org/jira/browse/RANGER-1747) | Usersync: LDAP Paged results seems to be ignored in Ranger |  Major | Ranger, usersync | Endre Kovacs | Sailaja Polavarapu |
| [RANGER-1726](https://issues.apache.org/jira/browse/RANGER-1726) | Users are not getting deleted when Knox proxy is Enabled. |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-1754](https://issues.apache.org/jira/browse/RANGER-1754) | group deletion message is wrong , it give User deleted successfully instead of group |  Major | admin | Deepak Sharma | Deepak Sharma |
| [RANGER-1750](https://issues.apache.org/jira/browse/RANGER-1750) | In Nifi default policy is getting created with policyitem without any user/group but permission set for the same. |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-1732](https://issues.apache.org/jira/browse/RANGER-1732) | Collection added to itself |  Trivial | audit | JC | peng.jianhua |
| [RANGER-1651](https://issues.apache.org/jira/browse/RANGER-1651) | Improve Ranger and Ranger KMS REST Api documentation |  Major | admin | Mehul Parikh | Mehul Parikh |
| [RANGER-1682](https://issues.apache.org/jira/browse/RANGER-1682) | Clicking on export service after session timeout gets stuck indefinitely |  Major | Ranger | Aditya Sirna | Nitin Galave |
| [RANGER-1786](https://issues.apache.org/jira/browse/RANGER-1786) | Need warning on external user role change. |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-1787](https://issues.apache.org/jira/browse/RANGER-1787) | User has to fill up all the allow and deny conditions items to create a knox policy. |  Minor | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-1800](https://issues.apache.org/jira/browse/RANGER-1800) | Usersync fails to update users and groups during incremental sync with nested groups and group first search enabled |  Major | Ranger, usersync | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-1801](https://issues.apache.org/jira/browse/RANGER-1801) | group user mapping updates to ranger admin fail when the mapping is already existed in ranger DB. |  Major | admin, Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-1748](https://issues.apache.org/jira/browse/RANGER-1748) | User is unable to update existing policy while importing policy from file |  Major | Ranger | bhavik patel | bhavik patel |
| [RANGER-1727](https://issues.apache.org/jira/browse/RANGER-1727) | Ranger allows user to change an external user's password with 'null' old password |  Major | Ranger | Pradeep Agrawal | Fatima Amjad Khan |
| [RANGER-1779](https://issues.apache.org/jira/browse/RANGER-1779) | last resource gets duplicated during update policy if policy is created through public api rest call |  Major | admin | Deepak Sharma | Nikhil Purbhe |
| [RANGER-1756](https://issues.apache.org/jira/browse/RANGER-1756) | Handle role related restrictions for users having User role |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-1765](https://issues.apache.org/jira/browse/RANGER-1765) | Add unique key constraint in x\_group and x\_group\_users table |  Critical | Ranger | bhavik patel | bhavik patel |
| [RANGER-1818](https://issues.apache.org/jira/browse/RANGER-1818) | Good coding practice in Ranger recommended by static code analysis |  Major | Ranger | Fatima Amjad Khan | Fatima Amjad Khan |
| [RANGER-1819](https://issues.apache.org/jira/browse/RANGER-1819) | Not able to delete group that is having special character(ampersand) from ranger admin |  Major | Ranger | Deepak Sharma | Nitin Galave |
| [RANGER-1717](https://issues.apache.org/jira/browse/RANGER-1717) | User with "KEYADMIN" role is not able to see "Audit =\> Admin" logs. |  Critical | Ranger | bhavik patel | bhavik patel |
| [RANGER-1826](https://issues.apache.org/jira/browse/RANGER-1826) | Import of bulk policies is causing OOM and Apparent Deadlock |  Major | Ranger | Deepak Sharma | Pradeep Agrawal |
| [RANGER-1176](https://issues.apache.org/jira/browse/RANGER-1176) | Ranger admin does not allow to create / update a policy with only delegate admin permission |  Minor | admin | Vipin Rathor | Nitin Galave |
| [RANGER-1834](https://issues.apache.org/jira/browse/RANGER-1834) | row filter policies are not returned by policy search |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-1832](https://issues.apache.org/jira/browse/RANGER-1832) | Export REST API should return exact matching results if polResource param is provided |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-1838](https://issues.apache.org/jira/browse/RANGER-1838) | Refactor Jisql dependencies |  Major | Ranger | Velmurugan Periasamy | Pradeep Agrawal |
| [RANGER-1795](https://issues.apache.org/jira/browse/RANGER-1795) | Service should not be renamed if tagged service resources exist for it |  Major | admin | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-1820](https://issues.apache.org/jira/browse/RANGER-1820) | Duplicate entries should be deleted before creation of unique index on x\_group and x\_group\_users table |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-1853](https://issues.apache.org/jira/browse/RANGER-1853) | Masking functions based on custom masking of string types fails to unescape quotes properly. |  Major | Ranger | Srikanth Venkat | Nitin Galave |
| [RANGER-1828](https://issues.apache.org/jira/browse/RANGER-1828) | Good coding practice-add additional headers in ranger |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-1868](https://issues.apache.org/jira/browse/RANGER-1868) | Good coding practice in Ranger recommended by static code analysis |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-1897](https://issues.apache.org/jira/browse/RANGER-1897) | TagSync should replace use of V1 Atlas APIs with V2 APIs for efficient tag-download from Atlas |  Major | tagsync | Madhan Neethiraj | Abhay Kulkarni |
| [RANGER-1937](https://issues.apache.org/jira/browse/RANGER-1937) | Ranger tagsync should process ENTITY\_CREATE notification, to support Atlas import feature |  Major | tagsync | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-1943](https://issues.apache.org/jira/browse/RANGER-1943) | Ranger Solr authorization is skipped when collection is empty or null |  Critical | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-1952](https://issues.apache.org/jira/browse/RANGER-1952) | Allow user's email Address to be blank on emailchange API as per RANGER-978 |  Minor | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-1957](https://issues.apache.org/jira/browse/RANGER-1957) | Ranger Usersync is not syncing users or groups periodically when incremental sync is enabled. |  Major | Ranger, usersync | David Villarreal | Sailaja Polavarapu |
| [RANGER-1825](https://issues.apache.org/jira/browse/RANGER-1825) | Ranger Tagsync is giving  NoClassDefFoundError |  Critical | Ranger | suja s | Nikhil Purbhe |
| [RANGER-1956](https://issues.apache.org/jira/browse/RANGER-1956) | Update CredentialBuilder module |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-1960](https://issues.apache.org/jira/browse/RANGER-1960) | HBase auth does not take table namespace into consideration for deleting snapshot |  Major | plugins | Tomas Sokorai |  |
| [RANGER-1966](https://issues.apache.org/jira/browse/RANGER-1966) | Policy engine initialization does not create context enrichers in some cases |  Major | Ranger | Abhay Kulkarni | Nigel Jones |
| [RANGER-1980](https://issues.apache.org/jira/browse/RANGER-1980) | Build failure for Ranger 0.7 branch |  Major | build-infra | Don Bosco Durai | Pradeep Agrawal |
| [RANGER-2035](https://issues.apache.org/jira/browse/RANGER-2035) | Errors accessing servicedefs with empty implClass with Oracle backend |  Major | admin | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-2066](https://issues.apache.org/jira/browse/RANGER-2066) | Hbase column family access is authorized by a tagged column in the column family |  Major | Ranger | Anuja Leekha | Abhay Kulkarni |
| [RANGER-2090](https://issues.apache.org/jira/browse/RANGER-2090) | Empty start and end time Strings should be interpreted same as NULL in Ranger |  Major | Ranger | Anuja Leekha | Abhay Kulkarni |
| [RANGER-2104](https://issues.apache.org/jira/browse/RANGER-2104) | Ranger tagsync should ignore ENTITY\_UPDATE events if the updated entity does not have associated traits |  Major | tagsync | Abhay Kulkarni | Abhay Kulkarni |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-1492](https://issues.apache.org/jira/browse/RANGER-1492) | UI updates to support tag-based masking policies |  Major | admin | Madhan Neethiraj | Nitin Galave |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-1491](https://issues.apache.org/jira/browse/RANGER-1491) | Automatically map group of external users to Administrator Role |  Major | Ranger | Attila Kanto | bhavik patel |


