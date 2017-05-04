
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
# Apache Hive  2.2.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HIVE-13380](https://issues.apache.org/jira/browse/HIVE-13380) | *Major* | **Decimal should have lower precedence than double in type hierachy**

Hive now considers float & double higher in precedence than decimal.


---

* [HIVE-14060](https://issues.apache.org/jira/browse/HIVE-14060) | *Major* | **Hive: Remove bogus "localhost" from Hive splits**

Hive: Remove bogus "localhost" from Hive splits


---

* [HIVE-14122](https://issues.apache.org/jira/browse/HIVE-14122) | *Critical* | **VectorMapOperator: Missing update to AbstractMapOperator::numRows**

VectorMapOperator: Missing update to AbstractMapOperator::numRows (Gopal V, reviewed by Sergey Shelukhin)


---

* [HIVE-14200](https://issues.apache.org/jira/browse/HIVE-14200) | *Major* | **Tez: disable auto-reducer parallelism when reducer-count \* min.partition.factor \< 1.0**

 Tez: disable auto-reducer parallelism when reducer-count \* min.partition.factor \< 1.0 (Gopal V, reviewed by Gunther Hagleitner)


---

* [HIVE-14267](https://issues.apache.org/jira/browse/HIVE-14267) | *Minor* | **HS2 open\_operations metrics not decremented when an operation gets timed out**

Committed to 2.2.0 and 2.1.1. Thanks Naveen for the patch.


---

* [HIVE-14123](https://issues.apache.org/jira/browse/HIVE-14123) | *Minor* | **Add beeline configuration option to show database in the prompt**

New BeeLine Command option --showDbInPrompt to display the current database name in prompt


---

* [HIVE-14349](https://issues.apache.org/jira/browse/HIVE-14349) | *Major* | **Vectorization: LIKE should anchor the regexes**

Vectorization: LIKE should anchor the regexes


---

* [HIVE-14434](https://issues.apache.org/jira/browse/HIVE-14434) | *Major* | **Vectorization: BytesBytes lookup capped count can be =0, =1, \>=2**

Vectorization: BytesBytes lookup capped count can be =0, =1, \>=2 (Gopal V, reviewed by Sergey Shelukhin)


---

* [HIVE-14436](https://issues.apache.org/jira/browse/HIVE-14436) | *Major* | **Hive 1.2.1/Hitting "ql.Driver: FAILED: IllegalArgumentException Error: , expected at the end of \'decimal(9\'" after enabling hive.optimize.skewjoin and with MR engine**

**WARNING: No release note provided for this change.**


---

* [HIVE-14435](https://issues.apache.org/jira/browse/HIVE-14435) | *Major* | **Vectorization: missed vectorization for const varchar()**

Vectorization: missed vectorization for const varchar()


---

* [HIVE-14437](https://issues.apache.org/jira/browse/HIVE-14437) | *Major* | **Vectorization: Optimize key misses in VectorMapJoinFastBytesHashTable**

 Vectorization: Optimize key misses in VectorMapJoinFastBytesHashTable (Gopal V, reviewed by Matt McCline)


---

* [HIVE-14155](https://issues.apache.org/jira/browse/HIVE-14155) | *Major* | **Vectorization: Custom UDF Vectorization annotations are ignored**

Vectorization: Custom UDF Vectorization annotations are ignored (Gopal V, reviewed by Ashutosh Chauhan)


---

* [HIVE-14648](https://issues.apache.org/jira/browse/HIVE-14648) | *Blocker* | **LLAP: Avoid private pages in the SSD cache**

 LLAP: Avoid private pages in the SSD cache (Gopal V, reviewed by Sergey Shelukhin)


---

* [HIVE-14418](https://issues.apache.org/jira/browse/HIVE-14418) | *Major* | **Hive config validation prevents unsetting the settings**

"-d" option has been added to Hive CLI "reset" command, allowing one to reset specific settings to built-in defaults, overriding any session-specific values, as well as configuration files in use. E.g. "reset -d hive.compute.splits.in.am hive.smbjoin.cache.rows".


---

* [HIVE-14618](https://issues.apache.org/jira/browse/HIVE-14618) | *Major* | **beeline fetch logging delays before query completion**

beeline fetch logging delays before query completion (Tao Li, via Gopal V)


---

* [HIVE-14159](https://issues.apache.org/jira/browse/HIVE-14159) | *Major* | **sorting of tuple array using multiple field[s]**

**WARNING: No release note provided for this change.**


---

* [HIVE-14251](https://issues.apache.org/jira/browse/HIVE-14251) | *Major* | **Union All of different types resolves to incorrect data**

With this change, Hive will only perform implicit conversion within each type groups including string group, number group or date group, not across groups. So in order to union a string type with a date type, a explicit cast from string to date or from date to string is needed.


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

* [HIVE-14837](https://issues.apache.org/jira/browse/HIVE-14837) | *Major* | **JDBC: standalone jar is missing hadoop core dependencies**

JDBC: standalone jar is missing hadoop core dependencies (Tao Li, via Gopal V)


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

* [HIVE-15123](https://issues.apache.org/jira/browse/HIVE-15123) | *Major* | **LLAP UI: The UI should work even if the cache is disabled**

LLAP UI: The UI should work even if the cache is disabled (Gopal V, reviewed by Siddharth Seth)


---

* [HIVE-15060](https://issues.apache.org/jira/browse/HIVE-15060) | *Major* | **Remove the autoCommit warning from beeline**

Beeline option for autoCommit has changed to true. 
To turn autoCommit to false (does not work with Hive), use beeline --autoCommit=false


---

* [HIVE-13931](https://issues.apache.org/jira/browse/HIVE-13931) | *Major* | **Add support for HikariCP  connection pooling**

This change adds support for hikaricp as connection pooling library. It can be set via datanucleus.connectionPoolingType in hive configuration.
The version of hikaricp being used requires java8 runtime or later and should be enabled only when appropriate version of runtime is in use.


---

* [HIVE-15125](https://issues.apache.org/jira/browse/HIVE-15125) | *Major* | **LLAP: Parallelize slider package generator**

 LLAP: Parallelize slider package generator (Gopal V, reviewed by Sergey Shelukhin)


---

* [HIVE-15196](https://issues.apache.org/jira/browse/HIVE-15196) | *Major* | **LLAP UI: HIVE-14984 broke LLAP UI**

LLAP UI: HIVE-14984 broke LLAP UI (Barna Zsombor Klara via Gopal V)


---

* [HIVE-15420](https://issues.apache.org/jira/browse/HIVE-15420) | *Major* | **LLAP UI: Relativize resources to allow proxied/secured views**

LLAP UI: Relativize resources to allow proxied/secured views (Gopal V, reviewed by Rajesh Balamohan)


---

* [HIVE-15331](https://issues.apache.org/jira/browse/HIVE-15331) | *Major* | **Decimal multiplication with high precision/scale often returns NULL**

The resulting precision/scale of decimal arithmetic has been changed in the case where the precision/scale exceeds the maximum precision of 38.

When reducing the precision/scale down to the Hive limit of 38, the new behavior is to reduce the scale to preserve the integer portion of the precision, while leaving a minimum of 6 digits for the scale.

The previous behavior was to always shrink the integer portion of the precision first before the scale.


---

* [HIVE-15520](https://issues.apache.org/jira/browse/HIVE-15520) | *Major* | **Improve the sum performance for Range based window**

This is to improve the performance of sum function over range based windowing. 

One issue related to sum(lag(x)) over (partition by c1 order by c2 range between ...)  and sum(lead(x)) over (partition by c1 order by c2 range between ...) has been fixed which would produce different result. Without the patch, lag(x)/lead(x) would only consider the previous/next row in the windowing, not within the partition, which doesn\'t match other databases, also doesn\'t match rows based windowing.


---

* [HIVE-15579](https://issues.apache.org/jira/browse/HIVE-15579) | *Major* | **Support HADOOP\_PROXY\_USER for secure impersonation in hive metastore client**

Using HADOOP\_PROXY\_USER a superuser can access hive through hive cli on behalf of another user.
To use this feature, export HADOOP\_PROXY\_USER with the user that has to be proxied and start hive cli.
The HADOOP\_PROXY\_USER variable can be set as part of system environmental variable or in system properties.


---

* [HIVE-15655](https://issues.apache.org/jira/browse/HIVE-15655) | *Major* | **Optimizer: Allow config option to disable n-way JOIN merging**

Optimizer: Allow config option to disable n-way JOIN merging (Gopal V, reviewed by Jesus Camacho Rodriguez)


---

* [HIVE-15723](https://issues.apache.org/jira/browse/HIVE-15723) | *Minor* | **Hive should report a warning about missing table/column statistics to user.**

hive.cbo.show.warnings (default false) is added to control display of cost-based-optimizer compiler warnings, like missing stats.


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

* [HIVE-15683](https://issues.apache.org/jira/browse/HIVE-15683) | *Major* | **Make what\'s done in HIVE-15580 for group by configurable**

Document the new configuration for 2.2.0.


---

* [HIVE-16050](https://issues.apache.org/jira/browse/HIVE-16050) | *Major* | **Regression: Union of null with non-null**

Regression: Union of null with non-null (Gopal V, reviewed by Sergey Shelukhin)


---

* [HIVE-16182](https://issues.apache.org/jira/browse/HIVE-16182) | *Major* | **Semijoin: Avoid VectorHashKeyWrapper allocations for the bloom hash aggregate**

Semijoin: Avoid VectorHashKeyWrapper allocations for the bloom hash aggregate (Gopal V, reviewed by Sergey Shelukhin)


---

* [HIVE-15789](https://issues.apache.org/jira/browse/HIVE-15789) | *Major* | **Vectorization: limit reduce vectorization to 32Mb chunks**

Vectorization: limit reduce vectorization to 32Mb chunks (Teddy Choi, via Gopal V)



