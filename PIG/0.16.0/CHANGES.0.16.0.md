
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

## Release 0.16.0 - Unreleased (as of 2015-09-12)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4639](https://issues.apache.org/jira/browse/PIG-4639) | Add better parser for Apache HTTPD access log. |  Major | piggybank | Niels Basjes | Niels Basjes |
| [PIG-4570](https://issues.apache.org/jira/browse/PIG-4570) | Allow AvroStorage to use a class for the schema |  Minor | . | Paul Mazak | Paul Mazak |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4651](https://issues.apache.org/jira/browse/PIG-4651) | Optimize NullablePartitionWritable serialization for skewed join |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4638](https://issues.apache.org/jira/browse/PIG-4638) | Allow TOMAP to accept dynamically sized input |  Major | . | Niels Basjes | Niels Basjes |
| [PIG-4578](https://issues.apache.org/jira/browse/PIG-4578) | ToDateISO should support optional ' ' space variant used by JDBC |  Minor | internal-udfs | Michael Howard | Michael Howard |
| [PIG-4405](https://issues.apache.org/jira/browse/PIG-4405) | Adding 'map[]' support to mock/Storage |  Major | . | Niels Basjes | Niels Basjes |
| [PIG-3622](https://issues.apache.org/jira/browse/PIG-3622) | Allow casting bytearray fields to bytearray type |  Minor | . | Redis Liu | Redis Liu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4650](https://issues.apache.org/jira/browse/PIG-4650) | ant mvn-deploy target is broken |  Major | build | Daniel Dai | Daniel Dai |
| [PIG-4649](https://issues.apache.org/jira/browse/PIG-4649) | [Pig on Tez] Union followed by HCatStorer misses some data |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4636](https://issues.apache.org/jira/browse/PIG-4636) | Occurred spelled incorrectly in error message for Launcher and POMergeCogroup |  Trivial | . | Steven Magana-Zook | Steven Magana-Zook |
| [PIG-4627](https://issues.apache.org/jira/browse/PIG-4627) | [Pig on Tez] Self join does not handle null values correctly |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4624](https://issues.apache.org/jira/browse/PIG-4624) | Error on ORC empty file without schema |  Major | . | Thejas M Nair | Daniel Dai |
| [PIG-4618](https://issues.apache.org/jira/browse/PIG-4618) | When use tez as the engine , set pig.user.cache.enabled=true  do  not take effect |  Major | tez | Xiaowei Wang | Xiaowei Wang |
| [PIG-4533](https://issues.apache.org/jira/browse/PIG-4533) | Document error: Pig does support concatenated gz file |  Major | documentation, parser | Tomas Hudik | Daniel Dai |
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
| [PIG-4365](https://issues.apache.org/jira/browse/PIG-4365) | TOP udf should implement Accumulator interface |  Major | . | Rohini Palaniswamy | Eyal Allweil |


