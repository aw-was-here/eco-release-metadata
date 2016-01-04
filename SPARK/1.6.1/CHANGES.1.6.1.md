
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

## Release 1.6.1 - Unreleased (as of 2016-01-04)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12411](https://issues.apache.org/jira/browse/SPARK-12411) | Reconsider executor heartbeats rpc timeout |  Major | Spark Core | Nong Li | Nong Li |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12562](https://issues.apache.org/jira/browse/SPARK-12562) | DataFrame.write.format("text") requires the column name to be called value |  Major | SQL | Michael Armbrust | Xiu (Joe) Guo |
| [SPARK-12526](https://issues.apache.org/jira/browse/SPARK-12526) | `ifelse`, `when`, `otherwise` unable to take Column as value |  Major | SparkR | Sen Fang | Sen Fang |
| [SPARK-12517](https://issues.apache.org/jira/browse/SPARK-12517) | No default RDD name for ones created by sc.textFile |  Minor | Spark Core | yaron weinsberg | yaron weinsberg |
| [SPARK-12502](https://issues.apache.org/jira/browse/SPARK-12502) | Script /dev/run-tests fails when IBM Java is used |  Minor | Tests | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-12499](https://issues.apache.org/jira/browse/SPARK-12499) | make\_distribution should not override MAVEN\_OPTS |  Minor | Build | Adrian Bridgett | Adrian Bridgett |
| [SPARK-12489](https://issues.apache.org/jira/browse/SPARK-12489) | Fix minor issues found by Findbugs |  Minor | MLlib, Spark Core, SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-12477](https://issues.apache.org/jira/browse/SPARK-12477) | [SQL] Tungsten projection fails for null values in array fields |  Major | SQL | Pierre Borckmans | Pierre Borckmans |
| [SPARK-12470](https://issues.apache.org/jira/browse/SPARK-12470) | Incorrect calculation of row size in o.a.s.sql.catalyst.expressions.codegen.GenerateUnsafeRowJoiner |  Minor | SQL | Pete Robbins |  |
| [SPARK-12424](https://issues.apache.org/jira/browse/SPARK-12424) | The implementation of ParamMap#filter is wrong. |  Major | ML | Kousuke Saruta | Kousuke Saruta |
| [SPARK-12399](https://issues.apache.org/jira/browse/SPARK-12399) | Display correct error message when accessing REST API with an unknown app Id |  Minor | Web UI | Carson Wang | Carson Wang |
| [SPARK-12327](https://issues.apache.org/jira/browse/SPARK-12327) | lint-r checks fail with commented code |  Major | SparkR | Shivaram Venkataraman | Felix Cheung |
| [SPARK-12300](https://issues.apache.org/jira/browse/SPARK-12300) | Fix schema inferance on local collections |  Minor | PySpark, SQL | holdenk | holdenk |
| [SPARK-12010](https://issues.apache.org/jira/browse/SPARK-12010) | Spark JDBC requires support for column-name-free INSERT syntax |  Major | SQL | Christian Kurz | Christian Kurz |
| [SPARK-11823](https://issues.apache.org/jira/browse/SPARK-11823) | HiveThriftBinaryServerSuite tests timing out, leaves hanging processes |  Major | Tests | shane knapp | Josh Rosen |
| [SPARK-11394](https://issues.apache.org/jira/browse/SPARK-11394) | PostgreDialect cannot handle BYTE types |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12351](https://issues.apache.org/jira/browse/SPARK-12351) | Add documentation of submitting Mesos jobs with cluster mode |  Major | . | Timothy Chen | Timothy Chen |


