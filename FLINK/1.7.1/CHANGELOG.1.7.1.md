
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

## Release 1.7.1 - 2018-12-21



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-11029](https://issues.apache.org/jira/browse/FLINK-11029) | Incorrect parameter in Working with state doc |  Minor | Documentation | Yangze Guo | Yangze Guo |
| [FLINK-10359](https://issues.apache.org/jira/browse/FLINK-10359) | Scala example in DataSet docs is broken |  Major | Documentation | Fabian Hueske | vinoyang |
| [FLINK-11080](https://issues.apache.org/jira/browse/FLINK-11080) | Define flink-connector-elasticsearch6 uber-jar dependencies via artifactSet |  Major | Build System, Connectors / ElasticSearch, Table SQL / Client | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10566](https://issues.apache.org/jira/browse/FLINK-10566) | Flink Planning is exponential in the number of stages |  Major | API / DataSet | Robert Bradshaw | Maximilian Michels |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-11017](https://issues.apache.org/jira/browse/FLINK-11017) | Time interval for window aggregations in SQL is wrongly translated if specified with YEAR\_MONTH resolution |  Major | Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-10149](https://issues.apache.org/jira/browse/FLINK-10149) | Fink Mesos allocates extra port when not configured to do so |  Minor | Deployment / Mesos | Rune Skou Larsen | Gary Yao |
| [FLINK-11047](https://issues.apache.org/jira/browse/FLINK-11047) | CoGroupGroupSortTranslationTest does not compile with scala 2.12 |  Major | API / Scala, Library / Machine Learning | Chesnay Schepler | Till Rohrmann |
| [FLINK-11044](https://issues.apache.org/jira/browse/FLINK-11044) | RegisterTableSink docs incorrect |  Minor | Documentation | Kenny Gorman |  |
| [FLINK-11045](https://issues.apache.org/jira/browse/FLINK-11045) | UserCodeClassLoader has not been set correctly for RuntimeUDFContext in CollectionExecutor |  Major | Table SQL / API | Hequn Cheng | Hequn Cheng |
| [FLINK-10997](https://issues.apache.org/jira/browse/FLINK-10997) | Avro-confluent-registry does not bundle any dependency |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile), Table SQL / API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11011](https://issues.apache.org/jira/browse/FLINK-11011) | Elasticsearch 6 sink end-to-end test unstable |  Critical | Test Infrastructure | Timo Walther | Andrey Zagrebin |
| [FLINK-10482](https://issues.apache.org/jira/browse/FLINK-10482) | java.lang.IllegalArgumentException: Negative number of in progress checkpoints |  Major | Runtime / State Backends | Julio Biason | Andrey Zagrebin |
| [FLINK-11094](https://issues.apache.org/jira/browse/FLINK-11094) | Restored state in RocksDBStateBackend that has not been accessed in restored execution causes NPE on snapshot |  Blocker | Runtime / State Backends | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-11087](https://issues.apache.org/jira/browse/FLINK-11087) | Broadcast state migration Incompatibility from 1.5.3 to 1.7.0 |  Blocker | Runtime / State Backends | Edward Rojas | Tzu-Li (Gordon) Tai |
| [FLINK-11123](https://issues.apache.org/jira/browse/FLINK-11123) | Missing import in ML quickstart docs |  Minor | Documentation, Library / Machine Learning | sunjincheng | sunjincheng |
| [FLINK-11085](https://issues.apache.org/jira/browse/FLINK-11085) | NoClassDefFoundError in presto-s3 filesystem |  Blocker | FileSystems | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11136](https://issues.apache.org/jira/browse/FLINK-11136) | Fix the logical of merge for DISTINCT aggregates |  Major | Table SQL / API | Dian Fu | Dian Fu |
| [FLINK-11013](https://issues.apache.org/jira/browse/FLINK-11013) | Fix distinct aggregates for group window in Table API |  Major | Table SQL / API | Dian Fu | Dian Fu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-10367](https://issues.apache.org/jira/browse/FLINK-10367) | Avoid recursion stack overflow during releasing SingleInputGate |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-10522](https://issues.apache.org/jira/browse/FLINK-10522) | Check if RecoverableWriter supportsResume and act accordingly. |  Major | Connectors / FileSystem | Kostas Kloudas | Kostas Kloudas |
| [FLINK-10252](https://issues.apache.org/jira/browse/FLINK-10252) | Handle oversized metric messages |  Critical | Runtime / Metrics | Till Rohrmann | vinoyang |
| [FLINK-10963](https://issues.apache.org/jira/browse/FLINK-10963) | Cleanup small objects uploaded to S3 as independent objects |  Major | Connectors / FileSystem | Kostas Kloudas | Kostas Kloudas |


