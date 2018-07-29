
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

## Release 2.2.3 - Unreleased (as of 2018-07-29)



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-24813](https://issues.apache.org/jira/browse/SPARK-24813) | HiveExternalCatalogVersionsSuite still flaky; fall back to Apache archive |  Major | Tests | Sean Owen | Sean Owen |
| [SPARK-24677](https://issues.apache.org/jira/browse/SPARK-24677) | TaskSetManager not updating successfulTaskDurations for old stage attempts |  Critical | Spark Core | dzcxzl | dzcxzl |
| [SPARK-24927](https://issues.apache.org/jira/browse/SPARK-24927) | The hadoop-provided profile doesn't play well with Snappy-compressed Parquet files |  Major | Build | Cheng Lian | Cheng Lian |


