
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

## Release 3.0.0 - Unreleased (as of 2018-01-25)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20449](https://issues.apache.org/jira/browse/SPARK-20449) | Upgrade breeze version to 0.13.1 |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-21765](https://issues.apache.org/jira/browse/SPARK-21765) | Ensure all leaf nodes that are derived from streaming sources have isStreaming=true |  Major | SQL, Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-23143](https://issues.apache.org/jira/browse/SPARK-23143) | Add Python support for continuous trigger |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23144](https://issues.apache.org/jira/browse/SPARK-23144) | Add console sink for continuous queries |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23142](https://issues.apache.org/jira/browse/SPARK-23142) | Add documentation for Continuous Processing |  Major | Structured Streaming | Tathagata Das | Tathagata Das |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-19378](https://issues.apache.org/jira/browse/SPARK-19378) | StateOperator metrics should still return the total number of rows in state even if there was no data for a trigger |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-21587](https://issues.apache.org/jira/browse/SPARK-21587) | Filter pushdown for EventTime Watermark Operator |  Major | Structured Streaming | Jose Torres |  |
| [SPARK-21696](https://issues.apache.org/jira/browse/SPARK-21696) | State Store can't handle corrupted snapshots |  Critical | Structured Streaming | Alexander Bessonov |  |
| [SPARK-22018](https://issues.apache.org/jira/browse/SPARK-22018) | Catalyst Optimizer does not preserve top-level metadata while collapsing projects |  Major | Optimizer, Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-22017](https://issues.apache.org/jira/browse/SPARK-22017) | watermark evaluation with multi-input stream operators is unspecified |  Major | Structured Streaming | Jose Torres |  |
| [SPARK-22238](https://issues.apache.org/jira/browse/SPARK-22238) | EnsureStatefulOpPartitioning shouldn't ask for the child RDD before planning is completed |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-21464](https://issues.apache.org/jira/browse/SPARK-21464) | Minimize deprecation warnings caused by ProcessingTime class |  Minor | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23197](https://issues.apache.org/jira/browse/SPARK-23197) | Flaky test: spark.streaming.ReceiverSuite."receiver\_life\_cycle" |  Major | DStreams | Tathagata Das | Tathagata Das |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-22908](https://issues.apache.org/jira/browse/SPARK-22908) | add basic continuous kafka source |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-23033](https://issues.apache.org/jira/browse/SPARK-23033) | disable task-level retry for continuous execution |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-23052](https://issues.apache.org/jira/browse/SPARK-23052) | Migrate Microbatch ConsoleSink to v2 |  Major | Structured Streaming | Jose Torres | Jose Torres |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-21925](https://issues.apache.org/jira/browse/SPARK-21925) | Update trigger interval documentation in docs with behavior change in Spark 2.2 |  Major | Documentation, Structured Streaming | Burak Yavuz |  |


