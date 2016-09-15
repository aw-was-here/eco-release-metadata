
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

## Release 1.6.3 - Unreleased (as of 2016-09-15)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-16664](https://issues.apache.org/jira/browse/SPARK-16664) | Spark 1.6.2 - Persist call on Data frames with more than 200 columns is wiping out the data. |  Blocker | Spark Core | Satish Kolli | Wesley Tang |
| [SPARK-16751](https://issues.apache.org/jira/browse/SPARK-16751) | Upgrade derby to 10.12.1.1 from 10.11.1.1 |  Major | Build | Adam Roberts | Adam Roberts |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-16956](https://issues.apache.org/jira/browse/SPARK-16956) | Make ApplicationState.MAX\_NUM\_RETRY configurable |  Major | Deploy | Josh Rosen | Josh Rosen |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-15761](https://issues.apache.org/jira/browse/SPARK-15761) | pyspark shell should load if PYSPARK\_DRIVER\_PYTHON is ipython an Python3 |  Minor | PySpark | Manoj Kumar | Manoj Kumar |
| [SPARK-16796](https://issues.apache.org/jira/browse/SPARK-16796) | Visible passwords on Spark environment page |  Trivial | Web UI | Artur Sukhenko | Artur Sukhenko |
| [SPARK-17316](https://issues.apache.org/jira/browse/SPARK-17316) | Don\'t block StandaloneSchedulerBackend.executorRemoved |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-17378](https://issues.apache.org/jira/browse/SPARK-17378) | Upgrade snappy-java to 1.1.2.6 |  Trivial | Build | Adam Roberts | Adam Roberts |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-6005](https://issues.apache.org/jira/browse/SPARK-6005) | Flaky test: o.a.s.streaming.kafka.DirectKafkaStreamSuite.offset recovery |  Major | Streaming | Iulian Dragos | Shixiong Zhu |
| [SPARK-15606](https://issues.apache.org/jira/browse/SPARK-15606) | Driver hang in o.a.s.DistributedSuite on 2 core machine |  Major | Spark Core | Pete Robbins | Pete Robbins |
| [SPARK-16044](https://issues.apache.org/jira/browse/SPARK-16044) | input\_file\_name() returns empty strings in data sources based on NewHadoopRDD. |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-16077](https://issues.apache.org/jira/browse/SPARK-16077) | Python UDF may fail because of six |  Major | PySpark | Davies Liu | Davies Liu |
| [SPARK-16257](https://issues.apache.org/jira/browse/SPARK-16257) | spark-ec2 script not updated for 1.6.2 release |  Minor | EC2 | Brian Uri | Brian Uri |
| [SPARK-16313](https://issues.apache.org/jira/browse/SPARK-16313) | Spark should not silently drop exceptions in file listing |  Critical | SQL | Reynold Xin | Reynold Xin |
| [SPARK-16182](https://issues.apache.org/jira/browse/SPARK-16182) | Utils.scala -- terminateProcess() should call Process.destroyForcibly() if and only if Process.destroy() fails |  Critical | Spark Core | Christian Chua | Sean Owen |
| [SPARK-16353](https://issues.apache.org/jira/browse/SPARK-16353) | Intended javadoc options are not honored for Java unidoc |  Minor | Build, Documentation | Michael Allman | Michael Allman |
| [SPARK-16385](https://issues.apache.org/jira/browse/SPARK-16385) | NoSuchMethodException thrown by Utils.waitForProcess |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-16422](https://issues.apache.org/jira/browse/SPARK-16422) | maven 3.3.3 missing from mirror, breaks older builds |  Critical | Build | Thomas Graves | Sean Owen |
| [SPARK-16489](https://issues.apache.org/jira/browse/SPARK-16489) | Test harness to prevent expression code generation from reusing variable names |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-16375](https://issues.apache.org/jira/browse/SPARK-16375) | [Spark web UI]:The wrong value(numCompletedTasks) has been assigned to the variable numSkippedTasks |  Major | Web UI | marymwu | Alex Bozarth |
| [SPARK-16440](https://issues.apache.org/jira/browse/SPARK-16440) | Undeleted broadcast variables in Word2Vec causing OoM for long runs |  Major | MLlib | Anthony Truchet | Anthony Truchet |
| [SPARK-16656](https://issues.apache.org/jira/browse/SPARK-16656) | CreateTableAsSelectSuite is flaky |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-16873](https://issues.apache.org/jira/browse/SPARK-16873) | force spill NPE |  Major | Spark Core | sharkd tu | sharkd tu |
| [SPARK-16925](https://issues.apache.org/jira/browse/SPARK-16925) | Spark tasks which cause JVM to exit with a zero exit code may cause app to hang in Standalone mode |  Critical | Deploy | Josh Rosen | Josh Rosen |
| [SPARK-16409](https://issues.apache.org/jira/browse/SPARK-16409) | regexp\_extract with optional groups causes NPE |  Major | Spark Core | Max Moroz | Sean Owen |
| [SPARK-16939](https://issues.apache.org/jira/browse/SPARK-16939) | Fix build error by using `Tuple1` explicitly in StringFunctionSuite |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-17003](https://issues.apache.org/jira/browse/SPARK-17003) | release-build.sh is missing hive-thriftserver for scala 2.11 |  Major | Build | Yin Huai | Yin Huai |
| [SPARK-17038](https://issues.apache.org/jira/browse/SPARK-17038) | StreamingSource reports metrics for lastCompletedBatch instead of lastReceivedBatch |  Minor | Streaming | Oz Ben-Ami | Xin Ren |
| [SPARK-17404](https://issues.apache.org/jira/browse/SPARK-17404) | [BRANCH-1.6] Broken test: showDF in test\_sparkSQL.R |  Major | SparkR | Yin Huai | Sun Rui |
| [SPARK-17356](https://issues.apache.org/jira/browse/SPARK-17356) | A large Metadata filed in Alias can cause OOM when calling TreeNode.toJSON |  Major | SQL | Sean Zhong | Sean Zhong |
| [SPARK-17245](https://issues.apache.org/jira/browse/SPARK-17245) | NPE thrown by ClientWrapper.conf |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-17531](https://issues.apache.org/jira/browse/SPARK-17531) | Don\'t initialize Hive Listeners for the Execution Client |  Major | SQL | Burak Yavuz | Burak Yavuz |
| [SPARK-17465](https://issues.apache.org/jira/browse/SPARK-17465) | Inappropriate memory management in `org.apache.spark.storage.MemoryStore` may lead to memory leak |  Major | Spark Core | Xing Shi | Xing Shi |
| [SPARK-17547](https://issues.apache.org/jira/browse/SPARK-17547) | Temporary shuffle data files may be leaked following exception in write |  Major | Shuffle | Josh Rosen | Josh Rosen |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-17102](https://issues.apache.org/jira/browse/SPARK-17102) | bypass UserDefinedGenerator for json format check |  Major | SQL | Wenchen Fan | Wenchen Fan |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-16488](https://issues.apache.org/jira/browse/SPARK-16488) | Codegen variable namespace collision for pmod and partitionBy |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-16491](https://issues.apache.org/jira/browse/SPARK-16491) | Crc32 should use different variable names (not "checksum") |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-16514](https://issues.apache.org/jira/browse/SPARK-16514) | RegexExtract and RegexReplace crash on non-nullable input |  Critical | SQL | Eric Liang | Eric Liang |


