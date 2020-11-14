
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
# Apache Hive Changelog

## Release 2.1.2 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-12594](https://issues.apache.org/jira/browse/HIVE-12594) | X lock on partition should not conflict with S lock on DB |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-17048](https://issues.apache.org/jira/browse/HIVE-17048) | Pass HiveOperation info to HiveSemanticAnalyzerHook through HiveSemanticAnalyzerHookContext |  Major | Hooks | Aihua Xu | Aihua Xu |
| [HIVE-21174](https://issues.apache.org/jira/browse/HIVE-21174) | hive.stats.ndv.error parameter documentation issue |  Major | Documentation | Pablo Junge | Pablo Junge |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-15562](https://issues.apache.org/jira/browse/HIVE-15562) | LLAP TaskExecutorService race can lead to some fragments being permanently lost |  Critical | . | Siddharth Seth | Siddharth Seth |
| [HIVE-15551](https://issues.apache.org/jira/browse/HIVE-15551) | memory leak in directsql for mysql+bonecp specific initialization |  Major | Metastore | Xiaomin Zhang | Xiaomin Zhang |
| [HIVE-15872](https://issues.apache.org/jira/browse/HIVE-15872) | The PERCENTILE\_APPROX UDAF does not work with empty set |  Major | UDF | Chaozhong Yang | Chaozhong Yang |
| [HIVE-14804](https://issues.apache.org/jira/browse/HIVE-14804) | HPLSQL multiple db connection does not switch back to Hive |  Blocker | hpl/sql | Dmitry Kozlov | Hui Fei |
| [HIVE-16239](https://issues.apache.org/jira/browse/HIVE-16239) | remove useless hiveserver |  Major | CLI | Hui Fei | Hui Fei |
| [HIVE-17664](https://issues.apache.org/jira/browse/HIVE-17664) | Refactor and add new tests |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-17831](https://issues.apache.org/jira/browse/HIVE-17831) | HiveSemanticAnalyzerHookContext does not update the HiveOperation after sem.analyze() is called |  Major | Hive | Sergio Peña | Aihua Xu |
| [HIVE-16480](https://issues.apache.org/jira/browse/HIVE-16480) | ORC file with empty array\<double\> and array\<float\> fails to read |  Major | . | David Capwell | Owen O'Malley |
| [HIVE-22480](https://issues.apache.org/jira/browse/HIVE-22480) | IndexOutOfBounds exception while reading ORC files written with empty positions list in first row index entry |  Major | ORC | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |


