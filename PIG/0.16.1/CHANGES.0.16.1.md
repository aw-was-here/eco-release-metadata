
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

## Release 0.16.1 - Unreleased (as of 2017-01-19)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4951](https://issues.apache.org/jira/browse/PIG-4951) | Rename PIG\_ATS\_ENABLED constant |  Major | . | Daniel Dai | Adam Szita |
| [PIG-5037](https://issues.apache.org/jira/browse/PIG-5037) | Add api getDisplayString to PigStats |  Major | . | Jeff Zhang | Jeff Zhang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4949](https://issues.apache.org/jira/browse/PIG-4949) | Fix registering jar in S3 which was broken by PIG-4417 in Pig 0.16 |  Major | parser | Yishan Yang | Yishan Yang |
| [PIG-4945](https://issues.apache.org/jira/browse/PIG-4945) | Update document for conflicting macro params |  Trivial | documentation | Koji Noguchi | Koji Noguchi |
| [PIG-4950](https://issues.apache.org/jira/browse/PIG-4950) | Fix minor issues with running scripts in non-local FileSystems |  Minor | . | Peter Slawski | Peter Slawski |
| [PIG-4942](https://issues.apache.org/jira/browse/PIG-4942) | Fix mvn-install ant target |  Major | build | Peter Slawski | Peter Slawski |
| [PIG-4948](https://issues.apache.org/jira/browse/PIG-4948) | Pig on Tez AM use too much memory on a small cluster |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4947](https://issues.apache.org/jira/browse/PIG-4947) | LOAD with HBaseStorage using a mix of pure wildcards and prefixed wildcards results in empty maps for the pure wildcarded column families. |  Major | grunt | Youngjin | Daniel Dai |
| [PIG-4960](https://issues.apache.org/jira/browse/PIG-4960) | Split followed by order by/skewed join is skewed in Tez |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4961](https://issues.apache.org/jira/browse/PIG-4961) | CROSS followed by LIMIT inside nested foreach drop data from result |  Major | . | Sergey Svinarchuk | Rohini Palaniswamy |
| [PIG-4935](https://issues.apache.org/jira/browse/PIG-4935) | TEZ\_USE\_CLUSTER\_HADOOP\_LIBS is always set to true |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4967](https://issues.apache.org/jira/browse/PIG-4967) | NPE in PigJobControl.run() when job status is null |  Critical | . | Xiang Li | Xiang Li |
| [PIG-4974](https://issues.apache.org/jira/browse/PIG-4974) | A simple map reference fail to cast |  Major | . | Koji Noguchi | Koji Noguchi |
| [PIG-5019](https://issues.apache.org/jira/browse/PIG-5019) | Pig generates tons of warnings for udf with enabled warnings aggregation |  Major | internal-udfs | Murshid Chalaev | Murshid Chalaev |
| [PIG-5032](https://issues.apache.org/jira/browse/PIG-5032) | Output record stats in Tez is wrong when there is split followed by union |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-5035](https://issues.apache.org/jira/browse/PIG-5035) | killJob API does not work in Tez |  Major | . | Jeff Zhang | Jeff Zhang |
| [PIG-5040](https://issues.apache.org/jira/browse/PIG-5040) | Order by and CROSS partitioning is not deterministic due to usage of Random |  Critical | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-5041](https://issues.apache.org/jira/browse/PIG-5041) | RoundRobinPartitioner is not deterministic when order of input records change |  Critical | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-5033](https://issues.apache.org/jira/browse/PIG-5033) | MultiQueryOptimizerTez creates bad plan with union, split and FRJoin |  Major | tez | Travis Woodruff | Rohini Palaniswamy |
| [PIG-5048](https://issues.apache.org/jira/browse/PIG-5048) | HiveUDTF fail if it is the first expression in projection |  Major | impl | Daniel Dai | Nandor Kollar |
| [PIG-5064](https://issues.apache.org/jira/browse/PIG-5064) | NPE in TestScriptUDF#testPythonBuiltinModuleImport1 when JAVA\_HOME is not set |  Minor | . | Xiang Li | Xiang Li |
| [PIG-5074](https://issues.apache.org/jira/browse/PIG-5074) | Build broken when hadoopversion=20 in branch 0.16 |  Major | build | Adam Szita | Adam Szita |
| [PIG-3417](https://issues.apache.org/jira/browse/PIG-3417) | Job fails when skewed join is done on tuple key |  Critical | impl | Nick White | Nandor Kollar |
| [PIG-4930](https://issues.apache.org/jira/browse/PIG-4930) | Skewed Join Breaks On Empty Sampled Input When Key is From Map |  Major | . | William Butler | Nandor Kollar |
| [PIG-5043](https://issues.apache.org/jira/browse/PIG-5043) | Slowstart not applied in Tez with PARALLEL clause |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-5088](https://issues.apache.org/jira/browse/PIG-5088) | HashValuePartitioner has skew when there is only map fields |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-5082](https://issues.apache.org/jira/browse/PIG-5082) | Tez UnionOptimizer creates vertex group with one member |  Minor | tez | Travis Woodruff | Rohini Palaniswamy |
| [PIG-5078](https://issues.apache.org/jira/browse/PIG-5078) | Script fails with error - POStoreTez only accepts MROutput |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4918](https://issues.apache.org/jira/browse/PIG-4918) | Pig on Tez cannot switch pig.temp.dir to another fs |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-4260](https://issues.apache.org/jira/browse/PIG-4260) | SpillableMemoryManager.spill should revert spill on all exception |  Major | impl | Daniel Dai | Rohini Palaniswamy |
| [PIG-5108](https://issues.apache.org/jira/browse/PIG-5108) | AvroStorage on Tez with exception on nested records |  Major | tez | Sebastian Geller | Daniel Dai |
| [PIG-5046](https://issues.apache.org/jira/browse/PIG-5046) | Skewed join with auto parallelism hangs when right input also has autoparallelism |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |


