
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

## Release 1.4.2 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-8630](https://issues.apache.org/jira/browse/SPARK-8630) | Prevent from checkpointing QueueInputDStream |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-8475](https://issues.apache.org/jira/browse/SPARK-8475) | SparkSubmit with Ivy jars is very slow to load with no internet access |  Minor | Spark Submit | Nathan McCarthy | Burak Yavuz |
| [SPARK-7810](https://issues.apache.org/jira/browse/SPARK-7810) | rdd.py "\_load\_from\_socket" cannot load data from jvm socket if ipv6 is used |  Major | PySpark | Ai He | Ai He |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-8710](https://issues.apache.org/jira/browse/SPARK-8710) | ScalaReflection.mirror should be a def |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-8678](https://issues.apache.org/jira/browse/SPARK-8678) | Default values in Pipeline API should be immutable |  Major | ML, PySpark | Manoj Kumar | Manoj Kumar |
| [SPARK-8662](https://issues.apache.org/jira/browse/SPARK-8662) | [SparkR] SparkSQL tests fail in R 3.2 |  Major | R | Chris Freeman | Chris Freeman |
| [SPARK-8619](https://issues.apache.org/jira/browse/SPARK-8619) | Can't find the keytab file when recovering the streaming application. |  Major | Streaming | SaintBacchus | SaintBacchus |
| [SPARK-8607](https://issues.apache.org/jira/browse/SPARK-8607) | SparkR - Third party jars are not being added to classpath in SparkRBackend |  Critical | R | Chris Freeman | Chris Freeman |
| [SPARK-8606](https://issues.apache.org/jira/browse/SPARK-8606) | Exceptions in RDD.getPreferredLocations() and getPartitions() should not be able to crash DAGScheduler |  Critical | Scheduler | Josh Rosen | Josh Rosen |
| [SPARK-8525](https://issues.apache.org/jira/browse/SPARK-8525) | Bug in Streaming k-means documentation |  Minor | Documentation, MLlib | Oleksiy Dyagilev | Oleksiy Dyagilev |
| [SPARK-8437](https://issues.apache.org/jira/browse/SPARK-8437) | Using directory path without wildcard for filename slow for large number of files with wholeTextFiles and binaryFiles |  Minor | Input/Output | Ewan Leith | Sean Owen |
| [SPARK-8410](https://issues.apache.org/jira/browse/SPARK-8410) | Hive VersionsSuite RuntimeException |  Minor | SQL | Josiah Samuel Sathiadass | Burak Yavuz |
| [SPARK-8399](https://issues.apache.org/jira/browse/SPARK-8399) | Overlap between histograms and axis' name in Spark Streaming UI |  Minor | Streaming, Web UI | Benjamin Fradet | Benjamin Fradet |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-8715](https://issues.apache.org/jira/browse/SPARK-8715) | ArrayOutOfBoundsException for DataFrameStatSuite.crosstab |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-8634](https://issues.apache.org/jira/browse/SPARK-8634) | Fix flaky test StreamingListenerSuite "receiver info reporting" |  Critical | Streaming, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-8541](https://issues.apache.org/jira/browse/SPARK-8541) | sumApprox and meanApprox doctests are incorrect |  Minor | PySpark | Scott Taylor | Scott Taylor |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-8681](https://issues.apache.org/jira/browse/SPARK-8681) | crosstab column names in wrong order |  Critical | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-8355](https://issues.apache.org/jira/browse/SPARK-8355) | Python DataFrameReader/Writer should mirror scala |  Critical | SQL | Michael Armbrust | Cheolsoo Park |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


