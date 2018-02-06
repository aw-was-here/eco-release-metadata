
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

## Release 0.13.0 - 2017-08-19



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-928](https://issues.apache.org/jira/browse/KNOX-928) | Topology Port Mapping |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-768](https://issues.apache.org/jira/browse/KNOX-768) | Apache Kafka REST API Support |  Major | . | Jeffrey E  Rodriguez | Rick Kellogg |
| [KNOX-788](https://issues.apache.org/jira/browse/KNOX-788) | Apache Atlas Admin UI Support through Knox |  Major | Server | Jeffrey E  Rodriguez | Nixon Rodrigues |
| [KNOX-789](https://issues.apache.org/jira/browse/KNOX-789) | Apache Atlas REST API support |  Major | . | Jeffrey E  Rodriguez | Nixon Rodrigues |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-915](https://issues.apache.org/jira/browse/KNOX-915) | Adding example PAM config for Ubuntu in Knox User Guide under PAM Based Authentication section |  Minor | KnoxCLI | Krishna Pandey | Krishna Pandey |
| [KNOX-923](https://issues.apache.org/jira/browse/KNOX-923) | Add ClientData to KnoxToken Service to Include in JSON Response |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-892](https://issues.apache.org/jira/browse/KNOX-892) | Fix FindBugs "Dodgy Code" issues |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-816](https://issues.apache.org/jira/browse/KNOX-816) | Make private inner classes static |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-390](https://issues.apache.org/jira/browse/KNOX-390) | Include client IP and HTTP verb in audit log |  Major | Server | Kevin Minder | Larry McCay |
| [KNOX-937](https://issues.apache.org/jira/browse/KNOX-937) | Remove redundant type information from Collections |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-942](https://issues.apache.org/jira/browse/KNOX-942) | Remove extraneous spaces around '=' |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-948](https://issues.apache.org/jira/browse/KNOX-948) | Refactor AbstractJWTFilter implementations |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-957](https://issues.apache.org/jira/browse/KNOX-957) | Remove hard-coded versions from gateway-test-release pom |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-951](https://issues.apache.org/jira/browse/KNOX-951) | Add trademark attributions to the website |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-946](https://issues.apache.org/jira/browse/KNOX-946) | Spelling/grammar fixes |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-932](https://issues.apache.org/jira/browse/KNOX-932) | Option to remove the server-name from HTTP-header response |  Major | . | Kunal Rajguru | Lawrence McCay IV |
| [KNOX-966](https://issues.apache.org/jira/browse/KNOX-966) | NPE when Shiro is misconfigured |  Major | Server | Rob Vesse | Rob Vesse |
| [KNOX-988](https://issues.apache.org/jira/browse/KNOX-988) | User guide updates |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-992](https://issues.apache.org/jira/browse/KNOX-992) | Add README for the knoxshell distribution |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-993](https://issues.apache.org/jira/browse/KNOX-993) | The samples README for knoxshell references the 0.5.0 userguide |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-908](https://issues.apache.org/jira/browse/KNOX-908) | Update copyright in NOTICE file |  Major | Release | Larry McCay | Larry McCay |
| [KNOX-910](https://issues.apache.org/jira/browse/KNOX-910) | SHA-1 algorithms are now known to be vulnerable to  compromise and/or collisions should use SHA-256 - Shiro  HashedCredentialsMatcher. |  Major | Server | Jeffrey E  Rodriguez | Jeffrey E  Rodriguez |
| [KNOX-878](https://issues.apache.org/jira/browse/KNOX-878) | Fix mailing lists page on the website |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-920](https://issues.apache.org/jira/browse/KNOX-920) | Make avatica service use default policies |  Major | . | Shi Wang | Shi Wang |
| [KNOX-913](https://issues.apache.org/jira/browse/KNOX-913) | Invalid login.jsp redirect for Ranger Admin UI |  Major | . | Attila Kanto | Attila Kanto |
| [KNOX-909](https://issues.apache.org/jira/browse/KNOX-909) | Ambari rewrite update for SmartSense |  Major | . | Larry McCay | Larry McCay |
| [KNOX-849](https://issues.apache.org/jira/browse/KNOX-849) | Fix SimplePrincipalMapper and CommonIdentityAssertionFilter |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-930](https://issues.apache.org/jira/browse/KNOX-930) | ScopingCookies Feature Logging too Much |  Minor | Server | Larry McCay | Larry McCay |
| [KNOX-936](https://issues.apache.org/jira/browse/KNOX-936) | Websocket does not close connections properly when the backend service url is not reachable |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-939](https://issues.apache.org/jira/browse/KNOX-939) | Missing Licenses Element in POM files |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-938](https://issues.apache.org/jira/browse/KNOX-938) | JWTProvider to accept Query Param as well as Bearer Token |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-944](https://issues.apache.org/jira/browse/KNOX-944) | Make PBE Hashing, Iteration Count and Salt Configurable and Manageable |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-933](https://issues.apache.org/jira/browse/KNOX-933) | PicketLink Provider must set Secure and HTTPOnly flags on Cookie |  Major | Server | Larry McCay | Krishna Pandey |
| [KNOX-950](https://issues.apache.org/jira/browse/KNOX-950) | wss:// in service causes "Bad or malformed url" exception - Websockets |  Major | . | Sandeep More | Sandeep More |
| [KNOX-751](https://issues.apache.org/jira/browse/KNOX-751) | Need rewrite function to capture href information from single page host to rewrite output of node hosts |  Major | Server | Jeffrey E  Rodriguez | Jeffrey E  Rodriguez |
| [KNOX-945](https://issues.apache.org/jira/browse/KNOX-945) | Document Topology Port mapping Feature |  Major | Site | Sandeep More | Sandeep More |
| [KNOX-954](https://issues.apache.org/jira/browse/KNOX-954) | Don't consume parsing errors for JWT tokens |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-947](https://issues.apache.org/jira/browse/KNOX-947) | SSOCookieProvider to be configurable for signature verification key/PEM |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-960](https://issues.apache.org/jira/browse/KNOX-960) | Fix build failure due to error in test code |  Major | Tests | Sandeep More | Sandeep More |
| [KNOX-969](https://issues.apache.org/jira/browse/KNOX-969) | User Guide is missing service\_kafka.md |  Major | Site | Alex Willmer | Sandeep More |
| [KNOX-977](https://issues.apache.org/jira/browse/KNOX-977) | Exclude extraneous bundle.map in admin-ui file from release |  Major | AdminUI | Larry McCay | Larry McCay |
| [KNOX-776](https://issues.apache.org/jira/browse/KNOX-776) | Rewrite rule handling for Websockets |  Major | Server | Sandeep More | Jesus Alvarez |
| [KNOX-967](https://issues.apache.org/jira/browse/KNOX-967) | Duplicate dependencies defined in root pom |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-965](https://issues.apache.org/jira/browse/KNOX-965) | SecureQueryDecryptProcessor decode call could return null thus it  would get a NPE |  Major | Server | Jeffrey E  Rodriguez | Jeffrey E  Rodriguez |
| [KNOX-964](https://issues.apache.org/jira/browse/KNOX-964) | upgrade to httpclient 4.5.3 to avoid licensing issues HTTPCLIENT-1743/LEGAL-240 |  Major | Server | Jeffrey E  Rodriguez | Jeffrey E  Rodriguez |
| [KNOX-759](https://issues.apache.org/jira/browse/KNOX-759) | jansi dependency causes issues starting knox shell |  Major | ClientDSL | Cole Ferrier | Colm O hEigeartaigh |
| [KNOX-961](https://issues.apache.org/jira/browse/KNOX-961) | Knox HTTP connection pool does not honor "Connection: close" in the client request |  Major | Server | Vinayak Joshi |  |
| [KNOX-949](https://issues.apache.org/jira/browse/KNOX-949) | WebHDFS proxy replaces %20 encoded spaces in URL with + encoding |  Blocker | . | Alex Willmer | Larry McCay |
| [KNOX-959](https://issues.apache.org/jira/browse/KNOX-959) | Site Build Fails on Windows |  Minor | Site | Rick Kellogg | Rick Kellogg |
| [KNOX-968](https://issues.apache.org/jira/browse/KNOX-968) | "the the" in User Guide |  Trivial | Site | Alex Willmer | Alex Willmer |
| [KNOX-981](https://issues.apache.org/jira/browse/KNOX-981) | Make Topology Instance Available in WebContext for Runtime Access |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-786](https://issues.apache.org/jira/browse/KNOX-786) | Spark Thriftserver UI support through Knox |  Major | Server | Jeffrey E  Rodriguez | Chandana Mirashi |
| [KNOX-973](https://issues.apache.org/jira/browse/KNOX-973) | Update Yarn UI services |  Major | Server | Jeffrey E  Rodriguez | Jeffrey E  Rodriguez |
| [KNOX-982](https://issues.apache.org/jira/browse/KNOX-982) | Datanode JMX REST  Knox service |  Major | . | Jeffrey E  Rodriguez | Jeffrey E  Rodriguez |
| [KNOX-974](https://issues.apache.org/jira/browse/KNOX-974) | Update HDFS UI services |  Major | . | Jeffrey E  Rodriguez | Jeffrey E  Rodriguez |
| [KNOX-975](https://issues.apache.org/jira/browse/KNOX-975) | Add NodeManager Service Definition |  Major | Server | Jeffrey E  Rodriguez | Jeffrey E  Rodriguez |
| [KNOX-626](https://issues.apache.org/jira/browse/KNOX-626) | NameNode UI through Knox has various tabs not working |  Major | Server | Sumit Gupta | Larry McCay |
| [KNOX-987](https://issues.apache.org/jira/browse/KNOX-987) | Missing Audit Entries from Various Auth/Fed Providers |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-986](https://issues.apache.org/jira/browse/KNOX-986) | JMX Metric Reporter and OutOfMemory Issues |  Major | Server | Larry McCay | Zsombor Gegesy |
| [KNOX-972](https://issues.apache.org/jira/browse/KNOX-972) | Update Hbase UI service |  Major | Server | Jeffrey E  Rodriguez | Jeffrey E  Rodriguez |
| [KNOX-979](https://issues.apache.org/jira/browse/KNOX-979) | Documentation for Atlas UI & Atlas Rest Api via Knox Proxy |  Major | . | Nixon Rodrigues | Nixon Rodrigues |
| [KNOX-994](https://issues.apache.org/jira/browse/KNOX-994) | Need to append an extra '/' after zeppelin's knox URL |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-995](https://issues.apache.org/jira/browse/KNOX-995) | KnoxSSO Form IDP Issue with Firefox |  Blocker | KnoxSSO | Larry McCay | Larry McCay |
| [KNOX-1026](https://issues.apache.org/jira/browse/KNOX-1026) | Document  Support for Apache Zeppelin |  Major | Site | Sandeep More | Sandeep More |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-952](https://issues.apache.org/jira/browse/KNOX-952) | Add common tests for the two JWT filters |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-956](https://issues.apache.org/jira/browse/KNOX-956) | Consolidate ldif files in gateway-tests |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-958](https://issues.apache.org/jira/browse/KNOX-958) | Consolidate test config/drivers |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-911](https://issues.apache.org/jira/browse/KNOX-911) | Ability to scope cookies to a given Path |  Major | . | Attila Kanto | Attila Kanto |
| [KNOX-940](https://issues.apache.org/jira/browse/KNOX-940) | Support REST access exposing metrics |  Major | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [KNOX-976](https://issues.apache.org/jira/browse/KNOX-976) | Add Jupyter Kernel Gateway Service Definitions |  Major | . | Jesus Alvarez | Jesus Alvarez |


