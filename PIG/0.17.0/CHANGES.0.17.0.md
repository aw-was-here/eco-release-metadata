
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

## Release 0.17.0 - Unreleased (as of 2016-07-14)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4925](https://issues.apache.org/jira/browse/PIG-4925) | Support for passing the bloom filter to the Bloom UDF |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4714](https://issues.apache.org/jira/browse/PIG-4714) | Improve logging across multiple components with callerId |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4719](https://issues.apache.org/jira/browse/PIG-4719) | Documentation for PIG-4704: Customizable Error Handling for Storers in Pig |  Major | documentation | Daniel Dai | Daniel Dai |
| [PIG-2768](https://issues.apache.org/jira/browse/PIG-2768) | Fix org.apache.hadoop.conf.Configuration deprecation warnings for Hadoop 23 |  Major | . | Fabian Alenius | Rohini Palaniswamy |
| [PIG-4906](https://issues.apache.org/jira/browse/PIG-4906) | Add Bigdecimal functions in Over function |  Minor | piggybank | Cristian Galán | Cristian Galán |
| [PIG-4911](https://issues.apache.org/jira/browse/PIG-4911) | Provide option to disable DAG recovery |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4902](https://issues.apache.org/jira/browse/PIG-4902) | Fix UT failures on 0.16 branch: TestTezGraceParallelism, TestPigScriptParser |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-3227](https://issues.apache.org/jira/browse/PIG-3227) | SearchEngineExtractor does not work for bing |  Minor | piggybank | Danny Antonetti | Danny Antonetti |
| [PIG-4786](https://issues.apache.org/jira/browse/PIG-4786) | CROSS will not work correctly with Grace Parallelism |  Major | tez | Rohini Palaniswamy | Daniel Dai |
| [PIG-4734](https://issues.apache.org/jira/browse/PIG-4734) | TOMAP schema inferring breaks some scripts in type checking for bincond |  Major | . | Rohini Palaniswamy | Daniel Dai |
| [PIG-4916](https://issues.apache.org/jira/browse/PIG-4916) | Pig on Tez fail to remove temporary HDFS files in some cases |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-4921](https://issues.apache.org/jira/browse/PIG-4921) | Kill running jobs on InterruptedException |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-2315](https://issues.apache.org/jira/browse/PIG-2315) | Make as clause work in generate |  Major | . | Olga Natkovich | Daniel Dai |
| [PIG-4896](https://issues.apache.org/jira/browse/PIG-4896) | Param substitution ignored when redefined |  Minor | parser | Koji Noguchi | Koji Noguchi |


