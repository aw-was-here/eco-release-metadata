
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

## Release 3.0.0 - Unreleased (as of 2017-08-28)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20449](https://issues.apache.org/jira/browse/SPARK-20449) | Upgrade breeze version to 0.13.1 |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-21409](https://issues.apache.org/jira/browse/SPARK-21409) | Expose state store memory usage in SQL metrics and progress updates |  Major | Structured Streaming | Tathagata Das | Tathagata Das |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-19378](https://issues.apache.org/jira/browse/SPARK-19378) | StateOperator metrics should still return the total number of rows in state even if there was no data for a trigger |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-21587](https://issues.apache.org/jira/browse/SPARK-21587) | Filter pushdown for EventTime Watermark Operator |  Major | Structured Streaming | Jose Torres |  |
| [SPARK-21696](https://issues.apache.org/jira/browse/SPARK-21696) | State Store can't handle corrupted snapshots |  Critical | Structured Streaming | Alexander Bessonov |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-21464](https://issues.apache.org/jira/browse/SPARK-21464) | Minimize deprecation warnings caused by ProcessingTime class |  Minor | Structured Streaming | Tathagata Das | Tathagata Das |


