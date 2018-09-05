
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

## Release 2.2.3 - Unreleased (as of 2018-09-05)



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-23207](https://issues.apache.org/jira/browse/SPARK-23207) | Shuffle+Repartition on an DataFrame could lead to incorrect answers |  Blocker | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-24813](https://issues.apache.org/jira/browse/SPARK-24813) | HiveExternalCatalogVersionsSuite still flaky; fall back to Apache archive |  Major | Tests | Sean Owen | Sean Owen |
| [SPARK-24677](https://issues.apache.org/jira/browse/SPARK-24677) | TaskSetManager not updating successfulTaskDurations for old stage attempts |  Critical | Spark Core | dzcxzl | dzcxzl |
| [SPARK-24927](https://issues.apache.org/jira/browse/SPARK-24927) | The hadoop-provided profile doesn't play well with Snappy-compressed Parquet files |  Major | Build | Cheng Lian | Cheng Lian |
| [SPARK-24809](https://issues.apache.org/jira/browse/SPARK-24809) | Serializing LongHashedRelation in executor may result in data error |  Critical | SQL | Lijia Liu | Lijia Liu |
| [SPARK-24957](https://issues.apache.org/jira/browse/SPARK-24957) | Decimal arithmetic can lead to wrong values using codegen |  Major | SQL | David Vogelbacher | Marco Gaido |
| [SPARK-24948](https://issues.apache.org/jira/browse/SPARK-24948) | SHS filters wrongly some applications due to permission check |  Blocker | Web UI | Marco Gaido | Marco Gaido |
| [SPARK-24950](https://issues.apache.org/jira/browse/SPARK-24950) | scala DateTimeUtilsSuite daysToMillis and millisToDays fails w/java 8 181-b13 |  Major | Build, Tests | shane knapp | Chris Martin |
| [SPARK-25081](https://issues.apache.org/jira/browse/SPARK-25081) | Nested spill in ShuffleExternalSorter may access a released memory page |  Blocker | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-25144](https://issues.apache.org/jira/browse/SPARK-25144) | distinct on Dataset leads to exception due to Managed memory leak detected |  Major | SQL | Ayoub Benali | Dongjoon Hyun |
| [SPARK-25114](https://issues.apache.org/jira/browse/SPARK-25114) | RecordBinaryComparator may return wrong result when subtraction between two words is divisible by Integer.MAX\_VALUE |  Blocker | Spark Core | Jiang Xingbo | Jiang Xingbo |
| [SPARK-25164](https://issues.apache.org/jira/browse/SPARK-25164) | Parquet reader builds entire list of columns once for each column |  Minor | SQL | Bruce Robbins | Bruce Robbins |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-24564](https://issues.apache.org/jira/browse/SPARK-24564) | Add test suite for RecordBinaryComparator |  Minor | SQL | Jiang Xingbo | Jiang Xingbo |


