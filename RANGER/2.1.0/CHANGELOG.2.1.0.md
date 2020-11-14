
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

## Release 2.1.0 - 2020-09-03



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2831](https://issues.apache.org/jira/browse/RANGER-2831) | presto-server-333 start failed due to NoClassDefFoundError |  Blocker | Ranger | Jie Zhang | Pradeep Agrawal |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2393](https://issues.apache.org/jira/browse/RANGER-2393) | Document level authorization for solr |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2497](https://issues.apache.org/jira/browse/RANGER-2497) |  Support Azure Key Vault for storing master keys of Ranger KMS |  Major | Ranger | Bhavik Patel | Dhaval B. SHAH |
| [RANGER-2625](https://issues.apache.org/jira/browse/RANGER-2625) | Plugin capability/compatibility model |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2697](https://issues.apache.org/jira/browse/RANGER-2697) | Retrieve additional user/group attributes from AD/LDAP and rest API to download this information |  Major | Ranger, usersync | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2723](https://issues.apache.org/jira/browse/RANGER-2723) | Support multi-field attribute based document level controls for Solr |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2776](https://issues.apache.org/jira/browse/RANGER-2776) | Unable to access service through knox, facing NPE when authorization is set to Ranger |  Major | Ranger | J.Andreina | Sailaja Polavarapu |
| [RANGER-2748](https://issues.apache.org/jira/browse/RANGER-2748) | Schema Registry Ranger Plugin |  Major | Ranger | Volodymyr Moshkovskyi |  |
| [RANGER-2634](https://issues.apache.org/jira/browse/RANGER-2634) | Add ElasticSearch audit support |  Major | audit | Andrew Charneski |  |
| [RANGER-1784](https://issues.apache.org/jira/browse/RANGER-1784) | Feature Request: Presto Ranger integration |  Critical | admin, audit, plugins, Ranger | Hari Sekhon |  |
| [RANGER-2192](https://issues.apache.org/jira/browse/RANGER-2192) | Implement Presto plugin |  Major | plugins, Ranger | t oo |  |
| [RANGER-2863](https://issues.apache.org/jira/browse/RANGER-2863) | Ranger UI Improvement. |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2862](https://issues.apache.org/jira/browse/RANGER-2862) | Ranger Client Libraries (Java) For REST Services |  Major | Ranger | Abhishek Kumar | Abhishek Kumar |
| [RANGER-2897](https://issues.apache.org/jira/browse/RANGER-2897) | Update jQuery version. |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2900](https://issues.apache.org/jira/browse/RANGER-2900) | Include policy priority in policy details popup on access auidts page |  Major | Ranger | suja s | Nitin Galave |
| [RANGER-2927](https://issues.apache.org/jira/browse/RANGER-2927) | Ranger Client Libraries (Python) For REST Services |  Major | Ranger | Abhishek Kumar | Abhishek Kumar |
| [RANGER-2683](https://issues.apache.org/jira/browse/RANGER-2683) | Kudu Ranger Integration |  Major | plugins | Hao Hao | Hao Hao |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2542](https://issues.apache.org/jira/browse/RANGER-2542) | Similar to RANGER-2515, add .gitignore for project plugin-ozone and ranger-ozone-plugin-shim |  Trivial | plugins | Peng Xing | Peng Xing |
| [RANGER-2535](https://issues.apache.org/jira/browse/RANGER-2535) | Good coding practices for storing and retrieving data history in ranger |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2571](https://issues.apache.org/jira/browse/RANGER-2571) | Need to add Knox proxy configuration support in Ranger plugins |  Major | Ranger | Dhaval B. SHAH | Dhaval B. SHAH |
| [RANGER-2550](https://issues.apache.org/jira/browse/RANGER-2550) | Increase sort\_order field length of all the tables |  Minor | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2528](https://issues.apache.org/jira/browse/RANGER-2528) | Export API to get zone, unzone as well as tag based policies from Ranger. |  Major | Ranger | Sanjar | Sanjar |
| [RANGER-2555](https://issues.apache.org/jira/browse/RANGER-2555) | Enhancements in Ranger plugins to support Ranger HA without load-balancer |  Major | Ranger | Mehul Parikh | Mateen Mansoori |
| [RANGER-2510](https://issues.apache.org/jira/browse/RANGER-2510) | Support for Incremental tag updates to improve performance |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2599](https://issues.apache.org/jira/browse/RANGER-2599) | Add more audit data to HBase grant/revoke events |  Major | audit | Andor Molnar |  |
| [RANGER-2584](https://issues.apache.org/jira/browse/RANGER-2584) | Disable deny and exceptions in policies for NiFi |  Minor | plugins | Matt Gilman | Bryan Bende |
| [RANGER-2607](https://issues.apache.org/jira/browse/RANGER-2607) | Disable deny and exceptions in policies for NiFi Registry |  Minor | plugins | Bryan Bende | Bryan Bende |
| [RANGER-2608](https://issues.apache.org/jira/browse/RANGER-2608) | Create profile for building only security-admin assemby |  Trivial | admin | Bryan Bende | Bryan Bende |
| [RANGER-2591](https://issues.apache.org/jira/browse/RANGER-2591) | Need changes for usersync(unix/ldap) to support HA without load balancer. |  Major | Ranger | Mateen Mansoori | Mateen Mansoori |
| [RANGER-2589](https://issues.apache.org/jira/browse/RANGER-2589) | Introduce Ranger API to return Ranger's JVM resource status metric |  Minor | Ranger | Pradeep Agrawal | Fatima Amjad Khan |
| [RANGER-2594](https://issues.apache.org/jira/browse/RANGER-2594) | Improve policy validation performance during delete |  Major | admin | Andrew Luo |  |
| [RANGER-2595](https://issues.apache.org/jira/browse/RANGER-2595) | Improve policy delete performance using batch delete |  Major | admin | Andrew Luo |  |
| [RANGER-2646](https://issues.apache.org/jira/browse/RANGER-2646) | Refactor: replace references to static configuration instance |  Major | admin, audit, plugins | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2636](https://issues.apache.org/jira/browse/RANGER-2636) | Allow NiFi Client to use default SSLContext |  Major | plugins | Bryan Bende | Bryan Bende |
| [RANGER-2575](https://issues.apache.org/jira/browse/RANGER-2575) | Java 11 Support for Ranger |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2561](https://issues.apache.org/jira/browse/RANGER-2561) | add functionality in ranger to get default policy groups list from service config while creation of service and add that group to policies in that service |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2652](https://issues.apache.org/jira/browse/RANGER-2652) | Refactor policy engine |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2651](https://issues.apache.org/jira/browse/RANGER-2651) | Improve performance of building and querying  RangerResourceTrie |  Major | Ranger | star | star |
| [RANGER-2653](https://issues.apache.org/jira/browse/RANGER-2653) | Refactor product code to move out APIs used only by test code |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2654](https://issues.apache.org/jira/browse/RANGER-2654) | refactor RangerBasePlugins to remove static servicePluginsMap |  Major | plugins | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2590](https://issues.apache.org/jira/browse/RANGER-2590) | add displayName attribute to service-def and service |  Major | admin | Madhan Neethiraj | Kishor Gollapalliwar |
| [RANGER-2632](https://issues.apache.org/jira/browse/RANGER-2632) | Record additional Active Directory attributes in Ranger DB |  Major | Ranger | Kishor Gollapalliwar | Mateen Mansoori |
| [RANGER-2657](https://issues.apache.org/jira/browse/RANGER-2657) | Upgrade Hive version from 3.1 to 3.1.2 |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2666](https://issues.apache.org/jira/browse/RANGER-2666) | Rename matchType and matchScope enumerators to more descriptive names |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2662](https://issues.apache.org/jira/browse/RANGER-2662) | Upgrade Kylin version to 2.6.4 |  Major | plugins | Qiang Zhang | Qiang Zhang |
| [RANGER-2663](https://issues.apache.org/jira/browse/RANGER-2663) | Add elasticsearch-plugin infomation to README.txt |  Minor | documentation | Qiang Zhang | Qiang Zhang |
| [RANGER-2669](https://issues.apache.org/jira/browse/RANGER-2669) | Blacklist for Ranger Audits |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2668](https://issues.apache.org/jira/browse/RANGER-2668) | Remove tag service linking for any service created in Ranger KMS |  Major | Ranger | Dhaval B. SHAH | Dhaval B. SHAH |
| [RANGER-2674](https://issues.apache.org/jira/browse/RANGER-2674) | Allow service admins to manage tag policies |  Major | Ranger | Dhaval B. SHAH | Dhaval B. SHAH |
| [RANGER-2686](https://issues.apache.org/jira/browse/RANGER-2686) | Upgrade Tomcat version to 7.0.99 in Ranger |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-837](https://issues.apache.org/jira/browse/RANGER-837) | Fix Maven Assembly |  Minor | . | Colm O hEigeartaigh | Madhan Neethiraj |
| [RANGER-2695](https://issues.apache.org/jira/browse/RANGER-2695) | Default displayName for ServiceDef |  Major | Ranger | Kishor Gollapalliwar | Kishor Gollapalliwar |
| [RANGER-2701](https://issues.apache.org/jira/browse/RANGER-2701) | Improve Logging mechanism for Ranger KMS |  Major | Ranger | Dhaval B. SHAH | Dhaval B. SHAH |
| [RANGER-2700](https://issues.apache.org/jira/browse/RANGER-2700) | creating service sometimes fails because SecureRandom.getInstanceStrong() is often blocked |  Major | admin | Jiayi Liu |  |
| [RANGER-2627](https://issues.apache.org/jira/browse/RANGER-2627) | Upgrade Apache commons-beanutils to 1.9.4 |  Major | Ranger | László Dénes Terjéki | Pradeep Agrawal |
| [RANGER-2711](https://issues.apache.org/jira/browse/RANGER-2711) | "Service display Name" attribute on all tabs in Ranger |  Major | Ranger | Kishor Gollapalliwar | Kishor Gollapalliwar |
| [RANGER-2712](https://issues.apache.org/jira/browse/RANGER-2712) | Revisit privileges for rangerlookup user in default policies |  Major | Ranger | Dhaval B. SHAH | Dhaval B. SHAH |
| [RANGER-2639](https://issues.apache.org/jira/browse/RANGER-2639) | XUserService has duplicate db query in  when populateViewBean for XXUser |  Minor | admin | zhangxiong | zhangxiong |
| [RANGER-2588](https://issues.apache.org/jira/browse/RANGER-2588) | Integrate Apache maven checkstyle plugin to Ranger |  Minor | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2725](https://issues.apache.org/jira/browse/RANGER-2725) | Improve the Checkstyle integration from RANGER-2588 |  Minor | Ranger | Lars Francke | Lars Francke |
| [RANGER-2699](https://issues.apache.org/jira/browse/RANGER-2699) | JVM metrics for Ranger usersync and Ranger tagsync |  Major | Ranger | Mehul Parikh | Dineshkumar Yadav |
| [RANGER-2721](https://issues.apache.org/jira/browse/RANGER-2721) | README.txt shows incorrect build command |  Trivial | Ranger | Andrew Luo |  |
| [RANGER-2734](https://issues.apache.org/jira/browse/RANGER-2734) | update Ranger authorizer for Atlas to support new operations |  Major | plugins | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2706](https://issues.apache.org/jira/browse/RANGER-2706) | usermapsyncenabled can be removed from code |  Minor | usersync | Lars Francke | Lars Francke |
| [RANGER-2753](https://issues.apache.org/jira/browse/RANGER-2753) | Optimize populating user group mappings from DB. |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2758](https://issues.apache.org/jira/browse/RANGER-2758) | Option to create missing users/groups while creating/updating roles |  Major | Ranger | Dineshkumar Yadav | Dineshkumar Yadav |
| [RANGER-2744](https://issues.apache.org/jira/browse/RANGER-2744) | Add response header in login.jsp page |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2724](https://issues.apache.org/jira/browse/RANGER-2724) | Support EXECUTE permission in HBase Authorisation |  Major | Ranger | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [RANGER-2746](https://issues.apache.org/jira/browse/RANGER-2746) | Handle display name for upgrade scenario |  Major | Ranger | Kishor Gollapalliwar | Kishor Gollapalliwar |
| [RANGER-785](https://issues.apache.org/jira/browse/RANGER-785) | Ranger plugins should support a formal notion of super user |  Major | plugins | Alok Lal | Madhan Neethiraj |
| [RANGER-2779](https://issues.apache.org/jira/browse/RANGER-2779) | update tag-sync to process Atlas notifications for ADLS-Gen2 entities |  Major | tagsync | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2780](https://issues.apache.org/jira/browse/RANGER-2780) | Ranger plugins should support audit-exclude users |  Major | plugins | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2791](https://issues.apache.org/jira/browse/RANGER-2791) | Ignore .iml files from RAT check for schema-registry plugin |  Minor | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2772](https://issues.apache.org/jira/browse/RANGER-2772) | Adding the functionality of merging the policy |  Major | Ranger | Deepak Sharma | Dineshkumar Yadav |
| [RANGER-2768](https://issues.apache.org/jira/browse/RANGER-2768) | Ranger audit UI updates to render action field. |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2754](https://issues.apache.org/jira/browse/RANGER-2754) | Update presto dependency and implement row/column level security |  Major | plugins | Bolke de Bruin | Bolke de Bruin |
| [RANGER-2770](https://issues.apache.org/jira/browse/RANGER-2770) | Upgrade jackson-databind to version 2.10.0 [CVE-2020-8840] - (Ranger) |  Major | Ranger | Dineshkumar Yadav | Dineshkumar Yadav |
| [RANGER-2811](https://issues.apache.org/jira/browse/RANGER-2811) | Ranger should keep trying to create collection in solr until its successfully created |  Major | Ranger | Dhaval B. SHAH | Dhaval B. SHAH |
| [RANGER-2796](https://issues.apache.org/jira/browse/RANGER-2796) | Ranger Reports page to show user + groups policies for user based search |  Major | Ranger | Dineshkumar Yadav | Dineshkumar Yadav |
| [RANGER-2766](https://issues.apache.org/jira/browse/RANGER-2766) | enable implementations of RangerAccessResourceImpl to provide custom stringified value |  Minor | plugins | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2825](https://issues.apache.org/jira/browse/RANGER-2825) | Fix PMD issues |  Major | Ranger | Bhavik Patel | Bhavik Patel |
| [RANGER-2808](https://issues.apache.org/jira/browse/RANGER-2808) | Service Name must not allow spaces in newly created services |  Major | Ranger | Kishor Gollapalliwar | Kishor Gollapalliwar |
| [RANGER-2783](https://issues.apache.org/jira/browse/RANGER-2783) | Add schema registry service def to be registered by default on start of Ranger |  Major | Ranger | Mehul Parikh | Mehul Parikh |
| [RANGER-2826](https://issues.apache.org/jira/browse/RANGER-2826) | Update Presto Plugin to support PrestoSql 333 |  Major | plugins | Bolke de Bruin | Bolke de Bruin |
| [RANGER-2829](https://issues.apache.org/jira/browse/RANGER-2829) | support to specify super-users/groups and audit-exclude-users/groups via plugin config |  Major | plugins | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2759](https://issues.apache.org/jira/browse/RANGER-2759) | Migrate Python scripts to Python 3 |  Major | admin, kms | Attila Bukor | Pradeep Agrawal |
| [RANGER-2834](https://issues.apache.org/jira/browse/RANGER-2834) | Upgrade Ranger to support Elasticsearch 7.6.0 |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2842](https://issues.apache.org/jira/browse/RANGER-2842) | RangerDefaultRequestProcessor preProcess overrides clusterName, clusterType |  Major | Ranger | Kishor Gollapalliwar | Kishor Gollapalliwar |
| [RANGER-2850](https://issues.apache.org/jira/browse/RANGER-2850) | Add javax.annotation to Presto plugin to ensure java 11 support |  Major | plugins | Bolke de Bruin | Bolke de Bruin |
| [RANGER-2843](https://issues.apache.org/jira/browse/RANGER-2843) | Privilege filteration is required for ranger lookup user for Nifi and Nifi Registry |  Major | Ranger | Dhaval B. SHAH | Dhaval B. SHAH |
| [RANGER-2741](https://issues.apache.org/jira/browse/RANGER-2741) | Fix typo in solr\_for\_audit\_setup |  Trivial | admin, audit | bianqi |  |
| [RANGER-2851](https://issues.apache.org/jira/browse/RANGER-2851) | Remove caret M characters from ranger files |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2849](https://issues.apache.org/jira/browse/RANGER-2849) | Allow Ranger to be configurable to not disclose server version |  Major | Ranger | Mehul Parikh | Mahesh Hanumant Bandal |
| [RANGER-2852](https://issues.apache.org/jira/browse/RANGER-2852) | Add .gitattributes file to prevent CRLF and LF mismatches for source and text files |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2854](https://issues.apache.org/jira/browse/RANGER-2854) | Make audit bootstrap property configurable |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2867](https://issues.apache.org/jira/browse/RANGER-2867) | Update Spring Security framework for Ranger |  Major | Ranger | Dhaval B. SHAH | Dhaval B. SHAH |
| [RANGER-2887](https://issues.apache.org/jira/browse/RANGER-2887) | Upgrade Tomcat to 7.0.104 |  Minor | Ranger | Mahesh Hanumant Bandal | Mahesh Hanumant Bandal |
| [RANGER-2888](https://issues.apache.org/jira/browse/RANGER-2888) | Upgrade Spring framework to version 4.3.27.RELEASE |  Minor | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2890](https://issues.apache.org/jira/browse/RANGER-2890) | Add missing log4j properties for audit log |  Major | audit | rujia |  |
| [RANGER-2904](https://issues.apache.org/jira/browse/RANGER-2904) | Add appopriate warning messages when updates to in-memory policy cache encounter unexpected conditions |  Minor | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2861](https://issues.apache.org/jira/browse/RANGER-2861) | Support username and keytab to authenticate ES service to use as an Ranger Audit Store |  Major | Ranger | Bhavik Patel | Bhavik Patel |
| [RANGER-2902](https://issues.apache.org/jira/browse/RANGER-2902) | Add policy id to the list of filters in Access Audit Tab |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2908](https://issues.apache.org/jira/browse/RANGER-2908) | Upgrade jackson version to 2.10.3 |  Major | Ranger | Kishor Gollapalliwar | Kishor Gollapalliwar |
| [RANGER-2916](https://issues.apache.org/jira/browse/RANGER-2916) | Get rid of POM model related warnings in Ranger build output |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2920](https://issues.apache.org/jira/browse/RANGER-2920) | Improvement in DB scripts for handling upgrade scenario for MS-SQL |  Major | Ranger | Dhaval B. SHAH | Dhaval B. SHAH |
| [RANGER-2925](https://issues.apache.org/jira/browse/RANGER-2925) | Ranger UI - third party library version upgrades part 1 |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2935](https://issues.apache.org/jira/browse/RANGER-2935) | Upgrade joda-time to 2.10.6 |  Major | Ranger | Mahesh Hanumant Bandal | Mahesh Hanumant Bandal |
| [RANGER-2939](https://issues.apache.org/jira/browse/RANGER-2939) | Search functionality with Cluster name is not working on Audit\>\>Access and Plugins tab |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2923](https://issues.apache.org/jira/browse/RANGER-2923) | Changing data type of sync\_source\_info column to accommodate more characters |  Major | Ranger | Mahesh Hanumant Bandal | Mahesh Hanumant Bandal |
| [RANGER-2949](https://issues.apache.org/jira/browse/RANGER-2949) | Upgrade Tomcat to 7.0.105 |  Minor | Ranger | Mahesh Hanumant Bandal | Mahesh Hanumant Bandal |
| [RANGER-2960](https://issues.apache.org/jira/browse/RANGER-2960) | Docker setup to build Ranger |  Major | Ranger | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2961](https://issues.apache.org/jira/browse/RANGER-2961) | Docker setup to run Ranger Admin |  Major | Ranger | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2966](https://issues.apache.org/jira/browse/RANGER-2966) | Upgrade POI to 4.1.2 |  Minor | Ranger | Mahesh Hanumant Bandal | Mahesh Hanumant Bandal |
| [RANGER-2971](https://issues.apache.org/jira/browse/RANGER-2971) | Docker setup to run Ranger enabled HBase |  Major | Ranger | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2975](https://issues.apache.org/jira/browse/RANGER-2975) | Docker setup to run Ranger enabled YARN |  Major | Ranger | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2974](https://issues.apache.org/jira/browse/RANGER-2974) | Docker setup to run Ranger enabled Kafka |  Major | Ranger | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2980](https://issues.apache.org/jira/browse/RANGER-2980) | Update Ranger build to generate one type of archive only - .tar.gz |  Major | Ranger | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2970](https://issues.apache.org/jira/browse/RANGER-2970) | HBase plugin package - remove duplicate libraries, add missing library |  Major | plugins | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2969](https://issues.apache.org/jira/browse/RANGER-2969) | Docker setup to run Ranger enabled HDFS |  Major | Ranger | Madhan Neethiraj | Madhan Neethiraj |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2530](https://issues.apache.org/jira/browse/RANGER-2530) | Constant increase in memory usage by ranger-usersync process and eventually going out of memory |  Major | usersync | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2531](https://issues.apache.org/jira/browse/RANGER-2531) | Removing a user from a group is not reflected properly in unix based sync. |  Major | usersync | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2529](https://issues.apache.org/jira/browse/RANGER-2529) | Create index on obj\_id and obj\_class\_type column of x\_data\_hist table |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2499](https://issues.apache.org/jira/browse/RANGER-2499) | Improve bulk create/update policy performance |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2527](https://issues.apache.org/jira/browse/RANGER-2527) | UI Improvement for Roles create update and delete log on Audit -\> Admin Tab. |  Minor | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2536](https://issues.apache.org/jira/browse/RANGER-2536) | Ranger Hive authorizer enhancement to enable Hive policies based on resource owners |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2538](https://issues.apache.org/jira/browse/RANGER-2538) | Ranger policy import calls via knox trusted proxy failing |  Major | Ranger | suja s | Sailaja Polavarapu |
| [RANGER-2543](https://issues.apache.org/jira/browse/RANGER-2543) | Delete service def request is failing |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2544](https://issues.apache.org/jira/browse/RANGER-2544) | Ranger Owner Policy not getting honored for SELECT \* queries. |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2539](https://issues.apache.org/jira/browse/RANGER-2539) | Create Default Policies for Hive Databases -default, Information\_schema |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2526](https://issues.apache.org/jira/browse/RANGER-2526) | Log does not get generated for "Deny All Other Accesses" toggle button available on Policy page. |  Minor | Ranger | Preetam Tripathi | Mateen Mansoori |
| [RANGER-2546](https://issues.apache.org/jira/browse/RANGER-2546) | Replace hard-coded 'python' with '$PYTHON\_COMMAND\_INVOKER' in setup.sh |  Major | admin | Peng Xing | Peng Xing |
| [RANGER-2552](https://issues.apache.org/jira/browse/RANGER-2552) | Adding a user to a group is resetting the role/permissions of the user |  Major | Ranger, usersync | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2553](https://issues.apache.org/jira/browse/RANGER-2553) | Hive RangerServiceDef isValidLeaf attribute values should not be copied to DataMaskDef and RowFilterDef |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2548](https://issues.apache.org/jira/browse/RANGER-2548) | Ranger-admin updates to ensure owner information in GrantRevokeData is correctly consumed |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2556](https://issues.apache.org/jira/browse/RANGER-2556) | RangerHivePlugin Row filtering and Column Masking auditing gives inconsistent audit information |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2560](https://issues.apache.org/jira/browse/RANGER-2560) | Solve the problem of the order of the configuration items of the Solr plugin |  Major | Ranger | wu.kehua | wu.kehua |
| [RANGER-2533](https://issues.apache.org/jira/browse/RANGER-2533) | After setting 'xasecure.audit.is.enabled' to 'false', the audit log is still logged |  Major | audit | Peng Xing | Peng Xing |
| [RANGER-2547](https://issues.apache.org/jira/browse/RANGER-2547) | Good coding practices: minimize use of static/unnecessary class members |  Minor | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2554](https://issues.apache.org/jira/browse/RANGER-2554) | Log out message for Ranger needs to be more informative on Knox enabled cluster |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2534](https://issues.apache.org/jira/browse/RANGER-2534) | Official logo for Apache Ranger |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2559](https://issues.apache.org/jira/browse/RANGER-2559) | Update Atlas Authorizer with forwardedAddresses and Remote IP to handle request from proxy.. |  Major | plugins | Nixon Rodrigues | Nixon Rodrigues |
| [RANGER-2567](https://issues.apache.org/jira/browse/RANGER-2567) | Ranger fails to connect wired Solr |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2569](https://issues.apache.org/jira/browse/RANGER-2569) | Policy with isDenyAllElse=true denies request to check if any access is allowed |  Major | plugins | Madhan Neethiraj | Abhay Kulkarni |
| [RANGER-2568](https://issues.apache.org/jira/browse/RANGER-2568) | Ranger Hive policy creation page in Ranger Admin UI shows resources as Database,None instead of Database,Table,Column |  Major | Ranger | Anuja Leekha | Nitin Galave |
| [RANGER-2577](https://issues.apache.org/jira/browse/RANGER-2577) | Missing one dependency jar file during packaging for Ranger Ozone plugin. |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2580](https://issues.apache.org/jira/browse/RANGER-2580) | RangerPolicy.getServiceType API should return name of the service-type |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2574](https://issues.apache.org/jira/browse/RANGER-2574) | Ranger Import of fails if policy type is not passed |  Major | Ranger | Mateen Mansoori | Mateen Mansoori |
| [RANGER-2581](https://issues.apache.org/jira/browse/RANGER-2581) | Ranger solr plugin fails to connect to SSL enabled Ranger |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2582](https://issues.apache.org/jira/browse/RANGER-2582) | Policy history details popup not getting populated properly. |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2586](https://issues.apache.org/jira/browse/RANGER-2586) | Ranger KMS start fails with NoClassDefFoundError |  Blocker | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2583](https://issues.apache.org/jira/browse/RANGER-2583) | Upgrade jackson-databind |  Major | Ranger | László Dénes Terjéki |  |
| [RANGER-2585](https://issues.apache.org/jira/browse/RANGER-2585) | Ranger audits for hive role commands show user as "hive" instead of the effective user |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2603](https://issues.apache.org/jira/browse/RANGER-2603) | Delegate Admin processing incorrectly giving policy access to user - due to owner |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2597](https://issues.apache.org/jira/browse/RANGER-2597) | Allow auditor role user to get details of  services and policies from public API |  Major | Ranger | Fatima Amjad Khan | Fatima Amjad Khan |
| [RANGER-2606](https://issues.apache.org/jira/browse/RANGER-2606) | Maven central deployment publishing only the top level ranger artifact |  Major | Ranger | Velmurugan Periasamy | Selvamohan Neethiraj |
| [RANGER-2605](https://issues.apache.org/jira/browse/RANGER-2605) | Update maven version to 3.6.2 |  Major | Ranger | Velmurugan Periasamy | Velmurugan Periasamy |
| [RANGER-2610](https://issues.apache.org/jira/browse/RANGER-2610) | NPE in PolicyRefresher if service-policies in policy-cache contain only service definition |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2602](https://issues.apache.org/jira/browse/RANGER-2602) | Import is failing with "Can not construct instance of java.util.Date from String" error |  Major | Ranger | Harshal Chavan | Nikhil Purbhe |
| [RANGER-2600](https://issues.apache.org/jira/browse/RANGER-2600) | Ranger Login Sessions audits always show "Login Type" as "Username/Password" even for kerberos login |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2613](https://issues.apache.org/jira/browse/RANGER-2613) | Public API for listing roles needs to return a Java list of RangerRole objects |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2615](https://issues.apache.org/jira/browse/RANGER-2615) | Unable to create Role |  Major | Ranger | Preetam Tripathi | Ramesh Mani |
| [RANGER-2614](https://issues.apache.org/jira/browse/RANGER-2614) | Unable to create service |  Major | Ranger | Preetam Tripathi | Ramesh Mani |
| [RANGER-2512](https://issues.apache.org/jira/browse/RANGER-2512) | RangerRolesRESTClient for serving user group roles to the plugins for evaluation |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2537](https://issues.apache.org/jira/browse/RANGER-2537) | Ranger KMS having wrong bit length and version in DB after after export / import within keystore file |  Major | Ranger | Dhaval B. SHAH | Dhaval B. SHAH |
| [RANGER-2617](https://issues.apache.org/jira/browse/RANGER-2617) | Provide descriptive error message when role delete not allowed |  Minor | admin | suja s | Nikhil Purbhe |
| [RANGER-2618](https://issues.apache.org/jira/browse/RANGER-2618) | Restrict rolename change when a policy/another role with that role exist |  Major | admin | suja s | Nikhil Purbhe |
| [RANGER-2623](https://issues.apache.org/jira/browse/RANGER-2623) | Add Validations to RoleREST apis |  Major | Ranger | suja s | Ramesh Mani |
| [RANGER-2620](https://issues.apache.org/jira/browse/RANGER-2620) | Create empty Role cache file when no roles are present in ranger yet. |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2619](https://issues.apache.org/jira/browse/RANGER-2619) | Admin Audit Details not displayed for edit role |  Major | admin | suja s | Mateen Mansoori |
| [RANGER-2626](https://issues.apache.org/jira/browse/RANGER-2626) | Block unauthenticated access to Ranger REST endpoints in kerberized environment |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2624](https://issues.apache.org/jira/browse/RANGER-2624) | Issue downloading Ranger Roles in non-kerberized cluster |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2630](https://issues.apache.org/jira/browse/RANGER-2630) | Ensure that entity deletes are handled even when Atlas sets deleted entity's state as not ACTIVE |  Minor | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2378](https://issues.apache.org/jira/browse/RANGER-2378) | KeySecure HSM Integration is not compatible with Java9 |  Major | kms | Zsombor Gegesy | Dhaval B. SHAH |
| [RANGER-2616](https://issues.apache.org/jira/browse/RANGER-2616) | Add reencryptEncryptedKey, batch reencryption interface to KMS and improve logs |  Major | Ranger | Fatima Amjad Khan | Fatima Amjad Khan |
| [RANGER-2637](https://issues.apache.org/jira/browse/RANGER-2637) | RangerTags loading issue when Ranger admin service is not available. |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2635](https://issues.apache.org/jira/browse/RANGER-2635) | Backport hadoop-kms changes in ranger-kms |  Major | Ranger | Fatima Amjad Khan | Fatima Amjad Khan |
| [RANGER-2644](https://issues.apache.org/jira/browse/RANGER-2644) | Improvement in Ranger encryption algorithm usage. |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2641](https://issues.apache.org/jira/browse/RANGER-2641) | Upgrade scenario fails in MYSQL DB |  Major | Ranger | Preetam Tripathi |  |
| [RANGER-2642](https://issues.apache.org/jira/browse/RANGER-2642) | Grant/Revoke REST invocations by non-service users should not specify resource owner |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2648](https://issues.apache.org/jira/browse/RANGER-2648) | Provide policy list page url with service name |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2649](https://issues.apache.org/jira/browse/RANGER-2649) | Unix user doesn't get 'Admin' role when set through assignment rules |  Major | Ranger | suja s | Dhaval B. SHAH |
| [RANGER-2638](https://issues.apache.org/jira/browse/RANGER-2638) | Ranger admin Logging improvement |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2633](https://issues.apache.org/jira/browse/RANGER-2633) | RangerYarnAuthorizer should get the remoteIPaddress from the accessRequest from YARN |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2647](https://issues.apache.org/jira/browse/RANGER-2647) | Show display name  instead of name in UI |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2622](https://issues.apache.org/jira/browse/RANGER-2622) | Ranger UI side code improvement. |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2650](https://issues.apache.org/jira/browse/RANGER-2650) | Public group should not be given access to all kafka resources in default ranger policies |  Major | Ranger | Dhaval B. SHAH | Dhaval B. SHAH |
| [RANGER-2656](https://issues.apache.org/jira/browse/RANGER-2656) | RangerHiveAuthorizer filterListCmdObjects failed to filter database / tables when HMS calls the authorizer for filtering |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2659](https://issues.apache.org/jira/browse/RANGER-2659) | Zone-based policies are not listed for USER\_ROLE with delegate admin privilege |  Major | Ranger | Harshal Chavan | Abhay Kulkarni |
| [RANGER-2661](https://issues.apache.org/jira/browse/RANGER-2661) | NullPointerException on RangerRolesProvider.loadUserGroupRoles |  Major | Ranger | Ramesh Mani |  |
| [RANGER-2665](https://issues.apache.org/jira/browse/RANGER-2665) | Policy engine for delegate-admin processing is not built correctly when policy-deltas are enabled and a zone policy is updated |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2631](https://issues.apache.org/jira/browse/RANGER-2631) | Ranger Audit  logs for SHOW commands related to ROLE operations in Hive |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2565](https://issues.apache.org/jira/browse/RANGER-2565) | Remove duplicate error messages when test connection fails |  Minor | admin | Peng Xing | Peng Xing |
| [RANGER-2655](https://issues.apache.org/jira/browse/RANGER-2655) | Ranger UI improvement |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2660](https://issues.apache.org/jira/browse/RANGER-2660) | Option to create missing users/groups/roles while creating/updating/importing policies |  Major | Ranger | Preetam Tripathi | Nikhil Purbhe |
| [RANGER-2675](https://issues.apache.org/jira/browse/RANGER-2675) | Add Logs if keystore is not initialised during Ranger start |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2679](https://issues.apache.org/jira/browse/RANGER-2679) | upgrade spring framework version to 4.3.23 to be compatible with current spring security version(4.2.13) |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2678](https://issues.apache.org/jira/browse/RANGER-2678) | RangerUgSyncRESTClient sets password as username for basic auth |  Major | usersync | Krzysztof Adamski | Pradeep Agrawal |
| [RANGER-2680](https://issues.apache.org/jira/browse/RANGER-2680) | Ranger Usersync and Tagsync is not updating session cookie until restart |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2687](https://issues.apache.org/jira/browse/RANGER-2687) | NoClassDefFoundError when Ranger Knox plugin is enabled |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2564](https://issues.apache.org/jira/browse/RANGER-2564) | Avoid recursive audit log in Solr Plugin by user "solr" when plugin is enabled for ranger\_audits collection |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2677](https://issues.apache.org/jira/browse/RANGER-2677) | Fix corner case of Ranger Audit login going into race condition |  Major | Ranger | Rajesh Balamohan | Ramesh Mani |
| [RANGER-2690](https://issues.apache.org/jira/browse/RANGER-2690) | Default service display name is not getting set for Tag service |  Critical | Ranger | Kishor Gollapalliwar | Kishor Gollapalliwar |
| [RANGER-2691](https://issues.apache.org/jira/browse/RANGER-2691) | Upgrade with MsSQL fails because of invalid syntax |  Major | admin | László Dénes Terjéki |  |
| [RANGER-2696](https://issues.apache.org/jira/browse/RANGER-2696) | Fix unit test failure in TestPolicyEngine.testValiditySchedulerApplicable |  Minor | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2698](https://issues.apache.org/jira/browse/RANGER-2698) | Fix Ranger Unit Test failing in Ranger hive Plugin |  Minor | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2671](https://issues.apache.org/jira/browse/RANGER-2671) | Running the setup.sh in usersync a second time will change the permissions and owner of hadoop core-site.xml |  Major | usersync | Jiayi Liu |  |
| [RANGER-2685](https://issues.apache.org/jira/browse/RANGER-2685) | set\_globals.sh will throw an exception "cp ews/logs/\* failed" |  Major | admin | Jiayi Liu |  |
| [RANGER-2667](https://issues.apache.org/jira/browse/RANGER-2667) | Running the disable-presto-plugin.sh script will always get stuck |  Major | plugins | Jiayi Liu |  |
| [RANGER-2703](https://issues.apache.org/jira/browse/RANGER-2703) | Grant operation succeeds even though there is no delegate admin permission |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2692](https://issues.apache.org/jira/browse/RANGER-2692) | RangerKafkaAuthorizer support for ConsumerGroup resource for authorization |  Minor | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2694](https://issues.apache.org/jira/browse/RANGER-2694) | TagSync fails to start due to NoClassDefFoundError |  Minor | tagsync | Toshihiko Uchida | Madhan Neethiraj |
| [RANGER-2688](https://issues.apache.org/jira/browse/RANGER-2688) | Make cookie name configurable |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2708](https://issues.apache.org/jira/browse/RANGER-2708) | Ranger public group check uses wrong comparison for equality |  Major | Ranger | Lars Francke | Lars Francke |
| [RANGER-2702](https://issues.apache.org/jira/browse/RANGER-2702) | Upgrade Kafka Version in Ranger to 2.4 |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2714](https://issues.apache.org/jira/browse/RANGER-2714) | Fix Failing Kylin test cases |  Blocker | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2717](https://issues.apache.org/jira/browse/RANGER-2717) | Edit repo/service fails(Knox proxy) |  Major | Ranger | suja s | Nitin Galave |
| [RANGER-2715](https://issues.apache.org/jira/browse/RANGER-2715) | "Service display Name" attribute on all tabs in Ranger(UI) |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2719](https://issues.apache.org/jira/browse/RANGER-2719) | Fix Ranger Atlas Plugin packaging issue |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2722](https://issues.apache.org/jira/browse/RANGER-2722) | policies/hive/for-resource api call is returning deleted policies |  Major | Ranger | suja s | Abhay Kulkarni |
| [RANGER-2731](https://issues.apache.org/jira/browse/RANGER-2731) | BaseDao.batchCreate uses the wrong property |  Minor | admin | Andrew Luo |  |
| [RANGER-2730](https://issues.apache.org/jira/browse/RANGER-2730) | Missing JAVA Patch record in the ranger admin x\_db\_version\_h table |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2707](https://issues.apache.org/jira/browse/RANGER-2707) | ranger.usersync.enabled not respected on initial ugsync startup |  Major | usersync | Lars Francke | Lars Francke |
| [RANGER-2720](https://issues.apache.org/jira/browse/RANGER-2720) | Search filter not work properly. |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2729](https://issues.apache.org/jira/browse/RANGER-2729) | RANGER-2660 should creates external users rather internal |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2743](https://issues.apache.org/jira/browse/RANGER-2743) | Upgrade Tomcat Version to 7.0.100 |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2718](https://issues.apache.org/jira/browse/RANGER-2718) | Utility to update user and group names in stored policy json |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2750](https://issues.apache.org/jira/browse/RANGER-2750) | Permission "alter" has to be there for TOPIC and CLUSTER resource in RangerKafkaPlugin ServiceDef |  Minor | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2755](https://issues.apache.org/jira/browse/RANGER-2755) | Update Atlas service-def and plugin for changes in ATLAS-3653 |  Major | admin, plugins | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2761](https://issues.apache.org/jira/browse/RANGER-2761) | Policy evaluators are not correctly updated when using policy deltas for downloads to plugins |  Major | Ranger | star | star |
| [RANGER-2735](https://issues.apache.org/jira/browse/RANGER-2735) | Update Atlas serviceDef for upgrade case of RANGER-2734 |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2757](https://issues.apache.org/jira/browse/RANGER-2757) | Ranger Knox SSO logout issue |  Major | Ranger | Pradeep Agrawal | Nitin Galave |
| [RANGER-2749](https://issues.apache.org/jira/browse/RANGER-2749) | Ranger depends on commons-lang but doesn't specify it in it's pom |  Major | plugins | Grant Henke |  |
| [RANGER-2764](https://issues.apache.org/jira/browse/RANGER-2764) | Role API : Duplicate key value violates unique constraint "x\_ranger\_global\_state\_uk\_state\_name" |  Major | Ranger | Mehul Parikh | Mahesh Hanumant Bandal |
| [RANGER-2773](https://issues.apache.org/jira/browse/RANGER-2773) | Enhanced logging messages for RangerScriptConditionEvaluator class |  Minor | plugins, Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2777](https://issues.apache.org/jira/browse/RANGER-2777) | Ranger Knox Plugin failed to download Roles |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2781](https://issues.apache.org/jira/browse/RANGER-2781) | default policy creation fails for policy-items with no users |  Major | admin | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2785](https://issues.apache.org/jira/browse/RANGER-2785) | Ranger Ozone plugin does not include configuration jars |  Major | plugins | Vivek Ratnavel Subramanian | Sailaja Polavarapu |
| [RANGER-2788](https://issues.apache.org/jira/browse/RANGER-2788) | Fix schema-registry servicedef with correct values of id and itemIds. |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2765](https://issues.apache.org/jira/browse/RANGER-2765) | Correct permissions are not getting loaded for entity-label in Atlas service |  Major | Ranger | Preetam Tripathi | Nitin Galave |
| [RANGER-2775](https://issues.apache.org/jira/browse/RANGER-2775) | Pagination not working for role in Ranger admin UI page |  Major | Ranger | Mehul Parikh | Mahesh Hanumant Bandal |
| [RANGER-2790](https://issues.apache.org/jira/browse/RANGER-2790) | Import start and import end are not in sequence |  Major | Ranger | Harshal Chavan | Mahesh Hanumant Bandal |
| [RANGER-2705](https://issues.apache.org/jira/browse/RANGER-2705) | Group sync does does not parse DNs properly |  Major | usersync | Lars Francke | Sailaja Polavarapu |
| [RANGER-2786](https://issues.apache.org/jira/browse/RANGER-2786) |  Ranger usersync group modifyTimestamp parsing should be in 24 hours format |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2800](https://issues.apache.org/jira/browse/RANGER-2800) | Ranger DB upgrade script for version name change in x\_ranger\_global\_state table |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2801](https://issues.apache.org/jira/browse/RANGER-2801) | Update apache thrift version in ranger |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2804](https://issues.apache.org/jira/browse/RANGER-2804) | Ranger Ozone plugin unable to write to solr audits in SSL enabled cluster |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2793](https://issues.apache.org/jira/browse/RANGER-2793) | Admin log clogged with a warning |  Major | Ranger | Dineshkumar Yadav | Dineshkumar Yadav |
| [RANGER-2797](https://issues.apache.org/jira/browse/RANGER-2797) | changing error to  debug as it does not make impact on transactions |  Minor | Ranger | Mahesh Hanumant Bandal | Mahesh Hanumant Bandal |
| [RANGER-2806](https://issues.apache.org/jira/browse/RANGER-2806) | RangerScriptConditionEvaluator does not initialize correctly with openJDK 11 |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2803](https://issues.apache.org/jira/browse/RANGER-2803) | Modify db\_setup.py script to handle pre-created user's tablespace for Oracle |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2807](https://issues.apache.org/jira/browse/RANGER-2807) | Change audit format for access logs |  Major | Ranger | Ramesh Mani |  |
| [RANGER-2805](https://issues.apache.org/jira/browse/RANGER-2805) | Create role with non-existing group/user failing due to concurrent threads |  Major | Ranger | Dineshkumar Yadav | Dineshkumar Yadav |
| [RANGER-2794](https://issues.apache.org/jira/browse/RANGER-2794) | Search is not working in Role page |  Major | Ranger | Harshal Chavan | Mahesh Hanumant Bandal |
| [RANGER-2809](https://issues.apache.org/jira/browse/RANGER-2809) | Solr plugin fails to download policies with authentication error in a secure cluster |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2802](https://issues.apache.org/jira/browse/RANGER-2802) | Java patch J10034 may fail in upgrade case |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2814](https://issues.apache.org/jira/browse/RANGER-2814) | RangerServiceResource signature should not include service-specific information |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2815](https://issues.apache.org/jira/browse/RANGER-2815) | Ranger HDFSAuditDestination flush call should be privileged one |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2813](https://issues.apache.org/jira/browse/RANGER-2813) | [HBase]Not able to pull execute  permission given to user from getUserPermissions API in HBase Ranger Coprocessor |  Critical | admin | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [RANGER-2818](https://issues.apache.org/jira/browse/RANGER-2818) | [Ozone Ranger Plugin] Init Failed due to CNF JacksonJsonProvider |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2812](https://issues.apache.org/jira/browse/RANGER-2812) | Upgrade Nimbus-Jose-JWT and netty versions |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2824](https://issues.apache.org/jira/browse/RANGER-2824) | Allow from an override policy having deny-items is ignored |  Major | plugins | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2817](https://issues.apache.org/jira/browse/RANGER-2817) | Service configuration update does not cause policies in the service to get downloaded to plugin |  Major | Ranger | Abhay Kulkarni | Mahesh Hanumant Bandal |
| [RANGER-2823](https://issues.apache.org/jira/browse/RANGER-2823) | RangerResouceTrie.copySubTree() does not set up TrieNode's child nodes correctly |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2822](https://issues.apache.org/jira/browse/RANGER-2822) | Best practices: Refactor embeddedserver code and remove redundant code |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2763](https://issues.apache.org/jira/browse/RANGER-2763) | Hive SET Role command in Ranger hive plugin |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2838](https://issues.apache.org/jira/browse/RANGER-2838) | Kafka Testcase failing the build with NoClassDefFoundError |  Blocker | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2833](https://issues.apache.org/jira/browse/RANGER-2833) | Enforcing Strict transport security |  Major | Ranger | Dineshkumar Yadav | Dineshkumar Yadav |
| [RANGER-2828](https://issues.apache.org/jira/browse/RANGER-2828) | RangerExportPolicy with resource filter fails to fetch policies |  Minor | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2841](https://issues.apache.org/jira/browse/RANGER-2841) | Refactor userstore enricher in order to support userstore download without service information |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2836](https://issues.apache.org/jira/browse/RANGER-2836) | Make Elasticsearch port and protocol properties configurable |  Major | audit, Ranger | Bhavik Patel | Bhavik Patel |
| [RANGER-2839](https://issues.apache.org/jira/browse/RANGER-2839) | Assorted improvements for debugging and handling of thread terminations, clean-up of unused data, etc. |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2840](https://issues.apache.org/jira/browse/RANGER-2840) | Create policy with non existing group is failing due to to multiple threads creating same group |  Major | Ranger | Dineshkumar Yadav | Dineshkumar Yadav |
| [RANGER-2789](https://issues.apache.org/jira/browse/RANGER-2789) | GET API service/xusers/users turns very slow when there are more than 1000 users |  Minor | Ranger | RickyMa |  |
| [RANGER-2483](https://issues.apache.org/jira/browse/RANGER-2483) | Presto plugin uses /presto/plugins instead of /presto/plugin |  Major | plugins | David Berger |  |
| [RANGER-2747](https://issues.apache.org/jira/browse/RANGER-2747) | Ranger integration with presto works on "Release 317" but fails on versions later |  Blocker | plugins | harsha |  |
| [RANGER-2853](https://issues.apache.org/jira/browse/RANGER-2853) | "Unauthenticated : Please check the permission in the policy for the user": An NPE in ranger admin when enable kms. |  Major | admin | gaozhan ding |  |
| [RANGER-2858](https://issues.apache.org/jira/browse/RANGER-2858) | 'show databases' gives permission denied error, even though the user has permissions on a few of the databases in security zone policies |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2869](https://issues.apache.org/jira/browse/RANGER-2869) | Ranger audit module to provide an option to generate a GUID for each audit log |  Major | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2864](https://issues.apache.org/jira/browse/RANGER-2864) | Group creation is failing during import policy |  Major | Ranger | Dineshkumar Yadav | Dineshkumar Yadav |
| [RANGER-2855](https://issues.apache.org/jira/browse/RANGER-2855) | import policy for ranger is not working properly if updateifexist parameter is passed |  Major | Ranger | Dineshkumar Yadav | Dineshkumar Yadav |
| [RANGER-2875](https://issues.apache.org/jira/browse/RANGER-2875) | Security zone policy not getting enforced correctly for some servicedef |  Major | Ranger | suja s | Ramesh Mani |
| [RANGER-2874](https://issues.apache.org/jira/browse/RANGER-2874) | Tag policies not getting enforced for ADLS path |  Major | Ranger | suja s | Ramesh Mani |
| [RANGER-2872](https://issues.apache.org/jira/browse/RANGER-2872) | The Ranger authentication group permission of the ES does not take effect. |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2886](https://issues.apache.org/jira/browse/RANGER-2886) | Exporting tag policies fails when 'polResource' query parameter is used |  Major | Ranger | Ramesh Mani | Dineshkumar Yadav |
| [RANGER-2885](https://issues.apache.org/jira/browse/RANGER-2885) | Add missing PermType Java codes for new versions of Kafka |  Major | admin, Ranger | RickyMa |  |
| [RANGER-2893](https://issues.apache.org/jira/browse/RANGER-2893) | show grant on database xxx will fail in ranger hive plugin |  Major | plugins | Jiayi Liu |  |
| [RANGER-2877](https://issues.apache.org/jira/browse/RANGER-2877) | ElasticSearch-Plugin throws NullPointException when the type of request is 'PutMappingRequest' |  Major | plugins | rujia |  |
| [RANGER-2856](https://issues.apache.org/jira/browse/RANGER-2856) | A policy should be deleted if it has no policyItems |  Minor | admin, Ranger | RickyMa |  |
| [RANGER-2881](https://issues.apache.org/jira/browse/RANGER-2881) | Delegate Admin user having role "user" able to create policy which has non-existing users/groups |  Major | Ranger | Dineshkumar Yadav | Dineshkumar Yadav |
| [RANGER-2903](https://issues.apache.org/jira/browse/RANGER-2903) | Remove elasticsearch audit's is\_enabled property from config |  Blocker | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2905](https://issues.apache.org/jira/browse/RANGER-2905) | Failed to log Audit event in Elasticsearch |  Major | audit | Md Mehrab Alam | Pradeep Agrawal |
| [RANGER-2762](https://issues.apache.org/jira/browse/RANGER-2762) | Logout issue when knox-trusted proxy is enabled |  Major | Ranger | Harshal Chavan | Nitin Galave |
| [RANGER-2821](https://issues.apache.org/jira/browse/RANGER-2821) | Update ranger authorizer for Atlas to add admin-purge |  Major | plugins | Sidharth Kumar Mishra | Nixon Rodrigues |
| [RANGER-2915](https://issues.apache.org/jira/browse/RANGER-2915) | Support tag based policies for Ozone resources in Ranger |  Major | Ranger | Deepak Sharma | Sailaja Polavarapu |
| [RANGER-2914](https://issues.apache.org/jira/browse/RANGER-2914) | Invalid obj name in DB script for MS-SQL |  Major | Ranger | Dhaval B. SHAH | Dhaval B. SHAH |
| [RANGER-2912](https://issues.apache.org/jira/browse/RANGER-2912) | ranger and plugins will throw GSSAPI error when write audit log to ElasticSearch when cluster running on none security mode |  Major | audit, plugins, Ranger | rujia |  |
| [RANGER-2918](https://issues.apache.org/jira/browse/RANGER-2918) | Ranger Audit for HBase does not capture predicates |  Minor | Ranger | Ramesh Mani | Ramesh Mani |
| [RANGER-2913](https://issues.apache.org/jira/browse/RANGER-2913) | Import policy fails when policy with same name present in multiple service |  Major | Ranger | Dineshkumar Yadav | Dineshkumar Yadav |
| [RANGER-2921](https://issues.apache.org/jira/browse/RANGER-2921) | Regression: When all resource and tag(if applicable) policies are deleted then plugin continues to use old set of policies |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2911](https://issues.apache.org/jira/browse/RANGER-2911) | ES plugin missing implemention for some ES request |  Blocker | plugins | rujia |  |
| [RANGER-2919](https://issues.apache.org/jira/browse/RANGER-2919) | Source policies gets deleted after importing policy with deleteifexists parameter |  Major | Ranger | Dineshkumar Yadav | Dineshkumar Yadav |
| [RANGER-2917](https://issues.apache.org/jira/browse/RANGER-2917) | Avoid recursive audit log in ES Plugin by user elasticsearch when plugin is enabled for ranger\_audits index |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2922](https://issues.apache.org/jira/browse/RANGER-2922) | Query info not included for solr query audits in Ranger |  Major | Ranger | Sailaja Polavarapu | Sailaja Polavarapu |
| [RANGER-2930](https://issues.apache.org/jira/browse/RANGER-2930) | Change atlas version to 2.1.0 for Ranger 2.1.0 release |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2931](https://issues.apache.org/jira/browse/RANGER-2931) | Fix PMD Error of RANGER-2922 |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2938](https://issues.apache.org/jira/browse/RANGER-2938) | [Ranger Audits] Zone Name field is not populated in case of Deny Operations via Security Zones |  Minor | Ranger | Abhishek Shukla |  |
| [RANGER-2944](https://issues.apache.org/jira/browse/RANGER-2944) | Presto plugin lookupResource throws NPE if not set service password |  Major | plugins | Jiayi Liu | Jiayi Liu |
| [RANGER-2945](https://issues.apache.org/jira/browse/RANGER-2945) | Need to check if RANGER\_LOGIN\_PASSWORD exists in HadoopConfigHolder |  Major | plugins | Jiayi Liu | Jiayi Liu |
| [RANGER-2876](https://issues.apache.org/jira/browse/RANGER-2876) | allow-exception policy-items are not correctly handled when access-type is '\_any' |  Major | Ranger | Abhay Kulkarni | Abhay Kulkarni |
| [RANGER-2947](https://issues.apache.org/jira/browse/RANGER-2947) | [Ranger][Policy Import] Usage of serviceType config while importing ranger policy for any service |  Major | Ranger | Dineshkumar Yadav | Dineshkumar Yadav |
| [RANGER-2968](https://issues.apache.org/jira/browse/RANGER-2968) | HDFS plugin package - missing library |  Major | plugins | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2958](https://issues.apache.org/jira/browse/RANGER-2958) | Unable to run build using docker script -  build\_ranger\_using\_docker.sh |  Major | build-infra | Selvamohan Neethiraj | Selvamohan Neethiraj |
| [RANGER-2978](https://issues.apache.org/jira/browse/RANGER-2978) | Ranger upgrade fails due to missing DB function. |  Major | Ranger | Dhaval B. SHAH | Dhaval B. SHAH |
| [RANGER-2979](https://issues.apache.org/jira/browse/RANGER-2979) | Test failure due to NPE |  Major | plugins | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2973](https://issues.apache.org/jira/browse/RANGER-2973) | NPE check in audit generation in RangerHDFSPlugin to avoid possible issues |  Minor | Ranger | Ramesh Mani | Ramesh Mani |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [RANGER-2576](https://issues.apache.org/jira/browse/RANGER-2576) | Ranger is failing to start in kerberize mode with java-11 |  Major | Ranger | Nikhil Purbhe | Nikhil Purbhe |
| [RANGER-2670](https://issues.apache.org/jira/browse/RANGER-2670) | Bookmark functionality for Report Tab and Add sort By query param in URL. |  Major | Ranger | Nitin Galave | Nitin Galave |
| [RANGER-2684](https://issues.apache.org/jira/browse/RANGER-2684) | Add Kudu service definition |  Major | plugins | Hao Hao | Hao Hao |
| [RANGER-2830](https://issues.apache.org/jira/browse/RANGER-2830) | Update Java patch entry for RANGER-2826 changes |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2837](https://issues.apache.org/jira/browse/RANGER-2837) | Add missing dependencies in assembly |  Major | Ranger | Bhavik Patel | Bhavik Patel |
| [RANGER-2819](https://issues.apache.org/jira/browse/RANGER-2819) | Create Ranger audit schema in given elasticsearch index |  Major | Ranger | Pradeep Agrawal | Pradeep Agrawal |
| [RANGER-2954](https://issues.apache.org/jira/browse/RANGER-2954) | Change pom version to 2.1.0 |  Major | Ranger | Madhan Neethiraj | Madhan Neethiraj |
| [RANGER-2955](https://issues.apache.org/jira/browse/RANGER-2955) | Publish release artifacts |  Major | Ranger | Madhan Neethiraj | Madhan Neethiraj |


