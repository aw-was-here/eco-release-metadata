
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
# Apache Pig  0.16.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [PIG-4713](https://issues.apache.org/jira/browse/PIG-4713) | *Major* | **Document Bloom UDF**

PIG-4713 Document Bloom UDF


---

* [PIG-4691](https://issues.apache.org/jira/browse/PIG-4691) | *Major* | **[Pig on Tez] Support for whitelisting storefuncs for union optimization**

Union optimization (pig.tez.opt.union=true) in tez uses vertex groups to store output from different vertices into one final output location. If a StoreFunc's OutputCommitter does not honor mapreduce.output.basename or has other issues with multiple vertices writing to the destination location at the same time, then you can disable union optimization just for that StoreFunc. Refer PIG-4649. You can also specify a whitelist of StoreFuncs that are known to work with multiple vertices writing to same location instead of a blacklist.

#pig.tez.opt.union.unsupported.storefuncs=org.apache.hcatalog.pig.HCatStorer,org.apache.hive.hcatalog.pig.HCatStorer
#pig.tez.opt.union.supported.storefuncs=


---

* [PIG-4673](https://issues.apache.org/jira/browse/PIG-4673) | *Minor* | **Built In UDF - REPLACE\_MULTI : For a given string, search and replace all occurrences of search keys with replacement values.**

Built In UDF - REPLACE\_MULTI : Method which take a tuple having source string as first parameter and a map having search key and replacement values. Method will replace all occurrences of search key in source string with the replacement values.


---

* [PIG-4639](https://issues.apache.org/jira/browse/PIG-4639) | *Major* | **Add better parser for Apache HTTPD access log.**

In piggybank there is now a generic Apache httpd access log loader that supports (almost) all custom LogFormats.


---

* [PIG-4638](https://issues.apache.org/jira/browse/PIG-4638) | *Major* | **Allow TOMAP to accept dynamically sized input**

The TOMAP function now also accepts a bag of key-value pairs as input.


---

* [PIG-4578](https://issues.apache.org/jira/browse/PIG-4578) | *Minor* | **ToDateISO should support optional ' ' space variant used by JDBC**

Built-in UDF ToDateISO(chararray) now allows a space character instead of requiring a 'T' between date and time in an ISO-8601 timestamp. Facilitates parsing of JDBC timestamp format.


---

* [PIG-4405](https://issues.apache.org/jira/browse/PIG-4405) | *Major* | **Adding 'map[]' support to mock/Storage**

The Storage mocking feature supports input and output of "map" types.


---

* [PIG-4365](https://issues.apache.org/jira/browse/PIG-4365) | *Major* | **TOP udf should implement Accumulator interface**

TOP udf implements Accumulator interface


---

* [PIG-3251](https://issues.apache.org/jira/browse/PIG-3251) | *Major* | **Bzip2TextInputFormat requires double the memory of maximum record size**

With hadoop 2.X or later, pig will use hadoop's bzip codec to handle bzip inputs.  (To turn it off, set pig.bzip.use.hadoop.inputformat=false)



