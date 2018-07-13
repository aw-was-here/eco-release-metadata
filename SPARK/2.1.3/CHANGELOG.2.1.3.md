
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

## Release 2.1.3 - 2018-07-01



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-18136](https://issues.apache.org/jira/browse/SPARK-18136) | Make PySpark pip install works on windows |  Major | PySpark | holdenk | Jakub Nowacki |
| [SPARK-22688](https://issues.apache.org/jira/browse/SPARK-22688) | Upgrade Janino version to 3.0.8 |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22897](https://issues.apache.org/jira/browse/SPARK-22897) | Expose  stageAttemptId in TaskContext |  Minor | Spark Core | Xianjin YE | Xianjin YE |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-18971](https://issues.apache.org/jira/browse/SPARK-18971) | Netty issue may cause the shuffle client hang |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-21278](https://issues.apache.org/jira/browse/SPARK-21278) | Upgrade to Py4J 0.10.6 |  Major | PySpark | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-21551](https://issues.apache.org/jira/browse/SPARK-21551) | pyspark's collect fails when getaddrinfo is too slow |  Critical | PySpark | peay | peay |
| [SPARK-22083](https://issues.apache.org/jira/browse/SPARK-22083) | When dropping multiple blocks to disk, Spark should release all locks on a failure |  Major | Block Manager, Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-20466](https://issues.apache.org/jira/browse/SPARK-20466) | HadoopRDD#addLocalConfiguration throws NPE |  Minor | YARN | liyunzhang | Sahil Takiar |
| [SPARK-22206](https://issues.apache.org/jira/browse/SPARK-22206) | gapply in R can't work on empty grouping columns |  Major | SparkR, SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-22273](https://issues.apache.org/jira/browse/SPARK-22273) | Fix key/value schema field names in HashMapGenerators. |  Minor | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-21991](https://issues.apache.org/jira/browse/SPARK-21991) | [LAUNCHER] LauncherServer acceptConnections thread sometime dies if machine has very high load |  Minor | Spark Submit | Andrea Zito | Andrea Zito |
| [SPARK-17902](https://issues.apache.org/jira/browse/SPARK-17902) | collect() ignores stringsAsFactors |  Major | SparkR | Hossein Falaki | Hyukjin Kwon |
| [SPARK-22429](https://issues.apache.org/jira/browse/SPARK-22429) | Streaming checkpointing code does not retry after failure due to NullPointerException |  Minor | DStreams | Tristan Stevens | Tristan Stevens |
| [SPARK-22327](https://issues.apache.org/jira/browse/SPARK-22327) | R CRAN check fails on non-latest branches |  Major | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-22377](https://issues.apache.org/jira/browse/SPARK-22377) | Maven nightly snapshot jenkins jobs are broken on multiple workers due to lsof |  Major | Build | Xin Lu | Hyukjin Kwon |
| [SPARK-22548](https://issues.apache.org/jira/browse/SPARK-22548) | Incorrect nested AND expression pushed down to JDBC data source |  Major | SQL | Jia Li | Jia Li |
| [SPARK-22373](https://issues.apache.org/jira/browse/SPARK-22373) | Intermittent NullPointerException in org.codehaus.janino.IClass.isAssignableFrom |  Minor | Spark Core | Dan Meany |  |
| [SPARK-22862](https://issues.apache.org/jira/browse/SPARK-22862) | Docs on lazy elimination of columns missing from an encoder. |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-23053](https://issues.apache.org/jira/browse/SPARK-23053) | taskBinarySerialization and task partitions calculate in DagScheduler.submitMissingTasks should keep the same RDD checkpoint status |  Major | Scheduler, Spark Core | huangtengfei | huangtengfei |
| [SPARK-23438](https://issues.apache.org/jira/browse/SPARK-23438) | DStreams could lose blocks with WAL enabled when driver crashes |  Critical | DStreams | Gabor Somogyi | Gabor Somogyi |
| [SPARK-23697](https://issues.apache.org/jira/browse/SPARK-23697) | Accumulators of Spark 1.x no longer work with Spark 2.x |  Major | Spark Core | Sergey Zhemzhitsky | Wenchen Fan |
| [SPARK-24257](https://issues.apache.org/jira/browse/SPARK-24257) | LongToUnsafeRowMap calculate the new size may be wrong |  Blocker | SQL | dzcxzl | dzcxzl |
| [SPARK-23732](https://issues.apache.org/jira/browse/SPARK-23732) | Broken link to scala source code in Spark Scala api Scaladoc |  Trivial | Build, Documentation, Project Infra | Yogesh Tewari | Marcelo Vanzin |
| [SPARK-24589](https://issues.apache.org/jira/browse/SPARK-24589) | OutputCommitCoordinator may allow duplicate commits |  Blocker | Spark Core | Marcelo Vanzin | Marcelo Vanzin |


