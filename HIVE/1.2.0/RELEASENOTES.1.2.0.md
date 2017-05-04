
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
# Apache Hive  1.2.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HIVE-7998](https://issues.apache.org/jira/browse/HIVE-7998) | *Trivial* | **Enhance JDBC Driver to not require class specification**

Applications no longer need to explicitly load JDBC drivers using Class.forName()


---

* [HIVE-7175](https://issues.apache.org/jira/browse/HIVE-7175) | *Major* | **Provide password file option to beeline**

Added an --password-file (or, -w) option to BeeLine CLI, to read a password from a permission-protected file instead of supplying it in plaintext form as part of the command (-p).


---

* [HIVE-9143](https://issues.apache.org/jira/browse/HIVE-9143) | *Minor* | **select user(), current\_user()**

Adds a UDF current\_user that returns current user name
Example -
{code}
hive\> select current\_user();
OK
thejas
Time taken: 1.786 seconds, Fetched: 1 row(s)
{code}


---

* [HIVE-9188](https://issues.apache.org/jira/browse/HIVE-9188) | *Major* | **BloomFilter support in ORC**

Support for Bloom Filters in ORC internal index.


---

* [HIVE-2573](https://issues.apache.org/jira/browse/HIVE-2573) | *Minor* | **Create per-session function registry**

Marked as incompatible because of a bug - 

This patch broke automatic loading of externally added permanent functions in HiveServer2. This only affects multi-HS2 setup, where only one HS2 adds the function; or functions added from Hive CLI bypassing HS2. In such cases, HS2 will not be able to run a query with the new function.

Additionally, RELOAD FUNCTION call has been broken by this patch.
Workaround: 
The HS2s that don't have the function need to be restarted.


---

* [HIVE-9667](https://issues.apache.org/jira/browse/HIVE-9667) | *Minor* | **Disable ORC bloom filters for ORC v11 output-format**

Disable ORC bloom filters for ORC v11 writer impl


---

* [HIVE-9619](https://issues.apache.org/jira/browse/HIVE-9619) | *Minor* | **Uninitialized read of numBitVectors in NumDistinctValueEstimator**

Uninitialized read of numBitVectors in NumDistinctValueEstimator


---

* [HIVE-9848](https://issues.apache.org/jira/browse/HIVE-9848) | *Trivial* | **readlink -f is GNU coreutils only (used in bin/hive)**

Prevent GNU style readlink -f from being invoked unnecessarily


---

* [HIVE-9788](https://issues.apache.org/jira/browse/HIVE-9788) | *Major* | **Make double quote optional in tsv/csv/dsv output**

beeline --disableQuotingForSV=true --verbose=true -u jdbc:hive2://localhost:10000
issuing: !connect jdbc:hive2://localhost:10000 '' '' 
Connecting to jdbc:hive2://localhost:10000
Connected to: Apache Hive (version 1.2.0-SNAPSHOT)
Driver: Hive JDBC (version 1.2.0-SNAPSHOT)
Transaction isolation: TRANSACTION\_REPEATABLE\_READ
Beeline version 1.2.0-SNAPSHOT by Apache Hive
0: jdbc:hive2://localhost:10000\> !outputformat csv2
0: jdbc:hive2://localhost:10000\> select \* from test;
Getting log thread is interrupted, since query is done!
test.a,test.b
28,"aa"
37,a"b
2 rows selected (1.421 seconds)


---

* [HIVE-9302](https://issues.apache.org/jira/browse/HIVE-9302) | *Major* | **Beeline add commands to register local jdbc driver names and jars**

Add one new command for beeline: addlocaljar. With this command, users are able to add local jdbc driver jar file in the beeline side. 

There are two kinds of use cases. One is to add an existing known driver like mysql driver or postgres driver. Current supported driver are postgres and mysql.
{noformat}
# beeline
beeline\> !addlocaldriverjar /path/to/mysql-connector-java-5.1.27-bin.jar
beeline\> !connect mysql://host:3306/testdb
{noformat}
And another is to add a customized driver.
{noformat}
# beeline
beeline\>!addlocaldriverjar /path/to/DummyDriver-1.0-SNAPSHOT.jar
beeline\>!addlocaldrivername org.apache.dummy.DummyDrive
beeline\> !connect mysql://host:3306/testdb
{noformat}


---

* [HIVE-6617](https://issues.apache.org/jira/browse/HIVE-6617) | *Major* | **Reduce ambiguity in grammar**

SQL distinguishes between reserved and non-reserved keywords. We reserved 74 key words in this patch according to the SQL2011 standard. There are two ways if the user still would like to use the reserved keywords as identifiers, (1)	Use quoted identifiers (2) set hive.support.sql11.reserved.keywords=false;


---

* [HIVE-9813](https://issues.apache.org/jira/browse/HIVE-9813) | *Major* | **Hive JDBC - DatabaseMetaData.getColumns method cannot find classes added with "add jar" command**

We need to document the new API.


---

* [HIVE-8746](https://issues.apache.org/jira/browse/HIVE-8746) | *Major* | **ORC timestamp columns are sensitive to daylight savings time**

Fixed ORC timestamp columns for daylight savings changes.


---

* [HIVE-3454](https://issues.apache.org/jira/browse/HIVE-3454) | *Major* | **Problem with CAST(BIGINT as TIMESTAMP)**

The behaviors of converting from BOOLEAN/TINYINT/SMALLINT/INT/BIGINT and converting from FLOAT/DOUBLE to TIMESTAMP were inconsistent. The value of a BOOLEAN/TINYINT/SMALLINT/INT/BIGINT was treated as the time in milliseconds while  the value of a FLOAT/DOUBLE was treated as the time in seconds. After the change, all the types during the conversion are interpreted in seconds.


---

* [HIVE-9664](https://issues.apache.org/jira/browse/HIVE-9664) | *Major* | **Hive "add jar" command should be able to download and add jars from a repository**

This patch makes it possible to dynamically resolve dependencies using the ADD command.


---

* [HIVE-10128](https://issues.apache.org/jira/browse/HIVE-10128) | *Major* | **BytesBytesMultiHashMap does not allow concurrent read-only access**

HIVE-10128: BytesBytesMultiHashMap does not allow concurrent read-only access (Sergey Shelukhin, reviewed by Gunther Hagleitner)


---

* [HIVE-10145](https://issues.apache.org/jira/browse/HIVE-10145) | *Major* | **set Tez ACLs appropriately in hive**

Earlier if hive.server2.enable.doAs was set to false, and tez acls were enabled, the end user who is running this query would not have access to the DAG information for the query.
With this change the end user has permissions to view it.


---

* [HIVE-7351](https://issues.apache.org/jira/browse/HIVE-7351) | *Minor* | **ANALYZE TABLE statement fails on postgres metastore**

Users who use Postgres as the RDBMS for their metastore and who wish to collect stats must set hive.stats.jdbc.timeout -1.


---

* [HIVE-10119](https://issues.apache.org/jira/browse/HIVE-10119) | *Major* | **Allow Log verbosity to be set in hiveserver2 session**

The description for the newly added parameter, hive.server2.logging.level should go into beeline wiki https://cwiki.apache.org/confluence/display/Hive/HiveServer2+Clients under a new section describing beeline logging. It should also be described under https://cwiki.apache.org/confluence/display/Hive/Configuration+Properties#ConfigurationProperties-hive.server2.logging.operation.verbose . Also, hive.server2.logging.operation.verbose will be no longer available, hence it should be marked as not used anymore in beeline wiki.


---

* [HIVE-10271](https://issues.apache.org/jira/browse/HIVE-10271) | *Major* | **remove hive.server2.thrift.http.min/max.worker.threads properties**

Need to mark hive.server2.thrift.http.min/max.worker.threads parameters in  https://cwiki.apache.org/confluence/display/Hive/Setting+Up+HiveServer2 as unused since hive 0.14.0


---

* [HIVE-10215](https://issues.apache.org/jira/browse/HIVE-10215) | *Minor* | **Large IN() clauses: deep hashCode performance during optimizer pass**

Use object identity to prevent recursion instead of equality in the optimizer visitor pattern


---

* [HIVE-6950](https://issues.apache.org/jira/browse/HIVE-6950) | *Major* | **Parsing Error in GROUPING SETS**

addressed in HIVE-6617


---

* [HIVE-9711](https://issues.apache.org/jira/browse/HIVE-9711) | *Major* | **ORC Vectorization DoubleColumnVector.isRepeating=false if all entries are NaN**

Fix isRepeating checks for NaN in Float and Double vectorized readers


---

* [HIVE-9917](https://issues.apache.org/jira/browse/HIVE-9917) | *Major* | **After HIVE-3454 is done, make int to timestamp conversion configurable**


With the change of HIVE-9917, we support an additional configuration "hive.int.timestamp.conversion.in.seconds" to enable the interpretation the BOOLEAN/BYTE/TINYINT/SMALLINT/INT/BIGINT value in seconds during the timestamp conversion without breaking the existing customers. By default, the existing functionality is kept.


---

* [HIVE-10339](https://issues.apache.org/jira/browse/HIVE-10339) | *Major* | **Allow JDBC Driver to pass HTTP header Key/Value pairs**

Doc - https://cwiki.apache.org/confluence/display/Hive/HiveServer2+Clients#HiveServer2Clients-PassingHTTPHeaderKey/ValuePairsviaJDBCDriver


---

* [HIVE-10312](https://issues.apache.org/jira/browse/HIVE-10312) | *Major* | **SASL.QOP in JDBC URL is ignored for Delegation token Authentication**

**WARNING: No release note provided for this change.**


---

* [HIVE-10564](https://issues.apache.org/jira/browse/HIVE-10564) | *Major* | **webhcat should use webhcat-site.xml properties for controller job submission**

This change enables various hadoop properties to be passed to the LauncherTask via webhcat-site.xml.
Earlier hadoop properties in webhcat-site.xml would get used in most other places, except for the launch of the LauncherTask. Only a few parameters could be set, and they had to be set using templeton.\* parameters. For example templeton.mapper.memory.mb was used to set mapreduce.map.memory.mb.


---

* [HIVE-10715](https://issues.apache.org/jira/browse/HIVE-10715) | *Major* | **RAT failures - many files do not have ASF licenses**

**WARNING: No release note provided for this change.**



