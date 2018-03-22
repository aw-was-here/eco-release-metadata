
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

## Release 2.3.1 - Unreleased (as of 2018-03-22)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-23628](https://issues.apache.org/jira/browse/SPARK-23628) | WholeStageCodegen can generate methods with too many params |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-23624](https://issues.apache.org/jira/browse/SPARK-23624) | Revise doc of method pushFilters |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-23695](https://issues.apache.org/jira/browse/SPARK-23695) | Confusing error message for PySpark's Kinesis tests when its jar is missing but enabled |  Trivial | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23644](https://issues.apache.org/jira/browse/SPARK-23644) | SHS with proxy doesn't show applications |  Minor | Spark Core, Web UI | Marco Gaido | Marco Gaido |
| [SPARK-23553](https://issues.apache.org/jira/browse/SPARK-23553) | Tests should not assume the default value of \`spark.sql.sources.default\` |  Major | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23691](https://issues.apache.org/jira/browse/SPARK-23691) | Use sql\_conf util in PySpark tests where possible |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23264](https://issues.apache.org/jira/browse/SPARK-23264) | Support interval values without INTERVAL clauses |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-23020](https://issues.apache.org/jira/browse/SPARK-23020) | Re-enable Flaky Test: org.apache.spark.launcher.SparkLauncherSuite.testInProcessLauncher |  Blocker | Tests | Sameer Agarwal | Marcelo Vanzin |
| [SPARK-23457](https://issues.apache.org/jira/browse/SPARK-23457) | Register task completion listeners first for ParquetFileFormat |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23436](https://issues.apache.org/jira/browse/SPARK-23436) | Incorrect Date column Inference in partition discovery |  Major | SQL | Apoorva Sareen | Marco Gaido |
| [SPARK-23434](https://issues.apache.org/jira/browse/SPARK-23434) | Spark should not warn \`metadata directory\` for a HDFS file path |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23490](https://issues.apache.org/jira/browse/SPARK-23490) | Check storage.locationUri with existing table in CreateTable |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-23438](https://issues.apache.org/jira/browse/SPARK-23438) | DStreams could lose blocks with WAL enabled when driver crashes |  Critical | DStreams | Gabor Somogyi | Gabor Somogyi |
| [SPARK-23449](https://issues.apache.org/jira/browse/SPARK-23449) | Extra java options lose order in Docker context |  Minor | Kubernetes | Andrew Korzhuev | Andrew Korzhuev |
| [SPARK-23523](https://issues.apache.org/jira/browse/SPARK-23523) | Incorrect result caused by the rule OptimizeMetadataOnlyQuery |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-23365](https://issues.apache.org/jira/browse/SPARK-23365) | DynamicAllocation with failure in straggler task can lead to a hung spark job |  Major | Scheduler | Imran Rashid | Imran Rashid |
| [SPARK-23448](https://issues.apache.org/jira/browse/SPARK-23448) | Dataframe returns wrong result when column don't respect datatype |  Major | SQL | Ahmed ZAROUI | Liang-Chi Hsieh |
| [SPARK-23508](https://issues.apache.org/jira/browse/SPARK-23508) | blockManagerIdCache in BlockManagerId may cause oom |  Major | Deploy, Spark Core | zhoukang | zhoukang |
| [SPARK-23517](https://issues.apache.org/jira/browse/SPARK-23517) | Make pyspark.util.\_exception\_message produce the trace from Java side for Py4JJavaError |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23551](https://issues.apache.org/jira/browse/SPARK-23551) | Exclude \`hadoop-mapreduce-client-core\` dependency from \`orc-mapreduce\` |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23570](https://issues.apache.org/jira/browse/SPARK-23570) | Add Spark-2.3 in HiveExternalCatalogVersionsSuite |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-23569](https://issues.apache.org/jira/browse/SPARK-23569) | pandas\_udf does not work with type-annotated python functions |  Major | PySpark | Stu (Michael Stewart) | Stu (Michael Stewart) |
| [SPARK-23525](https://issues.apache.org/jira/browse/SPARK-23525) | ALTER TABLE CHANGE COLUMN doesn't work for external hive table |  Major | SQL | Pavlo Skliar | Jiang Xingbo |
| [SPARK-23524](https://issues.apache.org/jira/browse/SPARK-23524) | Big local shuffle blocks should not be checked for corruption. |  Major | Spark Core | jin xing | jin xing |
| [SPARK-23630](https://issues.apache.org/jira/browse/SPARK-23630) | Spark-on-YARN missing user customizations of hadoop config |  Major | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-23173](https://issues.apache.org/jira/browse/SPARK-23173) | from\_json can produce nulls for fields which are marked as non-nullable |  Major | SQL | Herman van Hovell | Michał Świtakowski |
| [SPARK-23462](https://issues.apache.org/jira/browse/SPARK-23462) | Improve the error message in \`StructType\` |  Major | SQL | Xiao Li | Xiayun Sun |
| [SPARK-23658](https://issues.apache.org/jira/browse/SPARK-23658) | InProcessAppHandle uses the wrong class in getLogger |  Minor | Spark Submit | Sahil Takiar | Sahil Takiar |
| [SPARK-23671](https://issues.apache.org/jira/browse/SPARK-23671) | SHS is ignoring number of replay threads |  Critical | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-23608](https://issues.apache.org/jira/browse/SPARK-23608) | SHS needs synchronization between attachSparkUI and detachSparkUI functions |  Minor | Spark Core, Web UI | Ye Zhou | Ye Zhou |
| [SPARK-23670](https://issues.apache.org/jira/browse/SPARK-23670) | Memory leak of SparkPlanGraphWrapper in sparkUI |  Major | SQL | Myroslav Lisniak | Myroslav Lisniak |
| [SPARK-23623](https://issues.apache.org/jira/browse/SPARK-23623) | Avoid concurrent use of cached KafkaConsumer in CachedKafkaConsumer (kafka-0-10-sql) |  Critical | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23728](https://issues.apache.org/jira/browse/SPARK-23728) | ML test with expected exceptions testing streaming fails on 2.3 |  Major | ML, Tests | Attila Zsolt Piros | Attila Zsolt Piros |
| [SPARK-23660](https://issues.apache.org/jira/browse/SPARK-23660) | Yarn throws exception in cluster mode when the application is small |  Minor | YARN | Gabor Somogyi | Gabor Somogyi |
| [SPARK-23288](https://issues.apache.org/jira/browse/SPARK-23288) | Incorrect number of written records in structured streaming |  Major | SQL, Structured Streaming | Yuriy Bondaruk | Gabor Somogyi |
| [SPARK-23729](https://issues.apache.org/jira/browse/SPARK-23729) | Glob resolution breaks remote naming of files/archives |  Major | Spark Submit | Mihaly Toth | Mihaly Toth |
| [SPARK-23760](https://issues.apache.org/jira/browse/SPARK-23760) | CodegenContext.withSubExprEliminationExprs should save/restore CSE state correctly |  Major | SQL | Kris Mok | Kris Mok |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-22882](https://issues.apache.org/jira/browse/SPARK-22882) | ML test for StructuredStreaming: spark.ml.classification |  Major | ML, Tests | Joseph K. Bradley | Weichen Xu |
| [SPARK-22915](https://issues.apache.org/jira/browse/SPARK-22915) | ML test for StructuredStreaming: spark.ml.feature, N-Z |  Major | ML, Tests | Joseph K. Bradley | Attila Zsolt Piros |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-23706](https://issues.apache.org/jira/browse/SPARK-23706) | spark.conf.get(value, default=None) should produce None in PySpark |  Minor | PySpark | Hyukjin Kwon |  |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-23329](https://issues.apache.org/jira/browse/SPARK-23329) | Update the function descriptions with the arguments and returned values of the trigonometric functions |  Minor | SQL | Xiao Li | Mihaly Toth |
| [SPARK-23642](https://issues.apache.org/jira/browse/SPARK-23642) | isZero scaladoc for LongAccumulator describes wrong method |  Minor | Documentation | Sean | Sean |
| [SPARK-23601](https://issues.apache.org/jira/browse/SPARK-23601) | Remove .md5 files from release |  Minor | Build | Sean Owen | Sean Owen |


