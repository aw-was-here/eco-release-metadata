
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
# Apache Hive  1.1.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HIVE-8330](https://issues.apache.org/jira/browse/HIVE-8330) | *Major* | **HiveResultSet.findColumn() parameters are case sensitive**

HiveResultSet.findColumn() was case sensitive which is non-standard. This has been fixed.


---

* [HIVE-8337](https://issues.apache.org/jira/browse/HIVE-8337) | *Major* | **Change default of hive.warehouse.subdir.inherit.perms to true**

The default value of hive.warehouse.subdir.inherit.perms is now true.


---

* [HIVE-5865](https://issues.apache.org/jira/browse/HIVE-5865) | *Major* | **AvroDeserializer incorrectly assumes keys to Maps will always be of type 'org.apache.avro.util.Utf8'**

AvroSerde no longer assumes Map Keys will be subclass of Utf8, only CharSequence. This allows it to work with Avro data that has been serialized with a Schema that uses the "avro.java.string" property.


---

* [HIVE-7858](https://issues.apache.org/jira/browse/HIVE-7858) | *Major* | **Parquet compression should be configurable via table property**

The property parquet.compression can now be configured as a table property.


---

* [HIVE-8661](https://issues.apache.org/jira/browse/HIVE-8661) | *Minor* | **JDBC MinimizeJAR should be configurable in pom.xml**

Minimize standalone jars only during dist builds.


---

* [HIVE-8885](https://issues.apache.org/jira/browse/HIVE-8885) | *Major* | **Investigate test failure on auto\_join13.q [Spark Branch]**

Fixed after HIVE-8867 is resolved.


---

* [HIVE-9174](https://issues.apache.org/jira/browse/HIVE-9174) | *Major* | **Enable queuing of HCatalog notification events in metastore DB**

Introduces new DbNotificationListener as another possible Metastore EventListener. This enables integration with external tools like Falcon to implement Replication.


---

* [HIVE-8327](https://issues.apache.org/jira/browse/HIVE-8327) | *Major* | **mvn site -Pfindbugs**

mvn site -Pfindbugs for hive


---

* [HIVE-4639](https://issues.apache.org/jira/browse/HIVE-4639) | *Major* | **Add has null flag to ORC internal index**

Support for hasNull flag in ORC row group index.


---

* [HIVE-3405](https://issues.apache.org/jira/browse/HIVE-3405) | *Major* | **UDF initcap to obtain a string with the first letter of each word in uppercase other letters in lowercase**

Returns string, with the first letter of each word in uppercase, all other letters in lowercase.


---

* [HIVE-9244](https://issues.apache.org/jira/browse/HIVE-9244) | *Major* | **Upgrade 0.23 hadoop-shims to latest stable hadoop-2.6.0**

Upgrade 0.23 hadoop-shims version to the latest stable version (2.6.0)


---

* [HIVE-9310](https://issues.apache.org/jira/browse/HIVE-9310) | *Minor* | **CLI JLine does not flush history back to ~/.hivehistory**

Flush hive CLI history to disk on exit


---

* [HIVE-7313](https://issues.apache.org/jira/browse/HIVE-7313) | *Major* | **Allow in-memory/ssd session-level temp-tables**

Memory & SSD storage policies for temporary tables.


---

* [HIVE-9381](https://issues.apache.org/jira/browse/HIVE-9381) | *Major* | **HCatalog hardcodes maximum append limit to 1000.**

Introduces new hcat jobconf parameter : hcat.append.limit for those that want to increase the hcatalog append limit above 1000.


---

* [HIVE-9255](https://issues.apache.org/jira/browse/HIVE-9255) | *Minor* | **Fastpath for limited fetches from unpartitioned tables**

SimpleFetchOptimizer for limited fetches without filters


---

* [HIVE-9357](https://issues.apache.org/jira/browse/HIVE-9357) | *Major* | **Create ADD\_MONTHS UDF**

Returns the date that is num\_months after start\_date


---

* [HIVE-9358](https://issues.apache.org/jira/browse/HIVE-9358) | *Major* | **Create LAST\_DAY UDF**

Returns the last day of the month which the date belongs to.


---

* [HIVE-9382](https://issues.apache.org/jira/browse/HIVE-9382) | *Major* | **Query got rerun with Global Limit optimization on and Fetch optimization off**

HIVE-9382: Fix Global Limit optimization when Fetch optimizations are off (Wei Zheng, reviewed by Gopal V)


---

* [HIVE-9402](https://issues.apache.org/jira/browse/HIVE-9402) | *Major* | **Create GREATEST and LEAST udf**

Returns the greatest/least value of the list of values


---

* [HIVE-9443](https://issues.apache.org/jira/browse/HIVE-9443) | *Major* | **ORC PPD - fix fuzzy case evaluation of IS\_NULL**

Fix ORC IS\_NULL predicate for columns with some nulls



