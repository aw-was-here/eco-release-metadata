
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
# Apache Spark Changelog

## Release 1.6.4 - Unreleased (as of 2017-03-24)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-16845](https://issues.apache.org/jira/browse/SPARK-16845) | org.apache.spark.sql.catalyst.expressions.GeneratedClass$SpecificOrdering" grows beyond 64 KB |  Major | SQL | hejie | Liwei Lin |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-18553](https://issues.apache.org/jira/browse/SPARK-18553) | Executor loss may cause TaskSetManager to be leaked |  Blocker | Scheduler | Josh Rosen | Josh Rosen |
| [SPARK-13478](https://issues.apache.org/jira/browse/SPARK-13478) | Fetching delegation tokens for Hive fails when using proxy users |  Minor | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-19529](https://issues.apache.org/jira/browse/SPARK-19529) | TransportClientFactory.createClient() shouldn't call awaitUninterruptibly() |  Major | Shuffle, Spark Core | Josh Rosen | Josh Rosen |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12446](https://issues.apache.org/jira/browse/SPARK-12446) | Add unit tests for JDBCRDD internal functions |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |


