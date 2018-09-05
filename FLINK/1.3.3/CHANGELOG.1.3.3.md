
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

## Release 1.3.3 - Unreleased (as of 2018-01-25)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6951](https://issues.apache.org/jira/browse/FLINK-6951) | Incompatible versions of httpcomponents jars for Flink kinesis connector |  Critical | Kinesis Connector | Ted Yu | Bowen Li |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-7127](https://issues.apache.org/jira/browse/FLINK-7127) | Remove unnecessary null check or add null check |  Trivial | State Backends, Checkpointing | Ufuk Celebi | Dmitrii Kniazev |
| [FLINK-7382](https://issues.apache.org/jira/browse/FLINK-7382) | Broken links in \`Apache Flink Documentation\`  page |  Minor | Documentation | Hai Zhou UTC+8 | Hai Zhou UTC+8 |
| [FLINK-7405](https://issues.apache.org/jira/browse/FLINK-7405) | Reduce spamming warning logging from DatadogHttpReporter |  Minor | Metrics | Bowen Li | Bowen Li |
| [FLINK-7454](https://issues.apache.org/jira/browse/FLINK-7454) | update 'Monitoring Current Event Time' section of Flink doc |  Minor | Documentation | Bowen Li | Bowen Li |
| [FLINK-7404](https://issues.apache.org/jira/browse/FLINK-7404) | Table API batch join code-gen's equi-join conditions |  Major | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-7572](https://issues.apache.org/jira/browse/FLINK-7572) | Improve TableSchema ValidationException message. |  Major | . | sunjincheng | sunjincheng |
| [FLINK-7617](https://issues.apache.org/jira/browse/FLINK-7617) | Remove string format in BitSet to improve the performance of BuildSideOuterjoin |  Major | Local Runtime | Jingsong Lee | Jingsong Lee |
| [FLINK-7630](https://issues.apache.org/jira/browse/FLINK-7630) | Allow passing a File or an InputStream to ParameterTool.fromPropertiesFile() |  Minor | Java API | Wei-Che Wei | Wei-Che Wei |
| [FLINK-6549](https://issues.apache.org/jira/browse/FLINK-6549) | Improve error message for type mismatches with side outputs |  Minor | DataStream API | Chesnay Schepler | Bowen Li |
| [FLINK-7265](https://issues.apache.org/jira/browse/FLINK-7265) | FileSystems should describe their kind and consistency level |  Major | Core | Stephan Ewen | Stephan Ewen |


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
| [FLINK-7398](https://issues.apache.org/jira/browse/FLINK-7398) | Table API operators/UDFs must not store Logger |  Blocker | Table API & SQL | Aljoscha Krettek | Haohui Mai |
| [FLINK-7309](https://issues.apache.org/jira/browse/FLINK-7309) | NullPointerException in CodeGenUtils.timePointToInternalCode() generated code |  Critical | Local Runtime, Table API & SQL | Liangliang Chen |  |
| [FLINK-7227](https://issues.apache.org/jira/browse/FLINK-7227) | OR expression with more than 2 predicates is not pushed into a TableSource |  Major | Table API & SQL | Usman Younas | Usman Younas |
| [FLINK-7564](https://issues.apache.org/jira/browse/FLINK-7564) | Fix Watermark semantics in Table API |  Blocker | Table API & SQL | Aljoscha Krettek | Xingcan Cui |
| [FLINK-7294](https://issues.apache.org/jira/browse/FLINK-7294) | mesos.resourcemanager.framework.role not working |  Critical | Mesos | Bhumika Bayani | Eron Wright |
| [FLINK-7625](https://issues.apache.org/jira/browse/FLINK-7625) |  typo in docs metrics sections |  Major | Documentation, Metrics | Hai Zhou UTC+8 | Hai Zhou UTC+8 |
| [FLINK-7563](https://issues.apache.org/jira/browse/FLINK-7563) | Fix watermark semantics in CEP operators |  Blocker | CEP | Aljoscha Krettek | Yueting Chen |
| [FLINK-7600](https://issues.apache.org/jira/browse/FLINK-7600) | shorten delay of KinesisProducerConfiguration.setCredentialsRefreshDelay() to avoid updateCredentials Exception |  Minor | Kinesis Connector | Bowen Li | Bowen Li |
| [FLINK-7656](https://issues.apache.org/jira/browse/FLINK-7656) | Switch to user ClassLoader when invoking initializeOnMaster finalizeOnMaster |  Major | Local Runtime | Fabian Hueske | Fabian Hueske |
| [FLINK-7596](https://issues.apache.org/jira/browse/FLINK-7596) | fix bug when Set Operation handles ANY type |  Major | Table API & SQL | Ruidong Li | Ruidong Li |
| [FLINK-7670](https://issues.apache.org/jira/browse/FLINK-7670) | typo in docs runtime section |  Minor | Documentation | Kewei SHANG |  |
| [FLINK-7675](https://issues.apache.org/jira/browse/FLINK-7675) | LatestCompletedCheckpointExternalPathGauge should check if external path is exist |  Blocker | Metrics | Wei-Che Wei | Wei-Che Wei |
| [FLINK-7659](https://issues.apache.org/jira/browse/FLINK-7659) | Unprotected access to inProgress in JobCancellationWithSavepointHandlers#handleNewRequest |  Major | REST | Ted Yu | Bowen Li |
| [FLINK-7626](https://issues.apache.org/jira/browse/FLINK-7626) | Add some metric description about checkpoints |  Major | Documentation, Metrics | Hai Zhou UTC+8 | Hai Zhou UTC+8 |
| [FLINK-7700](https://issues.apache.org/jira/browse/FLINK-7700) | State merging in RocksDB backend leaves old state |  Blocker | State Backends, Checkpointing | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-5619](https://issues.apache.org/jira/browse/FLINK-5619) | Consolidate State tests |  Major | State Backends, Checkpointing | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-7721](https://issues.apache.org/jira/browse/FLINK-7721) | StatusWatermarkValve should output a new min watermark only if it was aggregated from aligned chhanels |  Blocker | DataStream API | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-7728](https://issues.apache.org/jira/browse/FLINK-7728) | StatusWatermarkValve has different min watermark advancement behavior depending on the ordering inputs become idle |  Blocker | DataStream API | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-7763](https://issues.apache.org/jira/browse/FLINK-7763) | TableSinkITCase fails with "object reuse" enabled |  Blocker | Table API & SQL | Aljoscha Krettek | Fabian Hueske |
| [FLINK-7759](https://issues.apache.org/jira/browse/FLINK-7759) | Fix Bug that fieldName with Boolean prefix can't be parsed by ExpressionParser. |  Critical | Table API & SQL | Ruidong Li | Ruidong Li |
| [FLINK-7802](https://issues.apache.org/jira/browse/FLINK-7802) | Exception occur when empty field collection was pushed into CSVTableSource |  Critical | Table API & SQL | godfrey he | godfrey he |
| [FLINK-7067](https://issues.apache.org/jira/browse/FLINK-7067) | Cancel with savepoint does not restart checkpoint scheduler on failure |  Blocker | State Backends, Checkpointing | Ufuk Celebi | Ufuk Celebi |
| [FLINK-7542](https://issues.apache.org/jira/browse/FLINK-7542) | Some tests in AggregateITCase fail for some Time Zones |  Major | Table API & SQL | Usman Younas | Fabian Hueske |
| [FLINK-7368](https://issues.apache.org/jira/browse/FLINK-7368) | MetricStore makes cpu spin at 100% |  Blocker | Metrics | Nico Chen | Piotr Nowojski |
| [FLINK-6173](https://issues.apache.org/jira/browse/FLINK-6173) | flink-table not pack-in com.fasterxml.jackson.\* in after #FLINK-5414 |  Blocker | Table API & SQL | Zhenghua Gao | Timo Walther |
| [FLINK-7939](https://issues.apache.org/jira/browse/FLINK-7939) | DataStream of atomic type cannot be converted to Table with time attributes |  Major | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-7764](https://issues.apache.org/jira/browse/FLINK-7764) | FlinkKafkaProducer010 does not accept name, uid, or parallelism |  Major | Kafka Connector | Fabian Hueske | Xingcan Cui |
| [FLINK-7421](https://issues.apache.org/jira/browse/FLINK-7421) | AvroRow(De)serializationSchema not serializable |  Critical | Streaming Connectors, Table API & SQL | Timo Walther | Fabian Hueske |
| [FLINK-8001](https://issues.apache.org/jira/browse/FLINK-8001) | Mark Kafka Consumer as idle if it doesn't have partitions |  Blocker | . | Aljoscha Krettek | Tzu-Li (Gordon) Tai |
| [FLINK-7742](https://issues.apache.org/jira/browse/FLINK-7742) | Fix array access might be out of bounds |  Major | Build System | Hai Zhou UTC+8 | Hai Zhou UTC+8 |
| [FLINK-7357](https://issues.apache.org/jira/browse/FLINK-7357) | HOP\_START() HOP\_END() does not work when using HAVING clause with GROUP BY HOP window |  Major | Table API & SQL | Rong Rong | Rong Rong |
| [FLINK-7971](https://issues.apache.org/jira/browse/FLINK-7971) | Fix potential NPE with inconsistent state |  Major | Table API & SQL | Ruidong Li | Ruidong Li |
| [FLINK-8012](https://issues.apache.org/jira/browse/FLINK-8012) | Table with time attribute cannot be written to CsvTableSink |  Critical | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-7922](https://issues.apache.org/jira/browse/FLINK-7922) | leastRestrictive in FlinkTypeFactory does not resolve composite type correctly |  Major | Table API & SQL | Rong Rong | Rong Rong |
| [FLINK-7490](https://issues.apache.org/jira/browse/FLINK-7490) | UDF Agg throws Exception when flink-table is loaded with AppClassLoader |  Blocker | Table API & SQL | Miguel Rui Pereira Marques | Fabian Hueske |
| [FLINK-6294](https://issues.apache.org/jira/browse/FLINK-6294) | BucketingSink throws NPE while cancelling job |  Major | Streaming Connectors | Andrey |  |
| [FLINK-7495](https://issues.apache.org/jira/browse/FLINK-7495) | AbstractUdfStreamOperator#initializeState() should be called in AsyncWaitOperator#initializeState() |  Minor | DataStream API | Ted Yu | Fang Yong |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-7429](https://issues.apache.org/jira/browse/FLINK-7429) | Add restore from 1.2 / 1.3 migration tests for FlinkKinesisConsumer |  Blocker | Kinesis Connector, Tests | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-5905](https://issues.apache.org/jira/browse/FLINK-5905) | Add user-defined aggregation functions to documentation. |  Major | Table API & SQL | Fabian Hueske | Shaoxuan Wang |
| [FLINK-7484](https://issues.apache.org/jira/browse/FLINK-7484) | CaseClassSerializer.duplicate() does not perform proper deep copy |  Blocker | CEP, DataStream API, Scala API | Shashank Agarwal | Aljoscha Krettek |
| [FLINK-7853](https://issues.apache.org/jira/browse/FLINK-7853) | Reject table function outer joins with predicates in Table API |  Blocker | Table API & SQL | Xingcan Cui | Xingcan Cui |
| [FLINK-7854](https://issues.apache.org/jira/browse/FLINK-7854) | Reject lateral table outer joins with predicates in SQL |  Blocker | Table API & SQL | Xingcan Cui | Xingcan Cui |
| [FLINK-7783](https://issues.apache.org/jira/browse/FLINK-7783) | Don't always remove checkpoints in ZooKeeperCompletedCheckpointStore#recover() |  Blocker | State Backends, Checkpointing | Aljoscha Krettek | Aljoscha Krettek |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6751](https://issues.apache.org/jira/browse/FLINK-6751) | Table API / SQL Docs: UDFs Page |  Major | Documentation, Table API & SQL | Fabian Hueske | Shaoxuan Wang |


