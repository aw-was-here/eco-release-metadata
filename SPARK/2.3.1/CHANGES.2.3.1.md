
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

## Release 2.3.1 - Unreleased (as of 2018-01-25)



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-22956](https://issues.apache.org/jira/browse/SPARK-22956) | Union Stream Failover Cause \`IllegalStateException\` |  Major | Structured Streaming | Li Yuanjian | Li Yuanjian |
| [SPARK-23192](https://issues.apache.org/jira/browse/SPARK-23192) | Hint is lost after using cached data |  Critical | SQL | Xiao Li | Xiao Li |
| [SPARK-23177](https://issues.apache.org/jira/browse/SPARK-23177) | PySpark parameter-less UDFs raise exception if applied after distinct |  Major | PySpark | Jakub Wasikowski | Liang-Chi Hsieh |
| [SPARK-23148](https://issues.apache.org/jira/browse/SPARK-23148) | spark.read.csv with multiline=true gives FileNotFoundException if path contains spaces |  Major | SQL | Bogdan Raducanu | Henry Robinson |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-22389](https://issues.apache.org/jira/browse/SPARK-22389) | partitioning reporting |  Major | SQL | Wenchen Fan | Wenchen Fan |


