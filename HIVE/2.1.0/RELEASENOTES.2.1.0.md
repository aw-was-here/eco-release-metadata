
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
# Apache Hive  2.1.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HIVE-12568](https://issues.apache.org/jira/browse/HIVE-12568) | *Major* | **Provide an option to specify network interface used by Spark remote client [Spark Branch]**

Introduced configuration: hive.spark.client.rpc.server.address


---

* [HIVE-12635](https://issues.apache.org/jira/browse/HIVE-12635) | *Major* | **Hive should return the latest hbase cell timestamp as the row timestamp value**

After this change, the timestamp of the row will be the latest timestamp of all the cells in hbase for that row, instead of the timestamp of the first cell.


---

* [HIVE-12958](https://issues.apache.org/jira/browse/HIVE-12958) | *Major* | **Make embedded Jetty server more configurable**

A new property 'templeton.jetty.configuration' can be set pointing to an XML file in webhcat configuration file to enable the embedded Jetty configuration from such file.

   \<property\>
     \<name\>templeton.jetty.configuration\</name\>
     \<value\>\</value\>
     \<description\>The embedded jetty configuration file.\</description\>
   \</property\>

We can follow https://wiki.eclipse.org/Jetty/Tutorial/Embedding\_Jetty#Configuring\_a\_File\_Server\_with\_XML to make the xml configuration file to update the settings.

Here is an example:

\<?xml version="1.0"?\>
\<!DOCTYPE Configure PUBLIC "-//Jetty//Configure//EN" "http://www.eclipse.org/jetty/configure.dtd"\>

\<Configure id="FileServer" class="org.eclipse.jetty.server.Server"\>
    \<Call name="addConnector"\>
      \<Arg\>
          \<New class="org.eclipse.jetty.server.nio.SelectChannelConnector"\>
            \<Set name="port"\>9999\</Set\>
            \<Set name="requestHeaderSize"\>65535\</Set\>
          \</New\>
      \</Arg\>
    \</Call\>
\</Configure\>


---

* [HIVE-12998](https://issues.apache.org/jira/browse/HIVE-12998) | *Major* | **ORC FileDump.printJsonData() does not close RecordReader**

ORC FileDump.printJsonData() does not close RecordReader (Jason Dere, via Gopal V)


---

* [HIVE-12967](https://issues.apache.org/jira/browse/HIVE-12967) | *Major* | **Change LlapServiceDriver to read a properties file instead of llap-daemon-site**

HIVE-12967: Change LlapServiceDriver to read a properties file instead of llap-daemon-site (Siddarth Seth, via Gopal V)


---

* [HIVE-11526](https://issues.apache.org/jira/browse/HIVE-11526) | *Major* | **LLAP: implement LLAP UI as a separate service - part 1**

LLAP: implement LLAP UI as a separate service - part 1 (Yuya OZAWA, reviewed by Gopal V)


---

* [HIVE-13021](https://issues.apache.org/jira/browse/HIVE-13021) | *Critical* | **GenericUDAFEvaluator.isEstimable(agg) always returns false**

GenericUDAFEvaluator.isEstimable(agg) always returns false (Gopal V, reviewed by Prasanth Jayachandran)


---

* [HIVE-12942](https://issues.apache.org/jira/browse/HIVE-12942) | *Major* | **Remove Yarn WebApps from LLAP daemon instance**

HIVE-12942: Remove Yarn WebApps from LLAP daemon instance


---

* [HIVE-13044](https://issues.apache.org/jira/browse/HIVE-13044) | *Major* | **Enable TLS encryption to HMS backend database**

HIVE-13044 (Enable TLS encryption to HMS backend database) adds a new hive-site.xml propertity hive.metastore.dbaccess.ssl.properties which simplifies the SSL configuration on the HMS side. SSL client configuration can be setup by configuring two hive-site.xml properties javax.jdo.option.ConnectionURL and hive.metastore.dbaccess.ssl.properties. 

javax.jdo.option.ConnectionURL specifies the connection string for HMS to connect to the database. To enable SSL, the client SSL flag(s) or certain protocol need to add to the connection string. 

hive.metastore.dbaccess.ssl.properties When SSL is enabled in the connection string, some SSL properties such as key store location or key store password, need to pass in as the system properties. This configuration allows the user to pass in the list of the necessary SSL properties depending on how the database is configured to secure the connection. e.g., if mutual authentication is needed between the client (HMS) and the server  (database), javax.net.ssl.keyStore needs to be specified to authenticate the client against the server as well as javax.net.ssl.trustStore to authenticate the server against the client.


---

* [HIVE-13110](https://issues.apache.org/jira/browse/HIVE-13110) | *Major* | **LLAP: Package log4j2 jars into Slider pkg**

 LLAP: Package log4j2 jars into Slider pkg (Gopal V, reviewed by Gunther Hagleitner)


---

* [HIVE-13135](https://issues.apache.org/jira/browse/HIVE-13135) | *Major* | **LLAP: HTTPS Webservices needs trusted keystore configs**

LLAP: HTTPS Webservices needs trusted keystore configs


---

* [HIVE-13134](https://issues.apache.org/jira/browse/HIVE-13134) | *Major* | **JDBC: JDBC Standalone should not be in the lib dir by default**

JDBC: JDBC Standalone should not be in the lib dir by default


---

* [HIVE-13034](https://issues.apache.org/jira/browse/HIVE-13034) | *Major* | **Add jdeb plugin to build debian**

Add jdeb plugin to build debian


---

* [HIVE-13108](https://issues.apache.org/jira/browse/HIVE-13108) | *Major* | **Operators: SORT BY randomness is not safe with network partitions**

Operators: SORT BY randomness is not safe with network partitions (Gopal V, reviewed by Sergey Shelukhin)


---

* [HIVE-13204](https://issues.apache.org/jira/browse/HIVE-13204) | *Major* | **Vectorization: Add ChainedCheckerFactory for LIKE**

Vectorization: Add ChainedCheckerFactory for LIKE (Gopal V, reviewed by Sergey Shelukhin)


---

* [HIVE-12481](https://issues.apache.org/jira/browse/HIVE-12481) | *Major* | **Occasionally "Request is a replay" will be thrown from HS2**

Added a new JDBC connection property "retries" so if any transport connection fails, JDBC client will retry for the times specified by this parameter.


---

* [HIVE-13234](https://issues.apache.org/jira/browse/HIVE-13234) | *Major* | **Remove dead ODBC driver from Hive**

 Remove dead ODBC driver from Hive (Gopal V, reviewed by Thejas Nair)


---

* [HIVE-13107](https://issues.apache.org/jira/browse/HIVE-13107) | *Trivial* | **LLAP: Rotate GC logs periodically to prevent full disks**

LLAP: Rotate GC logs periodically to prevent full disks (Gopal V, reviewed by Prasanth Jayachandran)


---

* [HIVE-13322](https://issues.apache.org/jira/browse/HIVE-13322) | *Minor* | **LLAP: ZK registry throws at shutdown due to slf4j trying to initialize a log4j logger**

LLAP: ZK registry throws at shutdown due to slf4j trying to initialize a log4j logger (Gopal V, reviewed by Prasanth Jayachandran)


---

* [HIVE-13307](https://issues.apache.org/jira/browse/HIVE-13307) | *Major* | **LLAP: Slider package should contain permanent functions**

 LLAP: Slider package should contain permanent functions (Gopal V, reviewed by Sergey Shelukhin)


---

* [HIVE-12653](https://issues.apache.org/jira/browse/HIVE-12653) | *Major* | **The property  "serialization.encoding" in the class "org.apache.hadoop.hive.contrib.serde2.MultiDelimitSerDe" does not work**

add 'serialization.encoding' and suport GBK charset for the class 'org.apache.hadoop.hive.contrib.serde2.MultiDelimitSerDe' ,please test it.


---

* [HIVE-6535](https://issues.apache.org/jira/browse/HIVE-6535) | *Major* | **JDBC: provide an async API to execute query and fetch results**

Starts the query execution asynchronously on the server, and immediately returns to the client. The client subsequently blocks on ResultSet#next or Statement#getUpdateCount, depending on the query type. Users should call ResultSet.next or Statement#getUpdateCount (depending on whether query returns results) to ensure that query completes successfully. Calling another execute method, or close before query completion would result in the async query getting killed if it is not already finished.
Note: This method is an API for limited usage outside of Hive by applications like Apache Ambari, although it is not part of the interface java.sql.Statement.


---

* [HIVE-13442](https://issues.apache.org/jira/browse/HIVE-13442) | *Major* | **LLAP: refactor submit API to be amenable to signing**

**WARNING: No release note provided for this change.**


---

* [HIVE-13670](https://issues.apache.org/jira/browse/HIVE-13670) | *Major* | **Improve Beeline connect/reconnect semantics**

Couple of usability changes to beeline:

a) reconnect semantics: !reconnect will re-connect using the same last used connect url after doing a !close. In addition, if you do a !save after connecting, then that url is recoreded in beeline.properties, and can be referred to in any future session, simply by running !reconnect in the beeline shell, or by running beeline as beeline -r.

b) named connect strings using env variables : Now, !connect as well as beeline -u can take non-url parameters which are assumed to be the name of a cluster/etc, as follows. If there is a env variable called BEELINE\_URL\_BLUE=\<jdbc url\>, then specifying "!connect blue" or "beeline -u blue" will pick that up and use that appropriate jdbc url. A suggested use for cluster admins will probably be to define something like a BEELINE\_URL\_DEFAULT and recommend that users use a "beeline -u default"


---

* [HIVE-13029](https://issues.apache.org/jira/browse/HIVE-13029) | *Critical* | **NVDIMM support for LLAP Cache**

NVDIMM support for LLAP cache


---

* [HIVE-13267](https://issues.apache.org/jira/browse/HIVE-13267) | *Major* | **Vectorization: Add SelectLikeStringColScalar for non-filter operations**

Vectorization: Add SelectLikeStringColScalar for non-filter operations (Gopal V, reviewed by Matt McCline)


---

* [HIVE-13840](https://issues.apache.org/jira/browse/HIVE-13840) | *Critical* | **Orc split generation is reading file footers twice**

Fix for ORC split generation reading file footers twice. Also reduces number of file system calls during ORC split generation.


---

* [HIVE-13876](https://issues.apache.org/jira/browse/HIVE-13876) | *Critical* | **Vectorization: Port HIVE-11544 to LazySimpleDeserializeRead**

Vectorization: Port HIVE-11544 to LazySimpleDeserializeRead (Gopal V, reviewed by Sergey Shelukhin)


---

* [HIVE-13248](https://issues.apache.org/jira/browse/HIVE-13248) | *Major* | **Change date\_add/date\_sub/to\_date functions to return Date type rather than String**

The return type of the DATE\_ADD/DATE\_SUB/TO\_DATE functions has been changed from string to date.


---

* [HIVE-13853](https://issues.apache.org/jira/browse/HIVE-13853) | *Major* | **Add X-XSRF-Header filter to HS2 HTTP mode and WebHCat**

Adds two new configuration parameters, one to hive-site.xml for HiveServer2, and one to WebHCat to webhcat-site.xml.

a) First, the HiveServer2 one: hive.server2.xsrf.filter.enabled - if set, will require that all requests to HS2 over http mode have an extra http header "X-XSRF-Header", without which HS2 will deny requests.

b) Similarly, for webhcat: templeton.xsrf.filter.enabled - does the same for WebHCat.

Both these flags are false by default right now (which is why this patch is backward compatible, but we would want to flip that at some time in the future)



