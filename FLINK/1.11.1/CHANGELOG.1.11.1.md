
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

## Release 1.11.1 - 2020-07-21



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-18186](https://issues.apache.org/jira/browse/FLINK-18186) | Various updates on Kubernetes standalone document |  Critical | Deployment / Kubernetes, Documentation | Yang Wang | Yang Wang |
| [FLINK-18472](https://issues.apache.org/jira/browse/FLINK-18472) | Local Installation Getting Started Guide |  Major | Documentation | Seth Wiesman | Seth Wiesman |
| [FLINK-18457](https://issues.apache.org/jira/browse/FLINK-18457) | Fix invalid links in "Detecting Patterns" page of "Streaming Concepts" |  Major | Documentation | Roc Marshal | Roc Marshal |
| [FLINK-18422](https://issues.apache.org/jira/browse/FLINK-18422) | Update Prefer tag in documentation 'Fault Tolerance training lesson' |  Minor | Documentation, Documentation / Training | Roc Marshal | Roc Marshal |
| [FLINK-18484](https://issues.apache.org/jira/browse/FLINK-18484) | RowSerializer arity error does not provide specific information about the mismatch |  Minor | API / Core | Mans Singh | Mans Singh |
| [FLINK-18561](https://issues.apache.org/jira/browse/FLINK-18561) | Build manylinux1 with better compatibility instead of manylinux2014 Python Wheel Packages |  Major | API / Python, Build System / Azure Pipelines | Huang Xingbo | Huang Xingbo |
| [FLINK-18526](https://issues.apache.org/jira/browse/FLINK-18526) | Add the configuration of Python UDF using Managed Memory in the doc of Pyflink |  Major | API / Python, Documentation | Huang Xingbo | Shuiqiang Chen |
| [FLINK-18532](https://issues.apache.org/jira/browse/FLINK-18532) | Remove Beta tag from MATCH\_RECOGNIZE docs |  Minor | Documentation | Seth Wiesman | Seth Wiesman |
| [FLINK-18593](https://issues.apache.org/jira/browse/FLINK-18593) | Hive bundle jar URLs are broken |  Major | Connectors / Hive, Documentation | Jingsong Lee | Jingsong Lee |
| [FLINK-18501](https://issues.apache.org/jira/browse/FLINK-18501) | Mapping of Pluggable Filesystems to scheme is not properly logged |  Minor | FileSystems | Fabian Paul | Fabian Paul |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-17543](https://issues.apache.org/jira/browse/FLINK-17543) | Rerunning failed azure jobs fails when uploading logs |  Major | Build System / Azure Pipelines | Chesnay Schepler | Robert Metzger |
| [FLINK-16572](https://issues.apache.org/jira/browse/FLINK-16572) | CheckPubSubEmulatorTest is flaky on Azure |  Critical | Connectors / Google Cloud PubSub, Tests | Aljoscha Krettek | Robert Metzger |
| [FLINK-18471](https://issues.apache.org/jira/browse/FLINK-18471) | flink-runtime lists "org.uncommons.maths:uncommons-maths:1.2.2a" as a bundled dependency, but it isn't |  Critical | Build System | Robert Metzger | Robert Metzger |
| [FLINK-18461](https://issues.apache.org/jira/browse/FLINK-18461) | Changelog source can't be insert into upsert sink |  Blocker | Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-18470](https://issues.apache.org/jira/browse/FLINK-18470) | Tests RocksKeyGroupsRocksSingleStateIteratorTest#testMergeIteratorByte & RocksKeyGroupsRocksSingleStateIteratorTest#testMergeIteratorShort fail locally |  Major | Runtime / State Backends, Tests | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-18485](https://issues.apache.org/jira/browse/FLINK-18485) | Kerberized YARN per-job on Docker test failed during unzip jce\_policy-8.zip |  Major | Deployment / YARN | Dian Fu | Dawid Wysakowicz |
| [FLINK-18519](https://issues.apache.org/jira/browse/FLINK-18519) | Propagate exception to client when execution fails for REST submission |  Major | Runtime / REST | Kostas Kloudas | Kostas Kloudas |
| [FLINK-15414](https://issues.apache.org/jira/browse/FLINK-15414) | KafkaITCase#prepare failed in travis |  Major | Connectors / Kafka, Tests | Dian Fu |  |
| [FLINK-18097](https://issues.apache.org/jira/browse/FLINK-18097) | History server doesn't clean all job json files |  Minor | Runtime / REST | Milan Nikl |  |
| [FLINK-18520](https://issues.apache.org/jira/browse/FLINK-18520) | New Table Function type inference fails |  Major | Table SQL / API | Benchao Li | Timo Walther |
| [FLINK-18544](https://issues.apache.org/jira/browse/FLINK-18544) | FunctionITCase.testInvalidUseOfSystemScalarFunction fails |  Blocker | Table SQL / Planner | Dawid Wysakowicz | Timo Walther |
| [FLINK-18419](https://issues.apache.org/jira/browse/FLINK-18419) | Can not create a catalog from user jar |  Critical | Table SQL / Planner | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-18434](https://issues.apache.org/jira/browse/FLINK-18434) | Can not select fields with JdbcCatalog |  Blocker | Table SQL / Planner | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-18477](https://issues.apache.org/jira/browse/FLINK-18477) | ChangelogSocketExample does not work |  Major | Examples, Table SQL / Ecosystem | Dawid Wysakowicz | Timo Walther |
| [FLINK-18539](https://issues.apache.org/jira/browse/FLINK-18539) | StreamExecutionEnvironment#addSource(SourceFunction, TypeInformation) doesn't use the user defined type information |  Critical | API / DataStream | Jark Wu | Jark Wu |
| [FLINK-18440](https://issues.apache.org/jira/browse/FLINK-18440) | ROW\_NUMBER function: ROW/RANGE not allowed with RANK, DENSE\_RANK or ROW\_NUMBER functions |  Major | Table SQL / Runtime | LakeShen | Danny Chen |
| [FLINK-18585](https://issues.apache.org/jira/browse/FLINK-18585) | Dynamic index can not work in new DynamicTableSink |  Major | Connectors / ElasticSearch | Leonard Xu | Leonard Xu |
| [FLINK-16181](https://issues.apache.org/jira/browse/FLINK-16181) | IfCallGen will throw NPE for primitive types in blink |  Major | Table SQL / Planner | Benchao Li | Benchao Li |
| [FLINK-18529](https://issues.apache.org/jira/browse/FLINK-18529) | Query Hive table and filter by timestamp partition can fail |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-18591](https://issues.apache.org/jira/browse/FLINK-18591) | Fix the format issue for metrics web page |  Major | Documentation, Runtime / Metrics | Zhijiang | Zhijiang |
| [FLINK-18583](https://issues.apache.org/jira/browse/FLINK-18583) | The \_id field is incorrectly set to index in Elasticsearch6 DynamicTableSink |  Critical | Connectors / ElasticSearch | Yangze Guo | Yangze Guo |
| [FLINK-18573](https://issues.apache.org/jira/browse/FLINK-18573) | InfluxDB reporter cannot be loaded as plugin |  Blocker | Runtime / Metrics | zhangyunyun | Yun Tang |
| [FLINK-17636](https://issues.apache.org/jira/browse/FLINK-17636) | SingleInputGateTest.testConcurrentReadStateAndProcessAndClose: Trying to read from released RecoveredInputChannel |  Critical | Runtime / Network, Tests | Robert Metzger | Zhijiang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-18534](https://issues.apache.org/jira/browse/FLINK-18534) | KafkaTableITCase.testKafkaDebeziumChangelogSource failed with "Topic 'changelog\_topic' already exists" |  Major | Connectors / Kafka, Table SQL / API, Tests | Dian Fu | Jark Wu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-18469](https://issues.apache.org/jira/browse/FLINK-18469) | Add Application Mode to release notes. |  Major | Documentation | Kostas Kloudas | Kostas Kloudas |
| [FLINK-18395](https://issues.apache.org/jira/browse/FLINK-18395) | Translate "ORC Format" page into Chinese |  Major | chinese-translation, Documentation, Table SQL / Ecosystem | Jark Wu | pengweibo |
| [FLINK-18388](https://issues.apache.org/jira/browse/FLINK-18388) | Translate "CSV Format" page into Chinese |  Major | chinese-translation, Documentation, Table SQL / Ecosystem | Jark Wu | pengweibo |
| [FLINK-18391](https://issues.apache.org/jira/browse/FLINK-18391) | Translate "Avro Format" page into Chinese |  Major | chinese-translation, Documentation, Table SQL / Ecosystem | Jark Wu | ChaojianZhang |
| [FLINK-18387](https://issues.apache.org/jira/browse/FLINK-18387) | Translate "BlackHole SQL Connector" page into Chinese |  Major | chinese-translation, Documentation, Table SQL / Ecosystem | Jark Wu | ChaojianZhang |
| [FLINK-18524](https://issues.apache.org/jira/browse/FLINK-18524) | Scala varargs cause exception for new inference |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-18324](https://issues.apache.org/jira/browse/FLINK-18324) | Translate updated data type and function page into Chinese |  Major | chinese-translation, Documentation, Table SQL / API | Timo Walther | Yubin Li |
| [FLINK-15794](https://issues.apache.org/jira/browse/FLINK-15794) | Rethink default value of kubernetes.container.image |  Major | Deployment / Kubernetes | Till Rohrmann | Niels Basjes |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-18502](https://issues.apache.org/jira/browse/FLINK-18502) | Add the page 'legacySourceSinks.zh.md'  into the directory 'docs/dev/table' |  Major | Documentation | Roc Marshal | Roc Marshal |
| [FLINK-18505](https://issues.apache.org/jira/browse/FLINK-18505) |  Correct the content of 'sourceSinks.zh.md' |  Major | Documentation | Roc Marshal | Roc Marshal |


