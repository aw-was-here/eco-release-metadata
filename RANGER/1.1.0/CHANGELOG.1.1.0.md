
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

## Release 1.1.0 - 2018-07-09



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-1672](https://issues.apache.org/jira/browse/RANGER-1672) | Ranger supports plugin to enable, monitor and manage apache kylin |  Major | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1994](https://issues.apache.org/jira/browse/RANGER-1994) | Tomcat Security Vulnerability Alert. The version of the tomcat for ranger should upgrade to 7.0.85. |  Major | Ranger | Qiang Zhang | Qiang Zhang |
| [RANGER-1808](https://issues.apache.org/jira/browse/RANGER-1808) | Write unit test for RANGER-1672 |  Major | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-2033](https://issues.apache.org/jira/browse/RANGER-2033) | Add hbase policy and click the 'Test Connection' button. Connection Failed. |  Major | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-1809](https://issues.apache.org/jira/browse/RANGER-1809) | Write install guide for RANGER-1672 |  Major | plugins | Qiang Zhang | Qiang Zhang |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2000](https://issues.apache.org/jira/browse/RANGER-2000) | Policy effective dates to support time-bound and temporary authorization |  Major | Ranger | Srikanth Venkat | Abhay Kulkarni |
| [RANGER-1985](https://issues.apache.org/jira/browse/RANGER-1985) | Auditing for Ranger Usersync operations |  Major | Ranger, usersync | Sailaja Polavarapu | Nitin Galave |
| [RANGER-2002](https://issues.apache.org/jira/browse/RANGER-2002) | Ranger support for time based classifications and business terms from Apache Atlas |  Major | Ranger | Srikanth Venkat | Abhay Kulkarni |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2001](https://issues.apache.org/jira/browse/RANGER-2001) | Similar to RANGER-1469, we should check whether the user or group has existed before the installer create a new user or group when user install usersync |  Major | usersync | Qiang Zhang | Qiang Zhang |
| [RANGER-1999](https://issues.apache.org/jira/browse/RANGER-1999) | Policy evaluation to support multiple values for accessed resource |  Major | plugins | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2004](https://issues.apache.org/jira/browse/RANGER-2004) | Update Ranger Atlas Authorizer for the authorization model changes in Atlas |  Major | plugins | Madhan Neethiraj | Nixon Rodrigues |
| [RANGER-2005](https://issues.apache.org/jira/browse/RANGER-2005) | Remove invalid packages and import commands package to installer to fixed RANGER-1469 defect. |  Critical | usersync | Qiang Zhang | Qiang Zhang |
| [RANGER-2012](https://issues.apache.org/jira/browse/RANGER-2012) | Update Apache parent pom version |  Trivial | build-infra | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-2010](https://issues.apache.org/jira/browse/RANGER-2010) | Ranger Tagsync should use cookie based authentication for subsequent requests to Ranger admin |  Major | Ranger, tagsync | Sean Roberts | Nikhil Purbhe |
| [RANGER-2022](https://issues.apache.org/jira/browse/RANGER-2022) | Atlas plugin install.properties is missing component location |  Minor | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-2019](https://issues.apache.org/jira/browse/RANGER-2019) | Handle upgrade scenario to rename the old ATLAS service def and use the new service def |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2018](https://issues.apache.org/jira/browse/RANGER-2018) | Upgrade to Spring 4 |  Minor | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2032](https://issues.apache.org/jira/browse/RANGER-2032) | Use consolidated and optimized DB schema script for fresh install of Ranger |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2029](https://issues.apache.org/jira/browse/RANGER-2029) | Ranger Kafka default policy creation improvement. |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2056](https://issues.apache.org/jira/browse/RANGER-2056) | Good coding practices for KMS and unixauth |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2058](https://issues.apache.org/jira/browse/RANGER-2058) | Add SSL enabled Postgres support in Ranger Admin |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2059](https://issues.apache.org/jira/browse/RANGER-2059) | Write unit tests for export/import functionality |  Major | Ranger | bhavik patel | bhavik patel |
| [RANGER-2043](https://issues.apache.org/jira/browse/RANGER-2043) | Ranger KMS KeyProvider and HSM KeyProvider should have more debug logs |  Major | Ranger | Pradeep Agrawal | bhavik patel |
| [RANGER-2064](https://issues.apache.org/jira/browse/RANGER-2064) | Ranger Usersync should use cookie based authentication for subsequent requests to Ranger admin |  Major | Ranger, usersync | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2072](https://issues.apache.org/jira/browse/RANGER-2072) | Update HBase to 1.3.2 |  Major | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-1889](https://issues.apache.org/jira/browse/RANGER-1889) | List Users belonging to Group in Group tab |  Major | admin | Hari Sekhon | Nitin Galave |
| [RANGER-2115](https://issues.apache.org/jira/browse/RANGER-2115) | Atlas service def creation failing during Ranger installation |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2095](https://issues.apache.org/jira/browse/RANGER-2095) | Add unit tests for new read only admin-auditor/kms-auditor roles functionality |  Critical | Ranger | bhavik patel | bhavik patel |
| [RANGER-2143](https://issues.apache.org/jira/browse/RANGER-2143) | Update Ranger authorizer for Atlas for new method added in authorization interface (ATLAS-2765) |  Major | plugins | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2132](https://issues.apache.org/jira/browse/RANGER-2132) | Add unit tests for org.apache.ranger.common package |  Critical | Ranger | bhavik patel | bhavik patel |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-1996](https://issues.apache.org/jira/browse/RANGER-1996) | Change Atlas version from 0.8.2 to 1.0.0-SNAPSHOT |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-1997](https://issues.apache.org/jira/browse/RANGER-1997) | Update tagsync to handle Atlas notifications of type V1 and V2 |  Major | tagsync | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2009](https://issues.apache.org/jira/browse/RANGER-2009) | Improve delegate-admin processing for Ranger policies |  Major | Ranger | Nikhil Purbhe | Abhay Kulkarni |
| [RANGER-1496](https://issues.apache.org/jira/browse/RANGER-1496) | Excel/csv exported file should have complete details of the policy |  Minor | admin | Mehul Parikh | Fatima Amjad Khan |
| [RANGER-1948](https://issues.apache.org/jira/browse/RANGER-1948) | Support for Read-only Ranger Admin users |  Major | Ranger | Fatima Amjad Khan | Fatima Amjad Khan |
| [RANGER-2013](https://issues.apache.org/jira/browse/RANGER-2013) | Restrict updation of user source |  Major | Ranger | Fatima Amjad Khan | Fatima Amjad Khan |
| [RANGER-2020](https://issues.apache.org/jira/browse/RANGER-2020) | Mandatory values are not filled then also able to create atlas policy |  Major | admin | Deepak Sharma | Nixon Rodrigues |
| [RANGER-2015](https://issues.apache.org/jira/browse/RANGER-2015) | In view policy we are able to see 'Deny Policy' & 'Except Conditions' even if 'enableDenyAndExceptionsInPolicies : false' |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2027](https://issues.apache.org/jira/browse/RANGER-2027) | Evaluate grantor's group membership in the plugin for grant/revoke request |  Major | plugins, Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2026](https://issues.apache.org/jira/browse/RANGER-2026) | Update Hbase plugin to handle default namespace |  Major | plugins | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2025](https://issues.apache.org/jira/browse/RANGER-2025) | tagsync updates to handle hbase namespace entity notification |  Major | tagsync | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2024](https://issues.apache.org/jira/browse/RANGER-2024) | tagsync updates to handle name-services in federated hdfs |  Major | tagsync | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2031](https://issues.apache.org/jira/browse/RANGER-2031) | Good coding practice in Ranger recommended by static code analysis |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2028](https://issues.apache.org/jira/browse/RANGER-2028) | Fix release build scripts to conform to latest Apache release guidelines |  Major | Ranger | Colm O hEigeartaigh | Velmurugan Periasamy |
| [RANGER-2023](https://issues.apache.org/jira/browse/RANGER-2023) | Hive test connection / lookup failed in kerberos cluster. |  Major | Ranger | Deepak Sharma | Ramesh Mani |
| [RANGER-2037](https://issues.apache.org/jira/browse/RANGER-2037) | Avoid creation of spurious audit record in HDFS 2.8.0 onwards |  Major | plugins | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2016](https://issues.apache.org/jira/browse/RANGER-2016) | Fix null passed in as a HttpServletRequest - into the deletePoliciesProvidedInServiceMap method. |  Major | Ranger | Velmurugan Periasamy | Zsombor Gegesy |
| [RANGER-2035](https://issues.apache.org/jira/browse/RANGER-2035) | Errors accessing servicedefs with empty implClass with Oracle backend |  Major | admin | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-2042](https://issues.apache.org/jira/browse/RANGER-2042) | Fix error variable and remove invalid import package in upgrade\_admin.py file of the security admin. |  Major | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-2044](https://issues.apache.org/jira/browse/RANGER-2044) | Fix execute sql failure in db\_setup.py file of the admin. |  Major | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-2051](https://issues.apache.org/jira/browse/RANGER-2051) | Unable to delete services on Ranger Admin UI |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2054](https://issues.apache.org/jira/browse/RANGER-2054) | Fix new findBugs in RangerAdminClientImpl.java for kylin plugin test |  Minor | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-2036](https://issues.apache.org/jira/browse/RANGER-2036) | Allow Auditor and KMS Auditor role user to Export of Excel and CSV |  Major | Ranger | Fatima Amjad Khan | Fatima Amjad Khan |
| [RANGER-2040](https://issues.apache.org/jira/browse/RANGER-2040) | Improvement in Analytics Metric of Ranger Admin and Ranger Kms for Users/groups metric collection for Auditor Role. |  Major | Ranger | Fatima Amjad Khan | Fatima Amjad Khan |
| [RANGER-2039](https://issues.apache.org/jira/browse/RANGER-2039) | Allow access to Audit tab for all users of role Keyadmin and KMS Auditor |  Major | Ranger | Fatima Amjad Khan | Fatima Amjad Khan |
| [RANGER-2055](https://issues.apache.org/jira/browse/RANGER-2055) | STARTTLS support for ranger admin authentication |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2061](https://issues.apache.org/jira/browse/RANGER-2061) | Add policy engine support to get summary user and group ACLs  for a resource |  Major | Ranger | suja s | Abhay Kulkarni |
| [RANGER-2063](https://issues.apache.org/jira/browse/RANGER-2063) | Audit log shows multiple table names when only one table is accessed |  Major | plugins | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2057](https://issues.apache.org/jira/browse/RANGER-2057) | ranger-ugsync-default file not found and Log message |  Major | Ranger | suja s | Pradeep Agrawal |
| [RANGER-2060](https://issues.apache.org/jira/browse/RANGER-2060) | Knox proxy with knox-sso is not working for ranger |  Major | Ranger | Deepak Sharma | Vishal Suvagia |
| [RANGER-2062](https://issues.apache.org/jira/browse/RANGER-2062) | Update jQuery version |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2066](https://issues.apache.org/jira/browse/RANGER-2066) | Hbase column family access is authorized by a tagged column in the column family |  Major | Ranger | Anuja Leekha | Abhay Kulkarni |
| [RANGER-2068](https://issues.apache.org/jira/browse/RANGER-2068) | Fix ranger.plugin.hbase.policy.rest.ssl.config.file parameter error. |  Major | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-2071](https://issues.apache.org/jira/browse/RANGER-2071) | Correct log file permissions for Tagsync and usersync |  Major | tagsync, usersync | suja s | Mehul Parikh |
| [RANGER-2021](https://issues.apache.org/jira/browse/RANGER-2021) | Ranger "Login Sessions" Audits impossible to browse due to 'rangerusersync' |  Major | usersync | Sean Roberts | Nikhil Purbhe |
| [RANGER-2069](https://issues.apache.org/jira/browse/RANGER-2069) | group id below than 500 is not getting syncd |  Critical | Ranger | Deepak Sharma | Sailaja Polavarapu |
| [RANGER-2073](https://issues.apache.org/jira/browse/RANGER-2073) | Good coding practices for usersync, tagsync, ldap tool configuration. |  Major | Ranger, tagsync, usersync | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2070](https://issues.apache.org/jira/browse/RANGER-2070) | Ranger Storm service creation fails |  Major | Ranger | Fatima Amjad Khan | Fatima Amjad Khan |
| [RANGER-2075](https://issues.apache.org/jira/browse/RANGER-2075) | Handle restart of Ranger Admin service from ranger-admin-services.sh |  Major | Ranger | Mehul Parikh | Mehul Parikh |
| [RANGER-2074](https://issues.apache.org/jira/browse/RANGER-2074) | Update netty version in ranger kms package |  Major | kms, Ranger | Velmurugan Periasamy | Sailaja Polavarapu |
| [RANGER-1989](https://issues.apache.org/jira/browse/RANGER-1989) | Ranger Admin may fail to start after enabling SSLHadoop GroupMapping |  Major | admin | Hajime Osako | Sailaja Polavarapu |
| [RANGER-2086](https://issues.apache.org/jira/browse/RANGER-2086) | Resource data mask policy overrides when both tag and resource datamask policies match |  Major | Ranger | suja s | Abhay Kulkarni |
| [RANGER-2084](https://issues.apache.org/jira/browse/RANGER-2084) | Support for service-specific audit configuration in Ranger plugin |  Major | audit, plugins | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2087](https://issues.apache.org/jira/browse/RANGER-2087) | Use qualifiedName first to figure out HDFS path, clusterName and Ranger service-name from Atlas Hdfs entity |  Major | tagsync | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2080](https://issues.apache.org/jira/browse/RANGER-2080) | Add json-smart explicitly to security-admin/pom.xml |  Major | Ranger | Saravanan Krishnamoorthy | Velmurugan Periasamy |
| [RANGER-2089](https://issues.apache.org/jira/browse/RANGER-2089) | Update scala library version for tagsync to be the same as in Atlas |  Major | tagsync | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2090](https://issues.apache.org/jira/browse/RANGER-2090) | Empty start and end time Strings should be interpreted same as NULL in Ranger |  Major | Ranger | Anuja Leekha | Abhay Kulkarni |
| [RANGER-2041](https://issues.apache.org/jira/browse/RANGER-2041) | Handle validations for passwords of admin accounts during ranger install. |  Major | Ranger | Fatima Amjad Khan | Fatima Amjad Khan |
| [RANGER-1852](https://issues.apache.org/jira/browse/RANGER-1852) | some groups missed to be sync if they are syncd from openldap If deltasync is enabled |  Major | Ranger | Deepak Sharma | Sailaja Polavarapu |
| [RANGER-2092](https://issues.apache.org/jira/browse/RANGER-2092) | Getting count in "Modified user" and "Modified group" when we add new user |  Major | Ranger, usersync | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2094](https://issues.apache.org/jira/browse/RANGER-2094) | Handle Export Policy feature for different browsers |  Major | admin | suja s | Mehul Parikh |
| [RANGER-2091](https://issues.apache.org/jira/browse/RANGER-2091) | Good coding practice for ranger response codes. |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2083](https://issues.apache.org/jira/browse/RANGER-2083) | Restrict KMS audit events to KMS related users only |  Major | Ranger | Deepak Sharma | Fatima Amjad Khan |
| [RANGER-2098](https://issues.apache.org/jira/browse/RANGER-2098) | improvement in ranger policy timezones and keeping validation at both ranger server and UI end consistent. |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2096](https://issues.apache.org/jira/browse/RANGER-2096) | Remove dead code from AbstractBaseResourceService and RangerBizUtil |  Major | admin | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-2101](https://issues.apache.org/jira/browse/RANGER-2101) | Testcases Improvement to follow best practices |  Major | admin | Mehul Parikh | Mehul Parikh |
| [RANGER-2076](https://issues.apache.org/jira/browse/RANGER-2076) | Handle proxy users for Kerberos based authentication. |  Major | Ranger | Vishal Suvagia | Nikhil Purbhe |
| [RANGER-2079](https://issues.apache.org/jira/browse/RANGER-2079) | RANGER Admin UI login through knox proxy fails with 404 |  Critical | admin | J.Andreina | Nikhil Purbhe |
| [RANGER-2085](https://issues.apache.org/jira/browse/RANGER-2085) | Add resource lookup for entity-id in Atlas service |  Major | admin | Nixon Rodrigues | Nixon Rodrigues |
| [RANGER-2065](https://issues.apache.org/jira/browse/RANGER-2065) | Entity is readable even if there is no entity-read-classification permission. |  Major | plugins | Nixon Rodrigues | Nixon Rodrigues |
| [RANGER-2104](https://issues.apache.org/jira/browse/RANGER-2104) | Ranger tagsync should ignore ENTITY\_UPDATE events if the updated entity does not have associated traits |  Major | tagsync | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2103](https://issues.apache.org/jira/browse/RANGER-2103) | User is not able to see revoke audits for HBASE. |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2106](https://issues.apache.org/jira/browse/RANGER-2106) | Keyadmin is not able to see 'Audit tab' and 'User tab' by default. |  Major | Ranger | Fatima Amjad Khan | Fatima Amjad Khan |
| [RANGER-2107](https://issues.apache.org/jira/browse/RANGER-2107) | Use Spring to inject DAOs |  Major | admin | Zsombor Gegesy | Zsombor Gegesy |
| [RANGER-2102](https://issues.apache.org/jira/browse/RANGER-2102) | Popup, Date picker and Dropdown list of select field remains open on-click of a back button from browser |  Minor | Ranger | Dhaval Rajpara | Dhaval Rajpara |
| [RANGER-2108](https://issues.apache.org/jira/browse/RANGER-2108) | Ensure that resource names in service definition contain only lowercase, hyphens or underscore characters |  Major | admin | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2116](https://issues.apache.org/jira/browse/RANGER-2116) | Ranger UI: Fix policy condition field usability issue when multi-line attribute is set to true in policy screen |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2118](https://issues.apache.org/jira/browse/RANGER-2118) | Update libpam4j version in ranger package |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2110](https://issues.apache.org/jira/browse/RANGER-2110) | 'copy hive query to clipboard' button in audits tab is not working |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2113](https://issues.apache.org/jira/browse/RANGER-2113) | Improve error handling when of change password process gets killed. |  Major | Ranger | Fatima Amjad Khan | Fatima Amjad Khan |
| [RANGER-2119](https://issues.apache.org/jira/browse/RANGER-2119) | Ranger UI: resource field issue when we set lookupSupported attribute to false in ranger-service-def. |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2117](https://issues.apache.org/jira/browse/RANGER-2117) | RangerKafkaAuthorizer to support new resources and operations which are in Apache Kafka 1.0.0 |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2122](https://issues.apache.org/jira/browse/RANGER-2122) | Improvement in ranger yarn and hdfs plugin for additional default policy creation feature during service creation |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2124](https://issues.apache.org/jira/browse/RANGER-2124) | Incorrect value in usersync audit logs for total number of groups synced |  Major | Ranger, usersync | suja s | Sailaja Polavarapu |
| [RANGER-2133](https://issues.apache.org/jira/browse/RANGER-2133) | Good coding practices for REST classes and unit tests |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2131](https://issues.apache.org/jira/browse/RANGER-2131) | Ranger UserSync port (ie 5151) supports TLSv1.0 |  Major | usersync | t oo | Nikhil Purbhe |
| [RANGER-2137](https://issues.apache.org/jira/browse/RANGER-2137) | Service Creation Failure, if user is not present in ranger database |  Major | Ranger | bhavik patel | bhavik patel |
| [RANGER-2134](https://issues.apache.org/jira/browse/RANGER-2134) | Ranger Storm Plugin fails to download policies with Storm autocreds in classpath |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2145](https://issues.apache.org/jira/browse/RANGER-2145) | Update service-def for Atlas to remove access-type entity-read-classification |  Major | plugins | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2146](https://issues.apache.org/jira/browse/RANGER-2146) | Tag attribute type needs to be initialized to a non-empty string |  Major | tagsync | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2141](https://issues.apache.org/jira/browse/RANGER-2141) | Add PatchForKafkaServiceDefUpdate\_J10015.java in consolidated DB schema |  Major | Ranger | Mehul Parikh | bhavik patel |
| [RANGER-2100](https://issues.apache.org/jira/browse/RANGER-2100) | REST API to get count of total services, policies, users, groups and various mapping |  Major | Ranger | Pradeep Agrawal | Fatima Amjad Khan |
| [RANGER-2123](https://issues.apache.org/jira/browse/RANGER-2123) | Different error msg on backend/frontend login validation |  Trivial | admin | Daniel Voros |  |
| [RANGER-2138](https://issues.apache.org/jira/browse/RANGER-2138) | Add unit tests for org.apache.ranger.service package |  Major | Ranger | Fatima Amjad Khan | Fatima Amjad Khan |
| [RANGER-2121](https://issues.apache.org/jira/browse/RANGER-2121) | Ranger build using Docker is broken |  Major | build-infra | Don Bosco Durai | Don Bosco Durai |
| [RANGER-2017](https://issues.apache.org/jira/browse/RANGER-2017) | Ranger KMS encryption good practices |  Critical | Ranger | Selvamohan Neethiraj | bhavik patel |
| [RANGER-2197](https://issues.apache.org/jira/browse/RANGER-2197) | Delegate Admin is not able to create policy |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2125](https://issues.apache.org/jira/browse/RANGER-2125) | Improvement in ranger unit test cases. |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2030](https://issues.apache.org/jira/browse/RANGER-2030) | Admin UI updates to support policy effective dates |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2126](https://issues.apache.org/jira/browse/RANGER-2126) | Improve ranger coverage of unit tests for REST layer. |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2067](https://issues.apache.org/jira/browse/RANGER-2067) | Supply the function of  viewing policy history version. |  Minor | admin | Qiang Zhang | Qiang Zhang |
| [RANGER-2136](https://issues.apache.org/jira/browse/RANGER-2136) | Upgrade to the released version of Atlas 1.0.0 |  Minor | plugins | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [RANGER-2099](https://issues.apache.org/jira/browse/RANGER-2099) | TagSync update for Atlas notification changes in ATLAS-2656 |  Major | tagsync | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2147](https://issues.apache.org/jira/browse/RANGER-2147) | Release Ranger 1.1.0 |  Major | Ranger | Velmurugan Periasamy | Velmurugan Periasamy |


