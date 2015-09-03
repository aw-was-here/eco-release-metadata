
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

## Release 1.5.1 - Unreleased (as of 2015-09-03)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10411](https://issues.apache.org/jira/browse/SPARK-10411) | In SQL tab move visualization above explain output |  Minor | SQL, Web UI | Andrew Or | Shixiong Zhu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10431](https://issues.apache.org/jira/browse/SPARK-10431) | Flaky test: o.a.s.metrics.InputOutputMetricsSuite - input metrics with cache and coalesce |  Critical | Tests | Pete Robbins | Pete Robbins |
| [SPARK-10422](https://issues.apache.org/jira/browse/SPARK-10422) | String column in InMemoryColumnarCache needs to override clone method |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-10392](https://issues.apache.org/jira/browse/SPARK-10392) | Pyspark - Wrong DateType support on JDBC connection |  Major | PySpark, SQL | Maciej Bryński | Alexey Grishchenko |
| [SPARK-10379](https://issues.apache.org/jira/browse/SPARK-10379) | UnsafeShuffleExternalSorter should preserve first page |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-10332](https://issues.apache.org/jira/browse/SPARK-10332) | spark-submit to yarn doesn't fail if executors is 0 |  Minor | Spark Submit, YARN | Thomas Graves | holdenk |
| [SPARK-9869](https://issues.apache.org/jira/browse/SPARK-9869) | Flaky test: o.a.s.streaming.InputStreamSuite - socket input stream |  Critical | Streaming | Josh Rosen | Pete Robbins |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10398](https://issues.apache.org/jira/browse/SPARK-10398) | Migrate Spark download page to use new lua mirroring scripts |  Minor | Project Infra | Luciano Resende | Luciano Resende |


