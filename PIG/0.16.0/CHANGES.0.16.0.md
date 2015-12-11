
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
# Apache Pig Changelog

## Release 0.16.0 - Unreleased (as of 2015-12-11)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4673](https://issues.apache.org/jira/browse/PIG-4673) | Built In UDF - REPLACE\_MULTI : For a given string, search and replace all occurrences of search keys with replacement values. |  Minor | piggybank | Murali Rao | Murali Rao |
| [PIG-4639](https://issues.apache.org/jira/browse/PIG-4639) | Add better parser for Apache HTTPD access log. |  Major | piggybank | Niels Basjes | Niels Basjes |
| [PIG-4570](https://issues.apache.org/jira/browse/PIG-4570) | Allow AvroStorage to use a class for the schema |  Minor | . | Paul Mazak | Paul Mazak |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4744](https://issues.apache.org/jira/browse/PIG-4744) | Honor tez.staging-dir setting in tez-site.xml |  Major | tez | Daniel Dai | Rohini Palaniswamy |
| [PIG-4717](https://issues.apache.org/jira/browse/PIG-4717) | Update Apache HTTPD LogParser to latest version |  Major | . | Niels Basjes | Niels Basjes |
| [PIG-4708](https://issues.apache.org/jira/browse/PIG-4708) | Upgrade joda-time to 2.8 |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4704](https://issues.apache.org/jira/browse/PIG-4704) | Customizable Error Handling for Storers in Pig |  Major | . | Siddhi Mehta | Siddhi Mehta |
| [PIG-4702](https://issues.apache.org/jira/browse/PIG-4702) | Load once for sampling and partitioning in order by for certain LoadFuncs |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4699](https://issues.apache.org/jira/browse/PIG-4699) | Print Job stats information in Tez like mapreduce |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4697](https://issues.apache.org/jira/browse/PIG-4697) | Serialize relevant part of the udfcontext per vertex to reduce payload size |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4676](https://issues.apache.org/jira/browse/PIG-4676) | Upgrade Hive to 1.2.1 |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4663](https://issues.apache.org/jira/browse/PIG-4663) | HBaseStorage should allow the MaxResultsPerColumnFamily limit to avoid memory or scan timeout issues |  Major | . | Paul Mazak | Paul Mazak |
| [PIG-4651](https://issues.apache.org/jira/browse/PIG-4651) | Optimize NullablePartitionWritable serialization for skewed join |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4638](https://issues.apache.org/jira/browse/PIG-4638) | Allow TOMAP to accept dynamically sized input |  Major | . | Niels Basjes | Niels Basjes |
| [PIG-4578](https://issues.apache.org/jira/browse/PIG-4578) | ToDateISO should support optional ' ' space variant used by JDBC |  Minor | internal-udfs | Michael Howard | Michael Howard |
| [PIG-4554](https://issues.apache.org/jira/browse/PIG-4554) | Compress pig.script before encoding |  Major | . | Rohini Palaniswamy | Sandeep Samdaria |
| [PIG-4417](https://issues.apache.org/jira/browse/PIG-4417) | Pig's register command should support automatic fetching of jars from repo. |  Major | . | Akshay Rai | Akshay Rai |
| [PIG-4405](https://issues.apache.org/jira/browse/PIG-4405) | Adding 'map[]' support to mock/Storage |  Major | . | Niels Basjes | Niels Basjes |
| [PIG-3957](https://issues.apache.org/jira/browse/PIG-3957) | Refactor out resetting input key in TezDagBuilder |  Major | tez | Daniel Dai | Rohini Palaniswamy |
| [PIG-3622](https://issues.apache.org/jira/browse/PIG-3622) | Allow casting bytearray fields to bytearray type |  Minor | . | Redis Liu | Redis Liu |
| [PIG-3251](https://issues.apache.org/jira/browse/PIG-3251) | Bzip2TextInputFormat requires double the memory of maximum record size |  Minor | . | Koji Noguchi | Koji Noguchi |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4755](https://issues.apache.org/jira/browse/PIG-4755) | Typo in runpigmix script |  Major | . | Mit Desai | Mit Desai |
| [PIG-4736](https://issues.apache.org/jira/browse/PIG-4736) | Removing empty keys in UDFContext broke one LoadFunc |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4733](https://issues.apache.org/jira/browse/PIG-4733) | Avoid NullPointerException in JVMReuseImpl for builtin classes |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4730](https://issues.apache.org/jira/browse/PIG-4730) | [Pig on Tez] Total parallelism estimation does not account load parallelism |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4727](https://issues.apache.org/jira/browse/PIG-4727) | Incorrect types table for AVG in docs |  Trivial | documentation | Nathan Smith | Nathan Smith |
| [PIG-4725](https://issues.apache.org/jira/browse/PIG-4725) | Typo in FrontendException messages "Incompatable" |  Trivial | . | Nathan Smith | Nathan Smith |
| [PIG-4722](https://issues.apache.org/jira/browse/PIG-4722) | [Pig on Tez] NPE while running Combiner |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4721](https://issues.apache.org/jira/browse/PIG-4721) | IsEmpty documentation error |  Trivial | documentation | Nathan Smith | Nathan Smith |
| [PIG-4712](https://issues.apache.org/jira/browse/PIG-4712) | [Pig on Tez] NPE in Bloom UDF after Union |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4707](https://issues.apache.org/jira/browse/PIG-4707) | [Pig on Tez] Streaming job hangs with pig.exec.mapPartAgg=true |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4703](https://issues.apache.org/jira/browse/PIG-4703) | TezOperator.stores shall not ship to backend |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4696](https://issues.apache.org/jira/browse/PIG-4696) | Empty map returned by a streaming\_python udf wrongly contains a null key |  Minor | impl | Cheolsoo Park | Cheolsoo Park |
| [PIG-4691](https://issues.apache.org/jira/browse/PIG-4691) | [Pig on Tez] Support for whitelisting storefuncs for union optimization |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4689](https://issues.apache.org/jira/browse/PIG-4689) | CSV Writes incorrect header if two CSV files are created in one script |  Major | . | Niels Basjes | Niels Basjes |
| [PIG-4688](https://issues.apache.org/jira/browse/PIG-4688) | Limit followed by POPartialAgg can give empty or partial results in Tez |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4683](https://issues.apache.org/jira/browse/PIG-4683) | Nested order is broken after PIG-3591 in some cases |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4679](https://issues.apache.org/jira/browse/PIG-4679) | Performance degradation due to InputSizeReducerEstimator since PIG-3754 |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4674](https://issues.apache.org/jira/browse/PIG-4674) | TOMAP should infer schema |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4670](https://issues.apache.org/jira/browse/PIG-4670) | Embedded Python scripts still parse line by line |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4650](https://issues.apache.org/jira/browse/PIG-4650) | ant mvn-deploy target is broken |  Major | build | Daniel Dai | Daniel Dai |
| [PIG-4649](https://issues.apache.org/jira/browse/PIG-4649) | [Pig on Tez] Union followed by HCatStorer misses some data |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4644](https://issues.apache.org/jira/browse/PIG-4644) | PORelationToExprProject.clone() is broken |  Major | . | Ratandeep Ratti | Anthony Hsu |
| [PIG-4636](https://issues.apache.org/jira/browse/PIG-4636) | Occurred spelled incorrectly in error message for Launcher and POMergeCogroup |  Trivial | . | Steven Magana-Zook | Steven Magana-Zook |
| [PIG-4635](https://issues.apache.org/jira/browse/PIG-4635) | NPE while running pig script in tez mode( pig 0.15 with tez 0.7) |  Major | . | Sachin Sabbarwal | Daniel Dai |
| [PIG-4627](https://issues.apache.org/jira/browse/PIG-4627) | [Pig on Tez] Self join does not handle null values correctly |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4624](https://issues.apache.org/jira/browse/PIG-4624) | Error on ORC empty file without schema |  Major | . | Thejas M Nair | Daniel Dai |
| [PIG-4618](https://issues.apache.org/jira/browse/PIG-4618) | When use tez as the engine , set pig.user.cache.enabled=true  do  not take effect |  Major | tez | Xiaowei Wang | Xiaowei Wang |
| [PIG-4533](https://issues.apache.org/jira/browse/PIG-4533) | Document error: Pig does support concatenated gz file |  Major | documentation, parser | Tomas Hudik | Daniel Dai |
| [PIG-4468](https://issues.apache.org/jira/browse/PIG-4468) | Pig's jackson version conflicts with that of hadoop 2.6.0 or newer |  Major | . | Jeff Zhang | Jeff Zhang |
| [PIG-4315](https://issues.apache.org/jira/browse/PIG-4315) | MergeJoin or Split followed by order by gives NPE in Tez |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4657](https://issues.apache.org/jira/browse/PIG-4657) | [Pig on Tez] Optimize GroupBy and Distinct key comparison |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4654](https://issues.apache.org/jira/browse/PIG-4654) | Reduce tez memory.reserve-fraction and clear spillables for better memory utilization |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4574](https://issues.apache.org/jira/browse/PIG-4574) | Eliminate identity vertex for order by and skewed join right after LOAD |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4742](https://issues.apache.org/jira/browse/PIG-4742) | Document Pig's Register Artifact Command added in PIG-4417 |  Major | . | Akshay Rai | Akshay Rai |
| [PIG-4713](https://issues.apache.org/jira/browse/PIG-4713) | Document Bloom UDF |  Major | . | Rohini Palaniswamy | Gabor Liptak |
| [PIG-4365](https://issues.apache.org/jira/browse/PIG-4365) | TOP udf should implement Accumulator interface |  Major | . | Rohini Palaniswamy | Eyal Allweil |


