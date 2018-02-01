
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

## Release 0.12.0 - Unreleased (as of 2018-02-01)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-850](https://issues.apache.org/jira/browse/KNOX-850) | KnoxToken API for Acquiring a Knox Access Token |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-848](https://issues.apache.org/jira/browse/KNOX-848) | Support for Gremlin Server REST |  Major | . | Shi Wang | Shi Wang |
| [KNOX-841](https://issues.apache.org/jira/browse/KNOX-841) | Proxy support for Solr UI |  Major | Server | Richard Ding | Richard Ding |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-813](https://issues.apache.org/jira/browse/KNOX-813) | Add rename in HDFS for ClientDSL |  Trivial | ClientDSL | Khanh Maudoux | Vincent Devillers |
| [KNOX-810](https://issues.apache.org/jira/browse/KNOX-810) | Add exists in HDFS for ClientDSL |  Minor | ClientDSL | Vincent Devillers | Vincent Devillers |
| [KNOX-809](https://issues.apache.org/jira/browse/KNOX-809) | Add copyFromLocal along with the put in HDFS for ClientDSL |  Minor | ClientDSL | Vincent Devillers | Vincent Devillers |
| [KNOX-710](https://issues.apache.org/jira/browse/KNOX-710) | Support Zeppelin UI through Knox |  Major | Server | Jeffrey E  Rodriguez | Prabhjyot Singh |
| [KNOX-806](https://issues.apache.org/jira/browse/KNOX-806) | Implement Closeable for deallocable resources |  Minor | ClientDSL | Vincent Devillers | Vincent Devillers |
| [KNOX-858](https://issues.apache.org/jira/browse/KNOX-858) | Simplify Hamcrest dependencies |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-828](https://issues.apache.org/jira/browse/KNOX-828) | Add truncate feature for HBase table in client |  Minor | ClientDSL | Vincent Devillers | Vincent Devillers |
| [KNOX-854](https://issues.apache.org/jira/browse/KNOX-854) | Consolidate DocumentBuilderFactory calls + enable SECURE\_PROCESSING |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-838](https://issues.apache.org/jira/browse/KNOX-838) | Admin UI Titles Change |  Trivial | AdminUI | Larry McCay | Sumit Gupta |
| [KNOX-864](https://issues.apache.org/jira/browse/KNOX-864) | Knox init scripts are not Upstart compatible |  Major | Server | Attila Kanto |  |
| [KNOX-867](https://issues.apache.org/jira/browse/KNOX-867) | Fix FindBugs "bad practice" issues |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-861](https://issues.apache.org/jira/browse/KNOX-861) | Support pluggable validator for Header pre authentication  provider |  Major | Server | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [KNOX-871](https://issues.apache.org/jira/browse/KNOX-871) | Fix FindBugs "Malicious code vulnerability" issues |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-865](https://issues.apache.org/jira/browse/KNOX-865) | Add a release module for KnoxShell |  Major | . | Sumit Gupta | Sumit Gupta |
| [KNOX-863](https://issues.apache.org/jira/browse/KNOX-863) | Consolidate TransformerFactory calls + enable SECURE\_PROCESSING |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-869](https://issues.apache.org/jira/browse/KNOX-869) | Support multiple preauth Validators |  Major | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [KNOX-868](https://issues.apache.org/jira/browse/KNOX-868) | Allow native library auto included through java.library.path property |  Major | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [KNOX-883](https://issues.apache.org/jira/browse/KNOX-883) | Fix FindBugs "Correctness" issues |  Trivial | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-876](https://issues.apache.org/jira/browse/KNOX-876) | Fix FindBugs "Experimental" issues |  Major | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [KNOX-839](https://issues.apache.org/jira/browse/KNOX-839) | Add Admin UI development documentation |  Major | . | Sumit Gupta | Sumit Gupta |
| [KNOX-891](https://issues.apache.org/jira/browse/KNOX-891) | Add Sqoop DSL Documentation to User Guide |  Major | . | Kevin Risden |  |
| [KNOX-703](https://issues.apache.org/jira/browse/KNOX-703) | Documentation Tasks |  Major | Site | Larry McCay | Larry McCay |
| [KNOX-902](https://issues.apache.org/jira/browse/KNOX-902) | SSO topology name is hardcoded in knoxauth.js |  Major | . | Attila Kanto |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-802](https://issues.apache.org/jira/browse/KNOX-802) | Inconsistent gateway.xml deployment descriptors when topology contains application |  Major | . | Sumit Gupta |  |
| [KNOX-805](https://issues.apache.org/jira/browse/KNOX-805) | Allow defining a custom HttpClient when creating a new session |  Major | ClientDSL | Vincent Devillers | Vincent Devillers |
| [KNOX-855](https://issues.apache.org/jira/browse/KNOX-855) | Add "application/x-javascript" mime type to the list of compressed resources |  Major | Server | Sandeep More | Sandeep More |
| [KNOX-859](https://issues.apache.org/jira/browse/KNOX-859) | Knox shows a blank page when opening Zeppelin |  Major | Server | Prabhjyot Singh | Prabhjyot Singh |
| [KNOX-856](https://issues.apache.org/jira/browse/KNOX-856) | Document gzip compression options |  Minor | Site | Sandeep More | Sandeep More |
| [KNOX-820](https://issues.apache.org/jira/browse/KNOX-820) | Knox query processing: If the originalUrl value has "ampersand"(&) in it, the value after ampersand is ignored. |  Major | Server | Larry McCay | Sumit Gupta |
| [KNOX-769](https://issues.apache.org/jira/browse/KNOX-769) | SecureClusterTest fails for Java 1.7 |  Major | Tests | Sandeep More | Sandeep More |
| [KNOX-873](https://issues.apache.org/jira/browse/KNOX-873) | JWTFederationFilter must Validate Expected Audiences |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-807](https://issues.apache.org/jira/browse/KNOX-807) | Missing resource deallocation |  Major | ClientDSL | Vincent Devillers | Vincent Devillers |
| [KNOX-877](https://issues.apache.org/jira/browse/KNOX-877) | Coverity Scan Cleanup |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-880](https://issues.apache.org/jira/browse/KNOX-880) | Knox-site: Add a new book for 0.12 |  Minor | Site | Sandeep More | Sandeep More |
| [KNOX-881](https://issues.apache.org/jira/browse/KNOX-881) | Add KnoxSh init, list and destroy to knoxshell.sh |  Major | ClientDSL | Larry McCay | Larry McCay |
| [KNOX-866](https://issues.apache.org/jira/browse/KNOX-866) | Knox CLI topology validation unsuccessful |  Minor | KnoxCLI | Richard Ding | Richard Ding |
| [KNOX-875](https://issues.apache.org/jira/browse/KNOX-875) | topology schema file (topology-v1.xsd)  is missing "version" element definition. |  Minor | Server | Jeffrey E  Rodriguez | Jeffrey E  Rodriguez |
| [KNOX-874](https://issues.apache.org/jira/browse/KNOX-874) | Update hadoop dependency in root pom |  Major | Build | Sumit Gupta | Sumit Gupta |
| [KNOX-879](https://issues.apache.org/jira/browse/KNOX-879) | Error in knox query processing when original url contains a parameter with value containing "=" |  Major | Server | Sharmadha Sainath | Sandeep More |
| [KNOX-730](https://issues.apache.org/jira/browse/KNOX-730) | pac4jRequestedUrl = null after saml2 assertion is parsed |  Major | Server | jeff |  |
| [KNOX-886](https://issues.apache.org/jira/browse/KNOX-886) | Documenting the multiple preauth validators feature |  Major | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [KNOX-845](https://issues.apache.org/jira/browse/KNOX-845) | Add some tests for the Shell scripts |  Major | ClientDSL | Sumit Gupta | Sumit Gupta |
| [KNOX-890](https://issues.apache.org/jira/browse/KNOX-890) | Make IdleTimeout Configurable in Knox Gateway Server |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-896](https://issues.apache.org/jira/browse/KNOX-896) | Documentation has wrong JRE requirements |  Major | . | Allen Wittenauer | Larry McCay |
| [KNOX-719](https://issues.apache.org/jira/browse/KNOX-719) | Knox support for Yarn Resource Manager HA |  Major | . | Jeffrey E  Rodriguez | Jeffrey E  Rodriguez |
| [KNOX-900](https://issues.apache.org/jira/browse/KNOX-900) | UnitTest WebsocketMultipleConnectionTest intermittantly fails with NPE |  Major | Tests | Sandeep More | Sandeep More |
| [KNOX-903](https://issues.apache.org/jira/browse/KNOX-903) | KnoxShell allows self signed certs to be used without any checks |  Critical | KnoxShell | Sumit Gupta | Larry McCay |
| [KNOX-904](https://issues.apache.org/jira/browse/KNOX-904) | 4.5.2 httpclient dependency re-introduced |  Major | . | Sumit Gupta | Sumit Gupta |
| [KNOX-897](https://issues.apache.org/jira/browse/KNOX-897) | X-Forwarded-Port is incorrectly determined |  Major | . | Attila Kanto |  |
| [KNOX-906](https://issues.apache.org/jira/browse/KNOX-906) | Log WARN of Removed Impersonation Params |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-907](https://issues.apache.org/jira/browse/KNOX-907) | Knox Proxy - Ambari HIVE2.0 view doesn't showup due to Servicecheck issues |  Critical | Server | SuryaKranthi Koneru | Larry McCay |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-853](https://issues.apache.org/jira/browse/KNOX-853) | JWTFederationToken to be Refactored to Comply with KnoxToken Use |  Major | Server | Larry McCay | Larry McCay |
| [KNOX-852](https://issues.apache.org/jira/browse/KNOX-852) | Knox CLI Command for Knox Login |  Major | KnoxCLI | Larry McCay | Larry McCay |
| [KNOX-851](https://issues.apache.org/jira/browse/KNOX-851) | KnoxShell Credential Collector for Knox Login |  Major | ClientDSL | Larry McCay | Larry McCay |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KNOX-846](https://issues.apache.org/jira/browse/KNOX-846) | Add documentation to user manual for Avatica |  Minor | . | Josh Elser | Josh Elser |
| [KNOX-870](https://issues.apache.org/jira/browse/KNOX-870) | Documentation: how to support custom pre-auth validator |  Major | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |


