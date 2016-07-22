
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

## Release 1.6.3 - Unreleased (as of 2016-07-22)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-15761](https://issues.apache.org/jira/browse/SPARK-15761) | pyspark shell should load if PYSPARK\_DRIVER\_PYTHON is ipython an Python3 |  Minor | PySpark | Manoj Kumar | Manoj Kumar |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-6005](https://issues.apache.org/jira/browse/SPARK-6005) | Flaky test: o.a.s.streaming.kafka.DirectKafkaStreamSuite.offset recovery |  Major | Streaming | Iulian Dragos | Shixiong Zhu |
| [SPARK-15606](https://issues.apache.org/jira/browse/SPARK-15606) | Driver hang in o.a.s.DistributedSuite on 2 core machine |  Major | Spark Core | Pete Robbins | Pete Robbins |
| [SPARK-16044](https://issues.apache.org/jira/browse/SPARK-16044) | input\_file\_name() returns empty strings in data sources based on NewHadoopRDD. |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-16257](https://issues.apache.org/jira/browse/SPARK-16257) | spark-ec2 script not updated for 1.6.2 release |  Minor | EC2 | Brian Uri | Brian Uri |
| [SPARK-16313](https://issues.apache.org/jira/browse/SPARK-16313) | Spark should not silently drop exceptions in file listing |  Critical | SQL | Reynold Xin | Reynold Xin |
| [SPARK-16182](https://issues.apache.org/jira/browse/SPARK-16182) | Utils.scala -- terminateProcess() should call Process.destroyForcibly() if and only if Process.destroy() fails |  Critical | Spark Core | Christian Chua | Sean Owen |
| [SPARK-16353](https://issues.apache.org/jira/browse/SPARK-16353) | Intended javadoc options are not honored for Java unidoc |  Minor | Build, Documentation | Michael Allman | Michael Allman |
| [SPARK-16385](https://issues.apache.org/jira/browse/SPARK-16385) | NoSuchMethodException thrown by Utils.waitForProcess |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-16422](https://issues.apache.org/jira/browse/SPARK-16422) | maven 3.3.3 missing from mirror, breaks older builds |  Critical | Build | Thomas Graves | Sean Owen |
| [SPARK-16489](https://issues.apache.org/jira/browse/SPARK-16489) | Test harness to prevent expression code generation from reusing variable names |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-16375](https://issues.apache.org/jira/browse/SPARK-16375) | [Spark web UI]:The wrong value(numCompletedTasks) has been assigned to the variable numSkippedTasks |  Major | Web UI | marymwu | Alex Bozarth |
| [SPARK-16440](https://issues.apache.org/jira/browse/SPARK-16440) | Undeleted broadcast variables in Word2Vec causing OoM for long runs |  Major | MLlib | Anthony Truchet | Anthony Truchet |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-16488](https://issues.apache.org/jira/browse/SPARK-16488) | Codegen variable namespace collision for pmod and partitionBy |  Major | SQL | Sameer Agarwal | Sameer Agarwal |
| [SPARK-16491](https://issues.apache.org/jira/browse/SPARK-16491) | Crc32 should use different variable names (not "checksum") |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-16514](https://issues.apache.org/jira/browse/SPARK-16514) | RegexExtract and RegexReplace crash on non-nullable input |  Critical | SQL | Eric Liang | Eric Liang |


