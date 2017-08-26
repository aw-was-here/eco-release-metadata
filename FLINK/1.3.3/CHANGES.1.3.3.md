
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
# Apache Flink Changelog

## Release 1.3.3 - Unreleased (as of 2017-08-26)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-7127](https://issues.apache.org/jira/browse/FLINK-7127) | Remove unnecessary null check or add null check |  Trivial | State Backends, Checkpointing | Ufuk Celebi | Dmitrii Kniazev |
| [FLINK-7382](https://issues.apache.org/jira/browse/FLINK-7382) | Broken links in \`Apache Flink Documentation\`  page |  Minor | Documentation | Hai Zhou | Hai Zhou |
| [FLINK-7422](https://issues.apache.org/jira/browse/FLINK-7422) | Upgrade Kinesis Client Library (KCL) in flink-connector-kinesis from 1.6.2 to 1.8.1 |  Major | Kinesis Connector | Bowen Li | Bowen Li |
| [FLINK-7405](https://issues.apache.org/jira/browse/FLINK-7405) | Reduce spamming warning logging from DatadogHttpReporter |  Minor | Metrics | Bowen Li | Bowen Li |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-7283](https://issues.apache.org/jira/browse/FLINK-7283) | PythonPlanBinderTest issues with python paths |  Major | Python API, Tests | Nico Kruber | Nico Kruber |
| [FLINK-6493](https://issues.apache.org/jira/browse/FLINK-6493) | Ineffective null check in RegisteredOperatorBackendStateMetaInfo#equals() |  Minor | State Backends, Checkpointing | Ted Yu | mingleizhang |
| [FLINK-7356](https://issues.apache.org/jira/browse/FLINK-7356) | misleading s3 file uri in configuration file |  Major | Configuration | Bowen Li | Bowen Li |
| [FLINK-7221](https://issues.apache.org/jira/browse/FLINK-7221) | JDBCOutputFormat swallows errors on last batch |  Major | Batch Connectors and Input/Output Formats | Ken Geis | Fabian Hueske |
| [FLINK-7385](https://issues.apache.org/jira/browse/FLINK-7385) | Fix ArrayIndexOutOfBoundsException when object-reuse is enabled |  Blocker | DataStream API | Ruidong Li | Ruidong Li |
| [FLINK-7396](https://issues.apache.org/jira/browse/FLINK-7396) | Don't put multiple directories in HADOOP\_CONF\_DIR in config.sh |  Blocker | Startup Shell Scripts | Aljoscha Krettek | Fang Yong |
| [FLINK-7441](https://issues.apache.org/jira/browse/FLINK-7441) | Double quote string literals is not supported in Table API and SQL |  Major | Table API & SQL | Jark Wu | Jark Wu |
| [FLINK-7453](https://issues.apache.org/jira/browse/FLINK-7453) | FlinkKinesisProducer logs empty aws region |  Minor | . | Bowen Li | Bowen Li |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-7429](https://issues.apache.org/jira/browse/FLINK-7429) | Add restore from 1.2 / 1.3 migration tests for FlinkKinesisConsumer |  Blocker | Kinesis Connector, Tests | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |


