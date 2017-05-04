
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

## Release 2.2.1 - Unreleased (as of 2017-05-04)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20047](https://issues.apache.org/jira/browse/SPARK-20047) | Constrained Logistic Regression |  Major | MLlib | DB Tsai | Yanbo Liang |
| [SPARK-14471](https://issues.apache.org/jira/browse/SPARK-14471) | The alias created in SELECT could be used in GROUP BY and followed expressions |  Major | SQL | Davies Liu | Takeshi Yamamuro |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20426](https://issues.apache.org/jira/browse/SPARK-20426) | OneForOneStreamManager occupies too much memory. |  Major | Shuffle | jin xing | jin xing |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20483](https://issues.apache.org/jira/browse/SPARK-20483) | Mesos Coarse mode may starve other Mesos frameworks if max cores is not a multiple of executor cores |  Minor | Mesos | Davis Shepherd | Davis Shepherd |
| [SPARK-20482](https://issues.apache.org/jira/browse/SPARK-20482) | Resolving Casts is too strict on having time zone set |  Major | SQL | Kris Mok | Kris Mok |
| [SPARK-20476](https://issues.apache.org/jira/browse/SPARK-20476) | Exception between "create table as" and "get\_json\_object" |  Major | SQL | cen yuhai | Xiao Li |
| [SPARK-20471](https://issues.apache.org/jira/browse/SPARK-20471) | Remove AggregateBenchmark testsuite warning: Two level hashmap is disabled but vectorized hashmap is enabled. |  Major | Tests | caoxuewen | caoxuewen |
| [SPARK-20534](https://issues.apache.org/jira/browse/SPARK-20534) | Outer generators skip missing records if used alone |  Major | SQL | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-20517](https://issues.apache.org/jira/browse/SPARK-20517) | Download link in history server UI is not correct |  Minor | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-20459](https://issues.apache.org/jira/browse/SPARK-20459) | JdbcUtils throws IllegalStateException: Cause already initialized after getting SQLException |  Minor | SQL | Jessie Yu | Sean Owen |
| [SPARK-20537](https://issues.apache.org/jira/browse/SPARK-20537) | OffHeapColumnVector reallocation may not copy existing data |  Major | Spark Core | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-20549](https://issues.apache.org/jira/browse/SPARK-20549) | java.io.CharConversionException: Invalid UTF-32 in JsonToStructs |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-20558](https://issues.apache.org/jira/browse/SPARK-20558) | clear InheritableThreadLocal variables in SparkContext when stopping it |  Major | Spark Core | Wenchen Fan | Wenchen Fan |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12837](https://issues.apache.org/jira/browse/SPARK-12837) | Spark driver requires large memory space for serialized results even there are no data collected to the driver |  Critical | SQL | Tien-Dung LE | Wenchen Fan |
| [SPARK-20421](https://issues.apache.org/jira/browse/SPARK-20421) | Mark JobProgressListener (and related classes) as deprecated |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |


