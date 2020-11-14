
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
# Apache Ranger  2.0.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [RANGER-2213](https://issues.apache.org/jira/browse/RANGER-2213) | *Major* | **Tomcat Security Vulnerability Alert. The version of the tomcat for ranger should upgrade to 7.0.90.**

[SECURITY] CVE-2018-1336
Severity: High 
Versions Affected: Apache Tomcat 9.0.0.M9 to 9.0.7, 8.5.0 to 8.5.30, 8.0.0.RC1 to 8.0.51, and 7.0.28 to 7.0.86.
Description: An improper handing of overflow in the UTF-8 decoder with supplementary characters can lead to an infinite loop in the decoder causing a Denial of Service. 

CVE-2018-8014
Description: The defaults settings for the CORS filter provided in Apache Tomcat 9.0.0.M1 to 9.0.8, 8.5.0 to 8.5.31, 8.0.0.RC1 to 8.0.52, 7.0.41 to 7.0.88 are insecure and enable 'supportsCredentials' for all origins. It is expected that users of the CORS filter will have configured it appropriately for their environment rather than using it in the default configuration. Therefore, it is expected that most users will not be impacted by this issue.

CVE-2018-8034
Description: The host name verification when using TLS with the WebSocket client was missing. It is now enabled by default. 
Versions Affected: Apache Tomcat 9.0.0.M1 to 9.0.9, 8.5.0 to 8.5.31, 8.0.0.RC1 to 8.0.52, and 7.0.35 to 7.0.88.


---

