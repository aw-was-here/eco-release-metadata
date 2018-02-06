
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

## Release 2.1.3 - Unreleased (as of 2018-02-06)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-18136](https://issues.apache.org/jira/browse/SPARK-18136) | Make PySpark pip install works on windows |  Major | PySpark | holdenk | Jakub Nowacki |
| [SPARK-22688](https://issues.apache.org/jira/browse/SPARK-22688) | Upgrade Janino version to 3.0.8 |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-18971](https://issues.apache.org/jira/browse/SPARK-18971) | Netty issue may cause the shuffle client hang |  Minor | Spark Core | Shixiong Zhu | Shixiong Zhu |
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


