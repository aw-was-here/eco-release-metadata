
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

## Release 0.15.1 - Unreleased (as of 2018-01-25)



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4624](https://issues.apache.org/jira/browse/PIG-4624) | Error on ORC empty file without schema |  Major | . | Thejas M Nair | Daniel Dai |
| [PIG-4649](https://issues.apache.org/jira/browse/PIG-4649) | [Pig on Tez] Union followed by HCatStorer misses some data |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4650](https://issues.apache.org/jira/browse/PIG-4650) | ant mvn-deploy target is broken |  Major | build | Daniel Dai | Daniel Dai |
| [PIG-4627](https://issues.apache.org/jira/browse/PIG-4627) | [Pig on Tez] Self join does not handle null values correctly |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4628](https://issues.apache.org/jira/browse/PIG-4628) | Pig 0.14 job with order by fails in mapreduce mode with Oozie |  Major | impl | Koji Noguchi | Koji Noguchi |
| [PIG-4679](https://issues.apache.org/jira/browse/PIG-4679) | Performance degradation due to InputSizeReducerEstimator since PIG-3754 |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4644](https://issues.apache.org/jira/browse/PIG-4644) | PORelationToExprProject.clone() is broken |  Major | . | Ratandeep Ratti | Anthony Hsu |
| [PIG-4683](https://issues.apache.org/jira/browse/PIG-4683) | Nested order is broken after PIG-3591 in some cases |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4635](https://issues.apache.org/jira/browse/PIG-4635) | NPE while running pig script in tez mode( pig 0.15 with tez 0.7) |  Major | . | Sachin Sabbarwal | Daniel Dai |
| [PIG-4688](https://issues.apache.org/jira/browse/PIG-4688) | Limit followed by POPartialAgg can give empty or partial results in Tez |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4696](https://issues.apache.org/jira/browse/PIG-4696) | Empty map returned by a streaming\_python udf wrongly contains a null key |  Minor | impl | Cheolsoo Park | Cheolsoo Park |
| [PIG-4703](https://issues.apache.org/jira/browse/PIG-4703) | TezOperator.stores shall not ship to backend |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4707](https://issues.apache.org/jira/browse/PIG-4707) | [Pig on Tez] Streaming job hangs with pig.exec.mapPartAgg=true |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4712](https://issues.apache.org/jira/browse/PIG-4712) | [Pig on Tez] NPE in Bloom UDF after Union |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4760](https://issues.apache.org/jira/browse/PIG-4760) | TezDAGStats.convertToHadoopCounters is not used, but impose MR counter limit |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4587](https://issues.apache.org/jira/browse/PIG-4587) | Applying isFirstReduceOfKey for Skewed left outer join skips records |  Critical | . | Rohini Palaniswamy | Daniel Dai |
| [PIG-4808](https://issues.apache.org/jira/browse/PIG-4808) | PluckTuple overwrites regex if used more than once in the same script |  Major | . | Eyal Allweil | Eyal Allweil |
| [PIG-4812](https://issues.apache.org/jira/browse/PIG-4812) | Register Groovy UDF with relative path does not work |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-4851](https://issues.apache.org/jira/browse/PIG-4851) | Null not padded when input has less fields than declared schema for some loader |  Major | . | Koji Noguchi | Rohini Palaniswamy |
| [PIG-4867](https://issues.apache.org/jira/browse/PIG-4867) | -stop\_on\_failure does not work with Tez |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4860](https://issues.apache.org/jira/browse/PIG-4860) | Loading data using OrcStorage() accepts only default FileSystem path |  Major | . | Anirudh Beria | Anirudh Beria |
| [PIG-4821](https://issues.apache.org/jira/browse/PIG-4821) | Pig chararray field with special UTF-8 chars as part of tuple join key produces wrong results in Tez |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |


