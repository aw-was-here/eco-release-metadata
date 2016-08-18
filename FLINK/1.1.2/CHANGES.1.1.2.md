
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
# Apache Flink Changelog

## Release 1.1.2 - Unreleased (as of 2016-08-18)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-4302](https://issues.apache.org/jira/browse/FLINK-4302) | Add JavaDocs to MetricConfig |  Major | Metrics | Ufuk Celebi | Chesnay Schepler |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-4334](https://issues.apache.org/jira/browse/FLINK-4334) | Shaded Hadoop1 jar not fully excluded in Quickstart |  Major | Quickstarts | Shannon Carey |  |
| [FLINK-4236](https://issues.apache.org/jira/browse/FLINK-4236) | Flink Dashboard stops showing list of uploaded jars if main method cannot be looked up |  Major | Job-Submission | Gary Yao | Maximilian Michels |
| [FLINK-4309](https://issues.apache.org/jira/browse/FLINK-4309) | Potential null pointer dereference in DelegatingConfiguration#keySet() |  Minor | . | Ted Yu | Sunny T |
| [FLINK-4411](https://issues.apache.org/jira/browse/FLINK-4411) | [py] Chained dual input children are not properly propagated |  Minor | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4412](https://issues.apache.org/jira/browse/FLINK-4412) | [py] Chaining does not properly handle broadcast variables |  Major | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4409](https://issues.apache.org/jira/browse/FLINK-4409) | class conflict between jsr305-1.3.9.jar and flink-shaded-hadoop2-1.1.1.jar |  Minor | Build System | Renkai Ge | Stephan Ewen |


