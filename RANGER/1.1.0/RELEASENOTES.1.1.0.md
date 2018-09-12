
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
# Apache Ranger  1.1.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [RANGER-1672](https://issues.apache.org/jira/browse/RANGER-1672) | *Major* | **Ranger supports plugin to enable, monitor and manage apache kylin**

Apache Kylin is an open source Distributed Analytics Engine designed to provide SQL interface and multi-dimensional analysis (OLAP) on Hadoop supporting extremely large datasets, original contributed from eBay Inc. Apache Kylin lets user query massive data set at sub-second latency in 3 steps.
1. Identify a Star Schema on Hadoop.
2. Build Cube from the identified tables.
3. Query with ANSI-SQL and get results in sub-second, via ODBC, JDBC or RESTful API.

We should support that using Ranger to control kylin's access rights for project and cube.
Specific implementation plan is as following:
On the ranger website, administrators can configure policies to control user access to projects and cube permissions.
Kylin provides an abstract class and authorization interfaces for use by the ranger plugin. kylin instantiates ranger plugin’s implementation class when starting(this class extends the abstract class provided by kylin).
Ranger plugin periodically polls ranger admin, updates the policy to the local, and updates project and cube access rights based on policy information.
In the Kylin side：
1. Kylin provides an abstract class that enables the ranger plugin's implementation class to extend.
2. Add configuration item. 1) ranger authorization switch, 2) ranger plugin implementation class's name.
3. Instantiate the ranger plugin implementation class when starting kylin.
4. kylin provides authorization interfaces for ranger plugin calls.
5. According to the ranger authorization configuration item, hide kylin's authorization management page.
6. Using ranger manager access rights of the kylin does not affect kylin's existing permissions functions and logic.
In the Ranger side：
1. Ranger plugin will periodically polls ranger admin, updates the policy to the local.
2. The ranger plugin invoking the authorization interfaces provided by kylin to updates the project and cube access rights based on the policy information.

reference link:https://issues.apache.org/jira/browse/KYLIN-2703


---

* [RANGER-1994](https://issues.apache.org/jira/browse/RANGER-1994) | *Major* | **Tomcat Security Vulnerability Alert. The version of the tomcat for ranger should upgrade to 7.0.85.**

[SECURITY] CVE-2018-1305 Security constraint annotations applied too late

CVE-2018-1305 Security constraint annotations applied too late

Severity: High 

Versions Affected: Apache Tomcat 9.0.0.M1 to 9.0.4 Apache Tomcat 8.5.0 to 8.5.27 Apache Tomcat 8.0.0.RC1 to 8.0.49 Apache Tomcat 7.0.0 to 7.0.84

Description: Security constraints defined by annotations of Servlets were only applied once a Servlet had been loaded. Because security constraints defined in this way apply to the URL pattern and any URLs below that point, it was possible - depending on the order Servlets were loaded - for some security constraints not to be applied. This could have exposed resources to users who were not authorised to access them.

Mitigation: Users of the affected versions should apply one of the following mitigations. Upgrade to: - Apache Tomcat 9.0.5 or later - Apache Tomcat 8.5.28 or later - Apache Tomcat 8.0.50 or later - Apache Tomcat 7.0.85 or later

References:https://lists.apache.org/thread.html/d3354bb0a4eda4acc0a66f3eb24a213fdb75d12c7d16060b23e65781@%3Cannounce.tomcat.apache.org%3E


---

* [RANGER-1808](https://issues.apache.org/jira/browse/RANGER-1808) | *Major* | **Write unit test for RANGER-1672**

Write unit test for RANGER-1672 kylin plugin


---

* [RANGER-2033](https://issues.apache.org/jira/browse/RANGER-2033) | *Major* | **Add hbase policy and click the 'Test Connection' button. Connection Failed.**

Clone the lastest code from https://git-wip-us.apache.org/repos/asf/ranger.git. Build the source and install Ranger. Then do as follows:
1. Add hbase policy;
2. Input right parameter;
3. Click the 'Test Connection' button.
The error information is as follows:
Unable to retrieve any files using given parameters, You can still save the repository and start creating policies, but you would not be able to use autocomplete for resource names. Check ranger\_admin.log for more info.

java.lang.NoClassDefFoundError: org/apache/hadoop/hbase/ZooKeeperConnectionException. 
org/apache/hadoop/hbase/ZooKeeperConnectionException. 
org.apache.hadoop.hbase.ZooKeeperConnectionException. 

The reason for the error is that the hbase-client-1.2.6.jar file loss under ./ews/webapp/WEB-INF/classes/ranger-plugins/hbase directory.


---

* [RANGER-1809](https://issues.apache.org/jira/browse/RANGER-1809) | *Major* | **Write install guide for RANGER-1672**

Write install guide for RANGER-1672



