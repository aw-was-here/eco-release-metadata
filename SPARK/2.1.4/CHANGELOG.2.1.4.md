
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

## Release 2.1.4 - Unreleased (as of 2018-09-12)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-25089](https://issues.apache.org/jira/browse/SPARK-25089) | remove lintr checks for 2.0 and 2.1 |  Minor | Build | shane knapp | shane knapp |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-23207](https://issues.apache.org/jira/browse/SPARK-23207) | Shuffle+Repartition on an DataFrame could lead to incorrect answers |  Blocker | SQL | Xingbo Jiang | Xingbo Jiang |
| [SPARK-24809](https://issues.apache.org/jira/browse/SPARK-24809) | Serializing LongHashedRelation in executor may result in data error |  Critical | SQL | Lijia Liu | Lijia Liu |
| [SPARK-24950](https://issues.apache.org/jira/browse/SPARK-24950) | scala DateTimeUtilsSuite daysToMillis and millisToDays fails w/java 8 181-b13 |  Major | Build, Tests | shane knapp | Chris Martin |


