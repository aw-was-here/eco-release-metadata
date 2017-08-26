
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
# Apache Hive  2.3.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HIVE-13380](https://issues.apache.org/jira/browse/HIVE-13380) | *Major* | **Decimal should have lower precedence than double in type hierachy**

Hive now considers float & double higher in precedence than decimal.


---

* [HIVE-14200](https://issues.apache.org/jira/browse/HIVE-14200) | *Major* | **Tez: disable auto-reducer parallelism when reducer-count \* min.partition.factor \< 1.0**

 Tez: disable auto-reducer parallelism when reducer-count \* min.partition.factor \< 1.0 (Gopal V, reviewed by Gunther Hagleitner)


---

* [HIVE-14123](https://issues.apache.org/jira/browse/HIVE-14123) | *Minor* | **Add beeline configuration option to show database in the prompt**

New BeeLine Command option --showDbInPrompt to display the current database name in prompt


---

* [HIVE-14155](https://issues.apache.org/jira/browse/HIVE-14155) | *Major* | **Vectorization: Custom UDF Vectorization annotations are ignored**

Vectorization: Custom UDF Vectorization annotations are ignored (Gopal V, reviewed by Ashutosh Chauhan)


---

* [HIVE-14159](https://issues.apache.org/jira/browse/HIVE-14159) | *Major* | **sorting of tuple array using multiple field[s]**

**WARNING: No release note provided for this change.**


---

* [HIVE-14358](https://issues.apache.org/jira/browse/HIVE-14358) | *Major* | **Add metrics for number of queries executed for each execution engine (mr, spark, tez)**

Add metrics showing the number of queries ran for each execution engine.
New values can be found on the metrics dump page of the webUI under the following properties :
- hive\_mapred\_tasks
- hive\_spark\_tasks
- hive\_tez\_tasks


---

* [HIVE-14775](https://issues.apache.org/jira/browse/HIVE-14775) | *Major* | **Cleanup IOException usage in Metrics APIs**

Refactored the public metrics API. Calls capturing metrics should log warnings instead of throwing IOExceptions.


---

* [HIVE-14872](https://issues.apache.org/jira/browse/HIVE-14872) | *Major* | **Remove the configuration HIVE\_SUPPORT\_SQL11\_RESERVED\_KEYWORDS**

**WARNING: No release note provided for this change.**


---

* [HIVE-14950](https://issues.apache.org/jira/browse/HIVE-14950) | *Minor* | **Support integer data type**

**WARNING: No release note provided for this change.**


---

* [HIVE-15025](https://issues.apache.org/jira/browse/HIVE-15025) | *Major* | **Secure-Socket-Layer (SSL) support for HMS**

The patch adds the following properties to hive configuration. 
hive.metastore.use.SSL: to enable/disable SSL encryption for the communication between the client and HMS server.
The following properties are used when hive.metastore.use.SSL is set to true.
hive.metastore.keystore.path: the keystore file used by HMS server
hive.metastore.keystore.password: the keystore file password
hive.metastore.truststore.path: the truststore file used by HS2 server (acting as HMS client to connect to HMS server)
hive.metastore.truststore.password: the truststore file password 

SSL encryption is only used to encrypt the communication to HMS when no kerberos authentication is enabled for HMS. When SSL is enabled for HMS, HS2 (one of the HMS clients) uses hive.metastore.use.SSL flag to enable SSL on the client side. Other HMS clients are required to support SSL in non-kerberos mode in order to communicate with HMS.


---

* [HIVE-15520](https://issues.apache.org/jira/browse/HIVE-15520) | *Major* | **Improve the sum performance for Range based window**

This is to improve the performance of sum function over range based windowing. 

One issue related to sum(lag(x)) over (partition by c1 order by c2 range between ...)  and sum(lead(x)) over (partition by c1 order by c2 range between ...) has been fixed which would produce different result. Without the patch, lag(x)/lead(x) would only consider the previous/next row in the windowing, not within the partition, which doesn't match other databases, also doesn't match rows based windowing.


---

* [HIVE-15579](https://issues.apache.org/jira/browse/HIVE-15579) | *Major* | **Support HADOOP\_PROXY\_USER for secure impersonation in hive metastore client**

Using HADOOP\_PROXY\_USER a superuser can access hive through hive cli on behalf of another user.
To use this feature, export HADOOP\_PROXY\_USER with the user that has to be proxied and start hive cli.
The HADOOP\_PROXY\_USER variable can be set as part of system environmental variable or in system properties.


---

* [HIVE-14573](https://issues.apache.org/jira/browse/HIVE-14573) | *Major* | **Vectorization: Implement StringExpr::find()**

Vectorization: Implement StringExpr::find() (Teddy Choi, reviewed by Gopal V)


---

* [HIVE-14754](https://issues.apache.org/jira/browse/HIVE-14754) | *Major* | **Track the queries execution lifecycle times**

Five new metrics are being added to track the query execution in HiveServer2.
- hs2\_submitted\_queries - is showing the number of queries currently submitted to HS2 and being processed as well as the min/max/mean execution times for the last 1028 measurements.
- hs2\_compiling\_queries - is showing the number of queries currently in the compilation phase and the min/max/mean execution times for the last 1028 measurements.
- hs2\_executing\_queries - is showing the number of queries currently in the execution phase and the min/max/mean execution times for the last 1028 measurements.
- hs2\_failed\_queries - is showing the total number of failed queries, as well as the query failure rate exponentially weighted moving average for the last 1/5/15 minutes
- hs2\_suceeded\_queries - is showing the total number of successful queries, as well as the query success rate exponentially weighted moving average for the last 1/5/15 minutes


---

* [HIVE-15683](https://issues.apache.org/jira/browse/HIVE-15683) | *Major* | **Make what's done in HIVE-15580 for group by configurable**

Document the new configuration for 2.2.0.


---

* [HIVE-16182](https://issues.apache.org/jira/browse/HIVE-16182) | *Major* | **Semijoin: Avoid VectorHashKeyWrapper allocations for the bloom hash aggregate**

Semijoin: Avoid VectorHashKeyWrapper allocations for the bloom hash aggregate (Gopal V, reviewed by Sergey Shelukhin)


---

* [HIVE-15789](https://issues.apache.org/jira/browse/HIVE-15789) | *Major* | **Vectorization: limit reduce vectorization to 32Mb chunks**

Vectorization: limit reduce vectorization to 32Mb chunks (Teddy Choi, via Gopal V)


---

* [HIVE-12274](https://issues.apache.org/jira/browse/HIVE-12274) | *Major* | **Increase width of columns used for general configuration in the metastore.**

Increased width of metastore text columns for general configuration storage.


---

* [HIVE-15434](https://issues.apache.org/jira/browse/HIVE-15434) | *Major* | **Add UDF to allow interrogation of uniontype values**

Added UDF to allow interrogation of uniontype values.