* [RANGER-2277](https://issues.apache.org/jira/browse/RANGER-2277) | *Major* | **Kylin repository config missing "Common Name for Certificate"**

Currently there is no field for specifying "Common Name for Certificate" in Kylin repository configuration. To get SSL setup between ranger admin and Kylin plugin working, this field should be added to the repo config.


---

* [RANGER-2288](https://issues.apache.org/jira/browse/RANGER-2288) | *Major* | **Sqoop repository config missing "Common Name for Certificate"**

Currently there is no field for specifying "Common Name for Certificate" in Sqoop repository configuration. To get SSL setup between ranger admin and Sqoop plugin working, this field should be added to the repo config.


---

* [RANGER-2244](https://issues.apache.org/jira/browse/RANGER-2244) | *Major* | **Tomcat Security Vulnerability Alert. The version of the tomcat for ranger should upgrade to 7.0.91 or later.**

h2. [SECURITY] CVE-2018-11784 Apache Tomcat - Open Redirect

CVE-2018-11784 Apache Tomcat - Open Redirect

Severity: Moderate

Vendor: The Apache Software Foundation

Versions Affected:
Apache Tomcat 9.0.0.M1 to 9.0.11
Apache Tomcat 8.5.0 to 8.5.33
Apache Tomcat 7.0.23 to 7.0.90
The unsupported 8.0.x release line has not been analysed but is likely
to be affected.

Description:
When the default servlet returned a redirect to a directory (e.g.
redirecting to '/foo/' when the user requested '/foo') a specially
crafted URL could be used to cause the redirect to be generated to any
URI of the attackers choice.

Mitigation:
Users of the affected versions should apply one of the following
mitigations:

\* Upgrade to Apache Tomcat 9.0.12 or later.
\* Upgrade to Apache Tomcat 8.5.34 or later.
\* Upgrade to Apache Tomcat 7.0.91 or later.
\* Use mapperDirectoryRedirectEnabled="true" and
  mapperContextRootRedirectEnabled="true" on the Context to ensure that
  redirects are issued by the Mapper rather than the default Servlet.
  See the Context configuration documentation for further important
  details.

Credit:
This vulnerability was found by Sergey Bobrov and reported responsibly
to the Apache Tomcat Security Team.

History:
2018-10-03 Original advisory

References:
[1] http://tomcat.apache.org/security-9.html
[2] http://tomcat.apache.org/security-8.html
[3] http://tomcat.apache.org/security-7.html


---

* [RANGER-2303](https://issues.apache.org/jira/browse/RANGER-2303) | *Major* | **Add kylin-plugin infomation to README.txt**

As kylin plugin has been submitted and merged into to Ranger,
we should add kylin-plugin infomation to README.txt.
Related Issue:
RANGER-1672 Ranger supports plugin to enable, monitor and manage apache kylin


---

* [RANGER-2170](https://issues.apache.org/jira/browse/RANGER-2170) | *Major* | **Ranger supports plugin to enable, monitor and manage Elasticsearch**

Elasticsearch is a distributed, RESTful search and analytics engine capable of solving a growing number of use cases. 
Like Apache Solr, it is also an index server based on Lucence.
Ranger supports plugin to enable, monitor and manage Elasticsearch,
to control index security of Elasticsearch.

As there is X-Pack plugin for the Elasticsearch, but it is not free.
X-Pack is an Elastic Stack extension that bundles security, alerting, monitoring, reporting, 
and graph capabilities into one easy-to-install package.
We refer to the Indices Privileges design of X-Pack,
by keeping the permissions consistent,
to make user use ranger Elasticsearch plugin easily.
Reference X-Pack Indices Privileges:
https://www.elastic.co/guide/en/x-pack/current/security-privileges.html

Here we develop Ranger Elasticsearch plugin, based on Elasticsearch version 6.2.2.
Elasticsearch 6.2.2 was released in February 20, 2018, reference release-notes:
https://www.elastic.co/guide/en/elasticsearch/reference/6.2/release-notes-6.2.2.html
Not like other system, Elasticsearch has no basic authentication, 
it uses X-pack plugin to support basic authentication, 
role-based access control, SSL/TLS encryption, LDAP and so on.
Not like X-pack, our Ranger Elasticsearch plugin is designed to do authorization,
it is to control index of Elasticsearch without authentication,
this plugin should work with other Elasticsearch plugin to authenticate users.


---

* [RANGER-2175](https://issues.apache.org/jira/browse/RANGER-2175) | *Major* | **Write install guide for Ranger Elasticsearch plugin RANGER-2170**

Write install guide for Ranger Elasticsearch plugin RANGER-2170


---

* [RANGER-2317](https://issues.apache.org/jira/browse/RANGER-2317) | *Major* | **Enable compilation on JDK11**

Currently, Ranger can be compiled only with JDK 8, however JDK 11 is the current LTS release for Java, it is essential to support it. As a first step, we need to ensure that Ranger can be compiled on JDK 11.


---

* [RANGER-2421](https://issues.apache.org/jira/browse/RANGER-2421) | *Major* | **Solr audit fails in Atlas plugin**

Due to http client version difference, and the lack of httpclient-4.5.3.jar inside the ranger-atlas-plugin/lib/ranger-atlas-plugin-impl/ folder, the following exception can be seen:
{code}
ava.lang.NoSuchMethodError: org.apache.http.impl.client.HttpClientBuilder.evictIdleConnections(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/impl/client/HttpClientBuilder;
        at org.apache.solr.client.solrj.impl.HttpClientUtil.createClient(HttpClientUtil.java:311)
        at org.apache.solr.client.solrj.impl.HttpClientUtil.createClient(HttpClientUtil.java:330)
        at org.apache.solr.client.solrj.impl.HttpClientUtil.createClient(HttpClientUtil.java:268)
        at org.apache.solr.client.solrj.impl.HttpClientUtil.createClient(HttpClientUtil.java:255)
        at org.apache.solr.client.solrj.impl.CloudSolrClient.\<init\>(CloudSolrClient.java:280)
        at org.apache.solr.client.solrj.impl.CloudSolrClient$Builder.build(CloudSolrClient.java:1600)
        at org.apache.ranger.audit.destination.SolrAuditDestination$1.run(SolrAuditDestination.java:126)
        at org.apache.ranger.audit.destination.SolrAuditDestination$1.run(SolrAuditDestination.java:123)
        at java.security.AccessController.doPrivileged(Native Method)
        at javax.security.auth.Subject.doAs(Subject.java:422)
        at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1730)
        at org.apache.ranger.audit.provider.MiscUtil.executePrivilegedAction(MiscUtil.java:516)
        at org.apache.ranger.audit.destination.SolrAuditDestination.connect(SolrAuditDestination.java:123)
        at org.apache.ranger.audit.destination.SolrAuditDestination.init(SolrAuditDestination.java:72)
        at org.apache.ranger.audit.provider.AuditProviderFactory.init(AuditProviderFactory.java:179)
        at org.apache.ranger.plugin.service.RangerBasePlugin.init(RangerBasePlugin.java:217)
{code}

Atlas has a httpclient-4.4.x, which lacks the needed method.



