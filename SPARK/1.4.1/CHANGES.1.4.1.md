
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
# Changelog

## Release 1.4.1 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-7547](https://issues.apache.org/jira/browse/SPARK-7547) | Example code for ElasticNet |  Major | ML | Joseph K. Bradley | DB Tsai |
| [SPARK-7387](https://issues.apache.org/jira/browse/SPARK-7387) | CrossValidator example code in Python |  Minor | ML, PySpark | Xiangrui Meng | Ram Sriharsha |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-8141](https://issues.apache.org/jira/browse/SPARK-8141) | Precompute datatypes for partition columns and reuse it |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-8084](https://issues.apache.org/jira/browse/SPARK-8084) | SparkR install script should fail with error if any packages required are not found |  Major | Build, SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-8054](https://issues.apache.org/jira/browse/SPARK-8054) | Java compatibility fixes for MLlib 1.4 |  Major | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-8053](https://issues.apache.org/jira/browse/SPARK-8053) | ElementwiseProduct scalingVec param name should match between ml,mllib |  Minor | MLlib | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-8001](https://issues.apache.org/jira/browse/SPARK-8001) | Make AsynchronousListenerBus.waitUntilEmpty throw TimeoutException if timeout |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-7969](https://issues.apache.org/jira/browse/SPARK-7969) | Drop method on Dataframes should handle Column |  Minor | PySpark, SQL | Olivier Girardot | Mike Dusenberry |
| [SPARK-7705](https://issues.apache.org/jira/browse/SPARK-7705) | Cleanup of .sparkStaging directory fails if application is killed |  Minor | YARN | Wilfred Spiegelenburg | Weizhong |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-8112](https://issues.apache.org/jira/browse/SPARK-8112) | Received block event count through the StreamingListener can be negative |  Minor | Streaming | Tathagata Das | Shixiong Zhu |
| [SPARK-8098](https://issues.apache.org/jira/browse/SPARK-8098) | Show correct length of bytes on log page |  Minor | Web UI | Carson Wang | Carson Wang |
| [SPARK-8088](https://issues.apache.org/jira/browse/SPARK-8088) | ExecutionAllocationManager spamming INFO logs about "Lowering target number of executors" |  Major | Spark Core | Ryan Williams | Ryan Williams |
| [SPARK-8085](https://issues.apache.org/jira/browse/SPARK-8085) | Pass in user-specified schema in read.df |  Major | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-8083](https://issues.apache.org/jira/browse/SPARK-8083) | Fix return to drivers link in Mesos driver page |  Major | Mesos, Web UI | Timothy Chen | Timothy Chen |
| [SPARK-8079](https://issues.apache.org/jira/browse/SPARK-8079) | NPE when HadoopFsRelation.prepareForWriteJob throws exception |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-8063](https://issues.apache.org/jira/browse/SPARK-8063) | Spark master URL conflict between MASTER env variable and --master command line option |  Major | SparkR | Sun Rui | Sun Rui |
| [SPARK-8051](https://issues.apache.org/jira/browse/SPARK-8051) | StringIndexerModel (and other models) shouldn't complain if the input column is missing. |  Major | ML | Xiangrui Meng | Xiangrui Meng |
| [SPARK-8043](https://issues.apache.org/jira/browse/SPARK-8043) | update NaiveBayes and SVM examples in doc |  Minor | MLlib | yuhao yang | yuhao yang |
| [SPARK-8032](https://issues.apache.org/jira/browse/SPARK-8032) | Make NumPy version checking in mllib/\_\_init\_\_.py |  Major | MLlib, PySpark | Manoj Kumar | Manoj Kumar |
| [SPARK-8004](https://issues.apache.org/jira/browse/SPARK-8004) | Spark does not enclose column names when fetchting from jdbc sources |  Major | SQL | Rene Treffer | Liang-Chi Hsieh |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-7989](https://issues.apache.org/jira/browse/SPARK-7989) | Fix flaky tests in ExternalShuffleServiceSuite and SparkListenerWithClusterSuite |  Major | Spark Core, Tests | Shixiong Zhu | Shixiong Zhu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-8146](https://issues.apache.org/jira/browse/SPARK-8146) | DataFrame Python API: Alias replace in DataFrameNaFunctions |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8074](https://issues.apache.org/jira/browse/SPARK-8074) | Parquet should throw AnalysisException during setup for data type/name related failures |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-8060](https://issues.apache.org/jira/browse/SPARK-8060) | Improve Python reader/writer interface doc and testing |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-7991](https://issues.apache.org/jira/browse/SPARK-7991) | Python DataFrame: support passing a list into describe |  Major | SQL | Reynold Xin | Amey Chaugule |
| [SPARK-7980](https://issues.apache.org/jira/browse/SPARK-7980) | Support SQLContext.range(end) |  Major | SQL | Reynold Xin | Animesh Baranawal |
| [SPARK-7558](https://issues.apache.org/jira/browse/SPARK-7558) | Log test name when starting and finishing each test |  Major | Tests | Patrick Wendell | Andrew Or |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-8145](https://issues.apache.org/jira/browse/SPARK-8145) | Trigger a double click on the span to show full job description |  Major | Web UI | q79969786 | q79969786 |


