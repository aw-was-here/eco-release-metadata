
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

## Release 1.7.0 - 2018-11-29



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9935](https://issues.apache.org/jira/browse/FLINK-9935) | Batch Table API: grouping by window and attribute causes java.lang.ClassCastException: |  Critical | Table SQL / API | Roman Wozniak | Fabian Hueske |
| [FLINK-11230](https://issues.apache.org/jira/browse/FLINK-11230) | Sum of FlinkSql after two table union all.The value is too large. |  Blocker | Table SQL / API | jiwei |  |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9688](https://issues.apache.org/jira/browse/FLINK-9688) | ATAN2 Sql Function support |  Minor | Table SQL / API | Sergey Nuyanzin | Sergey Nuyanzin |
| [FLINK-7812](https://issues.apache.org/jira/browse/FLINK-7812) | Log system resources as metrics |  Major | Runtime / Metrics | Piotr Nowojski | Piotr Nowojski |
| [FLINK-10022](https://issues.apache.org/jira/browse/FLINK-10022) | Add metrics for input/output buffers |  Major | Runtime / Metrics, Runtime / Network | Nico Kruber | Nico Kruber |
| [FLINK-9850](https://issues.apache.org/jira/browse/FLINK-9850) | Add a string to the print method to identify output for DataStream |  Major | API / DataStream | Hequn Cheng | vinoyang |
| [FLINK-10163](https://issues.apache.org/jira/browse/FLINK-10163) | Support CREATE VIEW in SQL Client |  Major | Table SQL / API, Table SQL / Client | Timo Walther | Timo Walther |
| [FLINK-3875](https://issues.apache.org/jira/browse/FLINK-3875) | Add a TableSink for Elasticsearch |  Major | Connectors / Common, Table SQL / API | Fabian Hueske | Timo Walther |
| [FLINK-10440](https://issues.apache.org/jira/browse/FLINK-10440) | Add CassandraPojoOutputFormat |  Major | Connectors / Cassandra | Benoit MERIAUX | Benoit MERIAUX |
| [FLINK-10423](https://issues.apache.org/jira/browse/FLINK-10423) | Expose RocksDB native metrics |  Major | Runtime / Metrics, Runtime / State Backends | Seth Wiesman | Seth Wiesman |
| [FLINK-10073](https://issues.apache.org/jira/browse/FLINK-10073) | Allow setting a restart strategy in SQL Client |  Major | Table SQL / API, Table SQL / Client | Timo Walther | Timo Walther |
| [FLINK-10371](https://issues.apache.org/jira/browse/FLINK-10371) | Allow to enable SSL mutual authentication on REST endpoints by configuration |  Major | Command Line Client, Runtime / REST | Johannes Dillmann | Johannes Dillmann |
| [FLINK-9126](https://issues.apache.org/jira/browse/FLINK-9126) | Creation of the CassandraPojoInputFormat class to output data into a Custom Cassandra Annotated Pojo |  Minor | API / DataSet, Connectors / Cassandra | Jeffrey Carter | Jeffrey Carter |
| [FLINK-9376](https://issues.apache.org/jira/browse/FLINK-9376) | Allow upgrading to incompatible state serializers (state schema evolution) |  Critical | API / Type Serialization System, Runtime / State Backends | Tzu-Li (Gordon) Tai |  |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9890](https://issues.apache.org/jira/browse/FLINK-9890) | Remove obsolete Class ResourceManagerConfiguration |  Major | Runtime / Coordination | Gary Yao | Gary Yao |
| [FLINK-6222](https://issues.apache.org/jira/browse/FLINK-6222) | YARN: setting environment variables in an easier fashion |  Major | Deployment / Scripts | Craig Foster | Dawid Wysakowicz |
| [FLINK-9236](https://issues.apache.org/jira/browse/FLINK-9236) | Use Apache Parent POM 20 |  Major | Build System | Ted Yu | jiayichao |
| [FLINK-9944](https://issues.apache.org/jira/browse/FLINK-9944) | Cleanup end-to-end test poms |  Major | Build System, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9504](https://issues.apache.org/jira/browse/FLINK-9504) | Change checkpoint duration log level to debug to avoid too much log |  Minor | Runtime / State Backends | Aitozi | Aitozi |
| [FLINK-10055](https://issues.apache.org/jira/browse/FLINK-10055) | incorrect in-progress file suffix in BucketingSink's java doc |  Minor | Documentation | Bowen Li | Bowen Li |
| [FLINK-10094](https://issues.apache.org/jira/browse/FLINK-10094) | Always backup default config for end-to-end tests |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9933](https://issues.apache.org/jira/browse/FLINK-9933) | Simplify taskmanager memory default values |  Minor | Documentation | Chesnay Schepler | vinoyang |
| [FLINK-10102](https://issues.apache.org/jira/browse/FLINK-10102) | EXECUTION\_FAILOVER\_STRATEGY docs are wrong |  Major | Documentation, Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9240](https://issues.apache.org/jira/browse/FLINK-9240) | Avoid deprecated akka methods |  Minor | Command Line Client, Deployment / Mesos, Deployment / YARN, Runtime / Task, Runtime / Web Frontend, Tests | Arnout Engelen |  |
| [FLINK-10099](https://issues.apache.org/jira/browse/FLINK-10099) | Rework YarnResourceManagerTest |  Major | Tests | Zili Chen | Zili Chen |
| [FLINK-9795](https://issues.apache.org/jira/browse/FLINK-9795) | Update Mesos documentation for flip6 |  Major | Documentation | Leonid Ishimnikov | Gary Yao |
| [FLINK-9919](https://issues.apache.org/jira/browse/FLINK-9919) | Remove unit from fullRestarts metric docs |  Major | Documentation, Runtime / Metrics | Chesnay Schepler | vinoyang |
| [FLINK-10006](https://issues.apache.org/jira/browse/FLINK-10006) | Improve logging in BarrierBuffer |  Major | Runtime / Network | Nico Kruber | Nico Kruber |
| [FLINK-9977](https://issues.apache.org/jira/browse/FLINK-9977) | Refine the docs for Table/SQL built-in functions |  Minor | Documentation | Xingcan Cui | Xingcan Cui |
| [FLINK-8135](https://issues.apache.org/jira/browse/FLINK-8135) | Add description to MessageParameter |  Major | Documentation, Runtime / REST | Chesnay Schepler | Andrei |
| [FLINK-9853](https://issues.apache.org/jira/browse/FLINK-9853) | add hex support in table api and sql |  Major | Table SQL / API | xueyu | xueyu |
| [FLINK-10123](https://issues.apache.org/jira/browse/FLINK-10123) | Use ExecutorThreadFactory instead of DefaultThreadFactory in RestServer/Client |  Major | Runtime / REST | Till Rohrmann | Till Rohrmann |
| [FLINK-10056](https://issues.apache.org/jira/browse/FLINK-10056) | Add test for JobMaster#requestNextInputSplit |  Major | Runtime / Coordination, Tests | Zili Chen | Zili Chen |
| [FLINK-8290](https://issues.apache.org/jira/browse/FLINK-8290) | Allow setting clientId in flink-connector-kafka-0.8 |  Major | . | xymaqingxiang | xymaqingxiang |
| [FLINK-10110](https://issues.apache.org/jira/browse/FLINK-10110) | Harden e2e Kafka shutdown |  Major | Connectors / Kafka | Till Rohrmann | Till Rohrmann |
| [FLINK-9013](https://issues.apache.org/jira/browse/FLINK-9013) | Document yarn.containers.vcores only being effective when adapting YARN config |  Major | Deployment / YARN, Documentation | Nico Kruber | Dawid Wysakowicz |
| [FLINK-9446](https://issues.apache.org/jira/browse/FLINK-9446) | Compatibility table not up-to-date |  Major | Documentation | Razvan | Chesnay Schepler |
| [FLINK-9859](https://issues.apache.org/jira/browse/FLINK-9859) | More Akka config options |  Major | Runtime / Task | Zili Chen | Zili Chen |
| [FLINK-10020](https://issues.apache.org/jira/browse/FLINK-10020) | Kinesis Consumer listShards should support more recoverable exceptions |  Major | Connectors / Kinesis | Thomas Weise | Thomas Weise |
| [FLINK-9899](https://issues.apache.org/jira/browse/FLINK-9899) | Add more metrics to the Kinesis source connector |  Major | Connectors / Kinesis | Lakshmi Rao | Lakshmi Rao |
| [FLINK-10001](https://issues.apache.org/jira/browse/FLINK-10001) | Improve Kubernetes documentation |  Major | Deployment / Kubernetes, Documentation | Till Rohrmann | Till Rohrmann |
| [FLINK-6670](https://issues.apache.org/jira/browse/FLINK-6670) | Remove CommonTestUtils.createTempDirectory() |  Minor | Tests | Nico Kruber | Chesnay Schepler |
| [FLINK-10082](https://issues.apache.org/jira/browse/FLINK-10082) | Initialize StringBuilder in Slf4jReporter with estimated size |  Major | Runtime / Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10181](https://issues.apache.org/jira/browse/FLINK-10181) | Add anchor link to individual rest requests |  Major | Documentation, Runtime / REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10164](https://issues.apache.org/jira/browse/FLINK-10164) | Add support for resuming from savepoints to StandaloneJobClusterEntrypoint |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-10233](https://issues.apache.org/jira/browse/FLINK-10233) | Undeprecate ConfigOption#withDescription(String) |  Major | Runtime / Configuration | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10137](https://issues.apache.org/jira/browse/FLINK-10137) | YARN: Log completed Containers |  Major | Deployment / YARN, Runtime / Coordination | Gary Yao | Gary Yao |
| [FLINK-9642](https://issues.apache.org/jira/browse/FLINK-9642) | Add caching layer to SharedBuffer |  Major | Library / CEP | Aitozi | Aitozi |
| [FLINK-10270](https://issues.apache.org/jira/browse/FLINK-10270) | Delete LegacyRestHandlerAdapter |  Major | Runtime / REST | Gary Yao | Gary Yao |
| [FLINK-10186](https://issues.apache.org/jira/browse/FLINK-10186) | Use ThreadLocalRandom in BufferSpiller constructor |  Major | . | Hiroaki Yoshida | Hiroaki Yoshida |
| [FLINK-10254](https://issues.apache.org/jira/browse/FLINK-10254) | Fix inappropriate checkNotNull in stateBackend |  Major | Runtime / State Backends | Aitozi | Aitozi |
| [FLINK-10131](https://issues.apache.org/jira/browse/FLINK-10131) | Improve logging around ResultSubpartition |  Major | Runtime / Network | Nico Kruber | Nico Kruber |
| [FLINK-10170](https://issues.apache.org/jira/browse/FLINK-10170) | Support string representation for map and array types in descriptor-based Table API |  Major | Table SQL / API | Jun Zhang | Jun Zhang |
| [FLINK-10185](https://issues.apache.org/jira/browse/FLINK-10185) | Make ZooKeeperStateHandleStore#releaseAndTryRemove synchronous |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-10301](https://issues.apache.org/jira/browse/FLINK-10301) | Allow a custom Configuration in StreamNetworkBenchmarkEnvironment |  Major | Runtime / Network, Tests | Nico Kruber | Nico Kruber |
| [FLINK-10223](https://issues.apache.org/jira/browse/FLINK-10223) | TaskManagers should log their ResourceID during startup |  Major | Runtime / Coordination | Konstantin Knauf | Gary Yao |
| [FLINK-10325](https://issues.apache.org/jira/browse/FLINK-10325) | [State TTL] Refactor TtlListState to use only loops, no java stream API for performance |  Major | Runtime / State Backends | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-10215](https://issues.apache.org/jira/browse/FLINK-10215) | Add configuration of java option  for historyserver |  Minor | Runtime / Coordination | liuxianjiao | liuxianjiao |
| [FLINK-9912](https://issues.apache.org/jira/browse/FLINK-9912) | Release TaskExecutors from SlotPool if all slots have been removed |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-9917](https://issues.apache.org/jira/browse/FLINK-9917) | Remove superfluous lock from SlotSharingManager |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-10365](https://issues.apache.org/jira/browse/FLINK-10365) | Consolidate shaded Hadoop classes for filesystems |  Major | FileSystems | Stephan Ewen | Stephan Ewen |
| [FLINK-10366](https://issues.apache.org/jira/browse/FLINK-10366) | Create a shared base for S3 file systems |  Major | FileSystems | Stephan Ewen | Stephan Ewen |
| [FLINK-8660](https://issues.apache.org/jira/browse/FLINK-8660) | Enable the user to provide custom HAServices implementation |  Major | Runtime / Configuration, Runtime / Coordination | Krzysztof Białek | Krzysztof Białek |
| [FLINK-10260](https://issues.apache.org/jira/browse/FLINK-10260) | Confusing log messages during TaskManager registration |  Major | Runtime / Coordination | Stephan Ewen | Andrey Zagrebin |
| [FLINK-10375](https://issues.apache.org/jira/browse/FLINK-10375) | ExceptionInChainedStubException hides wrapped exception in cause |  Minor | . | Mike Pedersen | Mike Pedersen |
| [FLINK-10369](https://issues.apache.org/jira/browse/FLINK-10369) | Enable YARNITCase |  Minor | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-1960](https://issues.apache.org/jira/browse/FLINK-1960) | Add comments and docs for withForwardedFields and related operators |  Minor | Documentation | Theodore Vasiloudis | hzhuangzhenxi |
| [FLINK-10410](https://issues.apache.org/jira/browse/FLINK-10410) | Search for broken links on travis |  Major | Documentation, Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9455](https://issues.apache.org/jira/browse/FLINK-9455) | Make SlotManager aware of multi slot TaskManagers |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-10411](https://issues.apache.org/jira/browse/FLINK-10411) | Make ClusterEntrypoint more modular |  Minor | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-10311](https://issues.apache.org/jira/browse/FLINK-10311) | HA end-to-end/Jepsen tests for standby Dispatchers |  Critical | Tests | Till Rohrmann | Gary Yao |
| [FLINK-10339](https://issues.apache.org/jira/browse/FLINK-10339) | SpillReadBufferPool cannot use off-heap memory |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-10291](https://issues.apache.org/jira/browse/FLINK-10291) | Generate JobGraph with fixed/configurable JobID in StandaloneJobClusterEntrypoint |  Critical | Runtime / Coordination | Till Rohrmann | vinoyang |
| [FLINK-8532](https://issues.apache.org/jira/browse/FLINK-8532) | RebalancePartitioner should use Random value for its first partition |  Major | API / DataStream | Yuta Morisawa | Guibo Pan |
| [FLINK-10514](https://issues.apache.org/jira/browse/FLINK-10514) | change Tachyon to Alluxio |  Minor | API / DataStream | yangxiaoshuo | Guibo Pan |
| [FLINK-10399](https://issues.apache.org/jira/browse/FLINK-10399) | Refactor ParameterTool#fromArgs |  Major | Command Line Client | Zili Chen | Zili Chen |
| [FLINK-10282](https://issues.apache.org/jira/browse/FLINK-10282) | Provide separate thread-pool for REST endpoint |  Major | Runtime / REST, Runtime / Task | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10075](https://issues.apache.org/jira/browse/FLINK-10075) | HTTP connections to a secured REST endpoint flood the log |  Critical | Runtime / REST | Stephan Ewen | Andrey Zagrebin |
| [FLINK-10554](https://issues.apache.org/jira/browse/FLINK-10554) | Bump flink-shaded dependency version |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10474](https://issues.apache.org/jira/browse/FLINK-10474) | Don't translate IN with Literals to JOIN with VALUES for streaming queries |  Major | Table SQL / API | Fabian Hueske | Hequn Cheng |
| [FLINK-9443](https://issues.apache.org/jira/browse/FLINK-9443) | Remove unused parameter in StreamGraphHasherV2 |  Major | Runtime / Coordination | Aitozi | Aitozi |
| [FLINK-10312](https://issues.apache.org/jira/browse/FLINK-10312) | Wrong / missing exception when submitting job |  Critical | Runtime / Coordination | Stephan Ewen | Andrey Zagrebin |
| [FLINK-9061](https://issues.apache.org/jira/browse/FLINK-9061) | Add entropy to s3 path for better scalability |  Critical | FileSystems, Runtime / State Backends | Jamie Grier | Indrajit Roychoudhury |
| [FLINK-10582](https://issues.apache.org/jira/browse/FLINK-10582) | Make REST executor thread priority configurable |  Major | Runtime / REST, Runtime / Task | Till Rohrmann | Till Rohrmann |
| [FLINK-10579](https://issues.apache.org/jira/browse/FLINK-10579) | Remove unused deploysettings.xml |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10511](https://issues.apache.org/jira/browse/FLINK-10511) | Code duplication of creating RPC service in ClusterEntrypoint and AkkaRpcServiceUtils |  Minor | Runtime / Coordination | Shimin Yang | Shimin Yang |
| [FLINK-10057](https://issues.apache.org/jira/browse/FLINK-10057) | optimalize org.apache.flink.yarn.cli.FlinkYarnSessionCli.isYarnPropertiesFileMode |  Major | Command Line Client | liuzq |  |
| [FLINK-10563](https://issues.apache.org/jira/browse/FLINK-10563) | Expose shaded Presto S3 filesystem under "s3p" scheme |  Major | . | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-10608](https://issues.apache.org/jira/browse/FLINK-10608) | Add avro files generated by datastream-allround-test to RAT exclusions |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10614](https://issues.apache.org/jira/browse/FLINK-10614) | Update test\_batch\_allround.sh e2e to new testing infrastructure |  Minor | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-10637](https://issues.apache.org/jira/browse/FLINK-10637) | Start MiniCluster with random REST port |  Critical | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-10613](https://issues.apache.org/jira/browse/FLINK-10613) | Remove logger casts in HBaseConnectorITCase |  Critical | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10692](https://issues.apache.org/jira/browse/FLINK-10692) | Harden Confluent schema E2E test |  Major | Test Infrastructure | Till Rohrmann | Till Rohrmann |
| [FLINK-10695](https://issues.apache.org/jira/browse/FLINK-10695) | "Cannot load user class" errors should set the underlying ClassNotFoundException as their cause |  Major | . | Max Feng | Max Feng |
| [FLINK-10754](https://issues.apache.org/jira/browse/FLINK-10754) | Update Jepsen tests to run with activated local recovery |  Major | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-10353](https://issues.apache.org/jira/browse/FLINK-10353) | Restoring a KafkaProducer with Semantic.EXACTLY\_ONCE from a savepoint written with Semantic.AT\_LEAST\_ONCE fails with NPE |  Critical | Connectors / Kafka | Konstantin Knauf | Stefan Richter |
| [FLINK-10676](https://issues.apache.org/jira/browse/FLINK-10676) | Add 'as' method for OverWindowWithOrderBy in Java API |  Major | Table SQL / API | sunjincheng | Hequn Cheng |
| [FLINK-10813](https://issues.apache.org/jira/browse/FLINK-10813) | Automatically seach for missing scala suffixes |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10771](https://issues.apache.org/jira/browse/FLINK-10771) | Replace hard code of job graph file path with config option for FileJobGraphRetriever |  Major | Deployment / YARN | vinoyang | vinoyang |
| [FLINK-10789](https://issues.apache.org/jira/browse/FLINK-10789) | Some new serializer snapshots added after 1.6 are not implementing the new TypeSerializerSnapshot interface |  Critical | API / Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-10883](https://issues.apache.org/jira/browse/FLINK-10883) | Submitting a jobs without enough slots times out due to a unspecified timeout |  Major | Runtime / Coordination | Chesnay Schepler | Till Rohrmann |
| [FLINK-10869](https://issues.apache.org/jira/browse/FLINK-10869) | Update S3 testing settings |  Major | Tests | Stephan Ewen | Stephan Ewen |
| [FLINK-10906](https://issues.apache.org/jira/browse/FLINK-10906) | docker-entrypoint.sh logs credentails during startup |  Critical | flink-docker | Konstantin Knauf | Till Rohrmann |
| [FLINK-10916](https://issues.apache.org/jira/browse/FLINK-10916) | Include duplicated user-specified uid into error message |  Trivial | API / DataStream | Kirill Mikheev |  |
| [FLINK-10931](https://issues.apache.org/jira/browse/FLINK-10931) | Exclude transitive dependence on Kafka-client |  Major | Connectors / Kafka | vinoyang | vinoyang |
| [FLINK-10678](https://issues.apache.org/jira/browse/FLINK-10678) | Add a switch to run\_test to configure if logs should be checked for errors/excepions |  Blocker | Test Infrastructure | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-10010](https://issues.apache.org/jira/browse/FLINK-10010) | Deprecate unused BaseAlignedWindowAssigner related components |  Major | API / DataStream | Rong Rong | Rong Rong |
| [FLINK-10142](https://issues.apache.org/jira/browse/FLINK-10142) | Reduce synchronization overhead for credit notifications |  Major | Runtime / Network | Nico Kruber | Nico Kruber |
| [FLINK-10412](https://issues.apache.org/jira/browse/FLINK-10412) | toString field in AbstractID should be transient to avoid been serialized |  Major | Runtime / Coordination | Zhu Zhu | vinoyang |
| [FLINK-10513](https://issues.apache.org/jira/browse/FLINK-10513) | Replace TaskManagerActions#notifyFinalState with #updateTaskExecutionState |  Minor | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-10803](https://issues.apache.org/jira/browse/FLINK-10803) | Add documentation about S3 support by the StreamingFileSink |  Major | Connectors / FileSystem | Kostas Kloudas | Kostas Kloudas |
| [FLINK-10355](https://issues.apache.org/jira/browse/FLINK-10355) | Counting of table columns should start with 1 instead of 0 |  Major | Table SQL / API | lihongli | lihongli |
| [FLINK-11005](https://issues.apache.org/jira/browse/FLINK-11005) | Define flink-sql-client uber-jar dependencies via artifactSet |  Major | Build System | Till Rohrmann | Till Rohrmann |
| [FLINK-4173](https://issues.apache.org/jira/browse/FLINK-4173) | Replace maven-assembly-plugin by maven-shade-plugin in flink-metrics |  Minor | Build System, Runtime / Metrics | Till Rohrmann | Chesnay Schepler |
| [FLINK-10951](https://issues.apache.org/jira/browse/FLINK-10951) | Disable enforcing of YARN container virtual memory limits in tests |  Critical | Tests | Gary Yao | Gary Yao |
| [FLINK-11039](https://issues.apache.org/jira/browse/FLINK-11039) | LogicalExchange and HashPartitioner realization |  Minor | Table SQL / API | ambition |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9185](https://issues.apache.org/jira/browse/FLINK-9185) | Potential null dereference in PrioritizedOperatorSubtaskState#resolvePrioritizedAlternatives |  Minor | . | Ted Yu | Stephen Jason |
| [FLINK-5750](https://issues.apache.org/jira/browse/FLINK-5750) | Incorrect translation of n-ary Union |  Critical | Table SQL / API | Anton Mushin | Alexander Koltsov |
| [FLINK-9914](https://issues.apache.org/jira/browse/FLINK-9914) | Flink docker information in official website is out of date and should be update |  Minor | . | vinoyang | vinoyang |
| [FLINK-9927](https://issues.apache.org/jira/browse/FLINK-9927) | Error in Python Stream API example on website |  Minor | Documentation | Joe Malt |  |
| [FLINK-9562](https://issues.apache.org/jira/browse/FLINK-9562) | Wrong wording in flink-optimizer module |  Trivial | API / DataSet | Alexandr Arkhipov | Alexandr Arkhipov |
| [FLINK-9972](https://issues.apache.org/jira/browse/FLINK-9972) | Debug memory logging not working |  Critical | Runtime / Coordination | Piotr Nowojski | Piotr Nowojski |
| [FLINK-10063](https://issues.apache.org/jira/browse/FLINK-10063) | Jepsen: Automatically restart Mesos Processes |  Critical | Tests | Gary Yao | Gary Yao |
| [FLINK-10105](https://issues.apache.org/jira/browse/FLINK-10105) | Test failure because of jobmanager.execution.failover-strategy is outdated |  Major | Tests | vinoyang | Dawid Wysakowicz |
| [FLINK-9693](https://issues.apache.org/jira/browse/FLINK-9693) | Possible memory leak in jobmanager retaining archived checkpoints |  Major | Runtime / Coordination, Runtime / State Backends | Steven Zhen Wu | Till Rohrmann |
| [FLINK-9664](https://issues.apache.org/jira/browse/FLINK-9664) | FlinkML Quickstart Loading Data section example doesn't work as described |  Major | Documentation, Library / Machine Learning | Mano Swerts | Rong Rong |
| [FLINK-9546](https://issues.apache.org/jira/browse/FLINK-9546) | The heartbeatTimeoutIntervalMs of HeartbeatMonitor should be larger than 0 |  Minor | . | Sihua Zhou | Sihua Zhou |
| [FLINK-9289](https://issues.apache.org/jira/browse/FLINK-9289) | Parallelism of generated operators should have max parallism of input |  Major | API / DataSet | Fabian Hueske | Xingcan Cui |
| [FLINK-10101](https://issues.apache.org/jira/browse/FLINK-10101) | Mesos web ui url is missing. |  Major | Deployment / Mesos | Renjie Liu | Renjie Liu |
| [FLINK-10154](https://issues.apache.org/jira/browse/FLINK-10154) | Make sure we always read at least one record in KinesisConnector |  Minor | Connectors / Kinesis | Jamie Grier | Jamie Grier |
| [FLINK-10116](https://issues.apache.org/jira/browse/FLINK-10116) | createComparator fails on case class with Unit type fields prior to the join-key |  Major | API / DataSet | Will | Fabian Hueske |
| [FLINK-10159](https://issues.apache.org/jira/browse/FLINK-10159) | TestHarness#initializeState(xyz) calls after TestHarness#open() are being silently ignored |  Critical | Tests | Piotr Nowojski | Piotr Nowojski |
| [FLINK-10169](https://issues.apache.org/jira/browse/FLINK-10169) | RowtimeValidator fails with custom TimestampExtractor |  Major | Table SQL / API | Timo Walther |  |
| [FLINK-10072](https://issues.apache.org/jira/browse/FLINK-10072) | Syntax and consistency issues in "The Broadcast State Pattern" |  Trivial | Documentation | Rick Hofstede | Rick Hofstede |
| [FLINK-10151](https://issues.apache.org/jira/browse/FLINK-10151) | [State TTL] Fix false recursion call in TransformingStateTableKeyGroupPartitioner.tryAddToSource |  Major | Runtime / State Backends | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-10187](https://issues.apache.org/jira/browse/FLINK-10187) | Fix LogicalUnnestRule to match Correlate/Uncollect correctly |  Major | Table SQL / API | Shuyi Chen | Shuyi Chen |
| [FLINK-10175](https://issues.apache.org/jira/browse/FLINK-10175) | Fix concurrent access to shared buffer in map state / querable state |  Critical | Runtime / State Backends | Stefan Richter | Stefan Richter |
| [FLINK-10204](https://issues.apache.org/jira/browse/FLINK-10204) | StreamElementSerializer#copy broken for LatencyMarkers |  Major | Runtime / Metrics | Ben La Monica | Ben La Monica |
| [FLINK-10192](https://issues.apache.org/jira/browse/FLINK-10192) | SQL Client table visualization mode does not update correctly |  Major | Table SQL / API, Table SQL / Client | Fabian Hueske | Timo Walther |
| [FLINK-10189](https://issues.apache.org/jira/browse/FLINK-10189) | FindBugs warnings: Inefficient use of keySet iterator instead of entrySet iterator |  Major | Connectors / Common | Hiroaki Yoshida | Hiroaki Yoshida |
| [FLINK-10141](https://issues.apache.org/jira/browse/FLINK-10141) | Reduce lock contention introduced with 1.5 |  Major | Runtime / Network | Nico Kruber | Nico Kruber |
| [FLINK-10115](https://issues.apache.org/jira/browse/FLINK-10115) | Content-length limit is also applied to FileUploads |  Major | Runtime / REST, Runtime / Web Frontend | Yazdan Shirvany | Chesnay Schepler |
| [FLINK-10150](https://issues.apache.org/jira/browse/FLINK-10150) | Chained batch operators interfere with each other other |  Blocker | Runtime / Metrics, Runtime / Web Frontend | Helmut Zechmann | Chesnay Schepler |
| [FLINK-10283](https://issues.apache.org/jira/browse/FLINK-10283) | FileCache logs unnecessary warnings |  Major | Runtime / Task | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10261](https://issues.apache.org/jira/browse/FLINK-10261) | INSERT INTO does not work with ORDER BY clause |  Major | Table SQL / API | Timo Walther | xueyu |
| [FLINK-10193](https://issues.apache.org/jira/browse/FLINK-10193) | Default RPC timeout is used when triggering savepoint via JobMasterGateway |  Critical | Runtime / Coordination | Gary Yao | Gary Yao |
| [FLINK-10174](https://issues.apache.org/jira/browse/FLINK-10174) | getbytes with no charsets test error for hex and toBase64 |  Major | Table SQL / API | xueyu | xueyu |
| [FLINK-10293](https://issues.apache.org/jira/browse/FLINK-10293) | RemoteStreamEnvironment does not forward port to RestClusterClient |  Major | Command Line Client | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10281](https://issues.apache.org/jira/browse/FLINK-10281) | Fix string literal escaping throughout Table & SQL API |  Major | Table SQL / API | vinoyang | Timo Walther |
| [FLINK-10011](https://issues.apache.org/jira/browse/FLINK-10011) | Old job resurrected during HA failover |  Blocker | Runtime / Coordination | Elias Levy | Till Rohrmann |
| [FLINK-10269](https://issues.apache.org/jira/browse/FLINK-10269) | Elasticsearch 6 UpdateRequest fail because of binary incompatibility |  Blocker | Connectors / ElasticSearch | Timo Walther | Timo Walther |
| [FLINK-10328](https://issues.apache.org/jira/browse/FLINK-10328) | Stopping the ZooKeeperSubmittedJobGraphStore should release all currently held locks |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-10329](https://issues.apache.org/jira/browse/FLINK-10329) | Fail with exception if job cannot be removed by ZooKeeperSubmittedJobGraphStore#removeJobGraph |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-10255](https://issues.apache.org/jira/browse/FLINK-10255) | Standby Dispatcher locks submitted JobGraphs |  Blocker | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-10314](https://issues.apache.org/jira/browse/FLINK-10314) | Blocking calls in Execution Graph creation bring down cluster |  Blocker | Runtime / Coordination | Stephan Ewen | Till Rohrmann |
| [FLINK-9884](https://issues.apache.org/jira/browse/FLINK-9884) | Slot request may not be removed when it has already be assigned in slot manager |  Major | Runtime / Coordination | shuai.xu | shuai.xu |
| [FLINK-10362](https://issues.apache.org/jira/browse/FLINK-10362) | Bundled S3 connectors load wrong Hadoop config |  Major | FileSystems | Stephan Ewen | Stephan Ewen |
| [FLINK-10363](https://issues.apache.org/jira/browse/FLINK-10363) | S3 FileSystem factory prints secrets into logs |  Critical | FileSystems | Stephan Ewen | Stephan Ewen |
| [FLINK-9567](https://issues.apache.org/jira/browse/FLINK-9567) | Flink does not release resource in Yarn Cluster mode |  Critical | Deployment / YARN, Runtime / Coordination | Shimin Yang | Shimin Yang |
| [FLINK-10157](https://issues.apache.org/jira/browse/FLINK-10157) | Allow \`null\` user values in map state with TTL |  Minor | Runtime / State Backends | chengjie.wu | Andrey Zagrebin |
| [FLINK-10376](https://issues.apache.org/jira/browse/FLINK-10376) | BlobCacheCleanupTest.testPermanentBlobCleanup failed on Travis |  Critical | Tests | Till Rohrmann | Zili Chen |
| [FLINK-10389](https://issues.apache.org/jira/browse/FLINK-10389) | TaskManagerServicesConfiguration ctor contains self assignment |  Minor | . | Ted Yu | vinoyang |
| [FLINK-10383](https://issues.apache.org/jira/browse/FLINK-10383) | Hadoop configurations on the classpath seep into the S3 file system configs |  Major | FileSystems | Stephan Ewen | Stephan Ewen |
| [FLINK-10416](https://issues.apache.org/jira/browse/FLINK-10416) | Add files generated by jepsen tests to rat excludes |  Major | Build System, Tests | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-10263](https://issues.apache.org/jira/browse/FLINK-10263) | User-defined function with LITERAL paramters yields CompileException |  Major | Table SQL / API | Fabian Hueske | Timo Walther |
| [FLINK-10444](https://issues.apache.org/jira/browse/FLINK-10444) | Make S3 entropy injection work with FileSystem safety net |  Major | FileSystems | Stephan Ewen | Stephan Ewen |
| [FLINK-10400](https://issues.apache.org/jira/browse/FLINK-10400) | Return failed JobResult if job terminates in state FAILED or CANCELED |  Major | Command Line Client | Till Rohrmann | Till Rohrmann |
| [FLINK-10415](https://issues.apache.org/jira/browse/FLINK-10415) | RestClient does not react to lost connection |  Blocker | Runtime / REST | Till Rohrmann | Till Rohrmann |
| [FLINK-10065](https://issues.apache.org/jira/browse/FLINK-10065) | InstantiationUtil.deserializeObject(InputStream in, ClassLoader cl, boolean isFailureTolerant) will close the inputStream |  Major | . | Congxian Qiu | Congxian Qiu |
| [FLINK-10450](https://issues.apache.org/jira/browse/FLINK-10450) | Broken links in the documentation |  Major | Documentation, Project Website | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10451](https://issues.apache.org/jira/browse/FLINK-10451) | TableFunctionCollector should handle the life cycle of ScalarFunction |  Major | Table SQL / API | Ruidong Li | Ruidong Li |
| [FLINK-10454](https://issues.apache.org/jira/browse/FLINK-10454) | Travis fails on ScheduleOrUpdateConsumersTest |  Critical | Tests | Zili Chen | Till Rohrmann |
| [FLINK-10421](https://issues.apache.org/jira/browse/FLINK-10421) | Shaded Hadoop S3A end-to-end test failed on Travis |  Critical | Tests | Dawid Wysakowicz | Till Rohrmann |
| [FLINK-10487](https://issues.apache.org/jira/browse/FLINK-10487) | fix invalid Flink SQL example |  Major | Documentation, Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-10295](https://issues.apache.org/jira/browse/FLINK-10295) | Tokenisation of Program Args resulting in unexpected results |  Blocker | Runtime / REST, Runtime / Web Frontend | Gaurav Singhania | Andrey Zagrebin |
| [FLINK-10469](https://issues.apache.org/jira/browse/FLINK-10469) | FileChannel may not write the whole buffer in a single call to FileChannel.write(Buffer buffer) |  Blocker | Runtime / Network | Yun Gao | Nico Kruber |
| [FLINK-5542](https://issues.apache.org/jira/browse/FLINK-5542) | YARN client incorrectly uses local YARN config to check vcore capacity |  Major | Deployment / YARN | Shannon Carey |  |
| [FLINK-10465](https://issues.apache.org/jira/browse/FLINK-10465) | Jepsen: runit supervised sshd is stopped on tear down |  Critical | Tests | Gary Yao | Gary Yao |
| [FLINK-10316](https://issues.apache.org/jira/browse/FLINK-10316) | Add check to KinesisProducer that aws.region is set |  Minor | Connectors / Kinesis | Joseph Sims |  |
| [FLINK-10379](https://issues.apache.org/jira/browse/FLINK-10379) | Can not use Table Functions in Java Table API |  Critical | Table SQL / API | Piotr Nowojski | Hequn Cheng |
| [FLINK-9788](https://issues.apache.org/jira/browse/FLINK-9788) | ExecutionGraph Inconsistency prevents Job from recovering |  Blocker | . | Gary Yao | Till Rohrmann |
| [FLINK-10529](https://issues.apache.org/jira/browse/FLINK-10529) | Add flink-s3-fs-base to the connectors in the travis stage file. |  Major | Build System | Kostas Kloudas | Kostas Kloudas |
| [FLINK-10524](https://issues.apache.org/jira/browse/FLINK-10524) | MemoryManagerConcurrentModReleaseTest.testConcurrentModificationWhileReleasing failed on travis |  Critical | Runtime / Coordination, Tests | Chesnay Schepler | Till Rohrmann |
| [FLINK-10532](https://issues.apache.org/jira/browse/FLINK-10532) | Broken links in documentation |  Major | Documentation | Chesnay Schepler | Timo Walther |
| [FLINK-10544](https://issues.apache.org/jira/browse/FLINK-10544) | Remove custom settings.xml for snapshot deployments |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10530](https://issues.apache.org/jira/browse/FLINK-10530) | ProcessFailureCancelingITCase.testCancelingOnProcessFailure failed on Travis. |  Critical | Tests | Kostas Kloudas | Till Rohrmann |
| [FLINK-10516](https://issues.apache.org/jira/browse/FLINK-10516) | YarnApplicationMasterRunner does not initialize FileSystem with correct Flink Configuration during setup |  Major | Deployment / YARN | Shuyi Chen | Shuyi Chen |
| [FLINK-10135](https://issues.apache.org/jira/browse/FLINK-10135) | Certain cluster-level metrics are no longer exposed |  Critical | Runtime / Coordination, Runtime / Metrics | Joey Echeverria | vinoyang |
| [FLINK-9932](https://issues.apache.org/jira/browse/FLINK-9932) | Timed-out TaskExecutor slot-offers to JobMaster leak the slot |  Blocker | Runtime / Coordination | shuai.xu | shuai.xu |
| [FLINK-9891](https://issues.apache.org/jira/browse/FLINK-9891) | Flink cluster is not shutdown in YARN mode when Flink client is stopped |  Major | Command Line Client, Deployment / YARN | Sergey Krasovskiy | Andrey Zagrebin |
| [FLINK-10390](https://issues.apache.org/jira/browse/FLINK-10390) | DataDog MetricReporter leaks connections |  Minor | Runtime / Metrics | Elias Levy | Chesnay Schepler |
| [FLINK-10567](https://issues.apache.org/jira/browse/FLINK-10567) | Lost serialize fields when ttl state store with the mutable serializer |  Major | Runtime / State Backends | Aitozi | Aitozi |
| [FLINK-10580](https://issues.apache.org/jira/browse/FLINK-10580) | EventTimeWindowCheckpointingITCase fails on travis |  Blocker | Runtime / Metrics, Runtime / State Backends, Tests | Chesnay Schepler | Till Rohrmann |
| [FLINK-10259](https://issues.apache.org/jira/browse/FLINK-10259) | Key validation for GroupWindowAggregate is broken |  Major | Table SQL / API | Fabian Hueske | Fabian Hueske |
| [FLINK-4052](https://issues.apache.org/jira/browse/FLINK-4052) | Unstable test ConnectionUtilsTest |  Critical | Tests | Stephan Ewen | Stephan Ewen |
| [FLINK-9878](https://issues.apache.org/jira/browse/FLINK-9878) | IO worker threads BLOCKED on SSL Session Cache while CMS full gc |  Major | Runtime / Network | Nico Kruber | Nico Kruber |
| [FLINK-10639](https://issues.apache.org/jira/browse/FLINK-10639) | Fix java syntax error in document |  Major | Documentation, Table SQL / API | sunjincheng | Hequn Cheng |
| [FLINK-9975](https://issues.apache.org/jira/browse/FLINK-9975) | Netty dependency of Hadoop \>= 2.7 is not relocated |  Major | Build System | Nico Kruber | Nico Kruber |
| [FLINK-10491](https://issues.apache.org/jira/browse/FLINK-10491) | Deadlock during spilling data in SpillableSubpartition |  Critical | Runtime / Network | Piotr Nowojski | Zhijiang |
| [FLINK-10425](https://issues.apache.org/jira/browse/FLINK-10425) | taskmanager.host is not respected |  Major | Runtime / Coordination | Andrew Kowpak | vinoyang |
| [FLINK-10220](https://issues.apache.org/jira/browse/FLINK-10220) | StreamSQL E2E test fails on travis |  Critical | Table SQL / API, Tests | Chesnay Schepler | Hequn Cheng |
| [FLINK-10570](https://issues.apache.org/jira/browse/FLINK-10570) | State grows unbounded when "within" constraint not applied |  Major | Library / CEP | Thomas Wozniakowski | Dawid Wysakowicz |
| [FLINK-10621](https://issues.apache.org/jira/browse/FLINK-10621) | BootstrapToolsTest.testConcurrentActorSystemCreation hangs forever when running locally |  Major | Tests | Alexey Trenikhin | Biao Liu |
| [FLINK-10657](https://issues.apache.org/jira/browse/FLINK-10657) | TPCHQuery3 example fails with IllegalAccessException |  Trivial | Examples, Tests | JIN SUN | JIN SUN |
| [FLINK-10663](https://issues.apache.org/jira/browse/FLINK-10663) | Closing StreamingFileSink can cause NPE |  Critical | Connectors / Common, Connectors / FileSystem | Gary Yao | Gary Yao |
| [FLINK-10702](https://issues.apache.org/jira/browse/FLINK-10702) | Yarn app is not killed when scala shell is terminated |  Minor | Scala Shell | Jeff Zhang | Jeff Zhang |
| [FLINK-10675](https://issues.apache.org/jira/browse/FLINK-10675) | Fix dependency issues in sql & table integration |  Blocker | Library / CEP, Table SQL / API, Table SQL / Client | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-10726](https://issues.apache.org/jira/browse/FLINK-10726) | Streaming SQL end-to-end test fails due to recent flink-table-common changes |  Major | Table SQL / API, Test Infrastructure | Timo Walther | Timo Walther |
| [FLINK-10166](https://issues.apache.org/jira/browse/FLINK-10166) | Dependency problems when executing SQL query in sql-client |  Blocker | Table SQL / API, Table SQL / Client | Dawid Wysakowicz | Timo Walther |
| [FLINK-10690](https://issues.apache.org/jira/browse/FLINK-10690) | Tests leak resources via Files.list |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10693](https://issues.apache.org/jira/browse/FLINK-10693) | Fix Scala EitherSerializer duplication |  Critical | API / Scala | Stephan Ewen | Stephan Ewen |
| [FLINK-9635](https://issues.apache.org/jira/browse/FLINK-9635) | Local recovery scheduling can cause spread out of tasks |  Critical | Runtime / Coordination | Till Rohrmann | Stefan Richter |
| [FLINK-10669](https://issues.apache.org/jira/browse/FLINK-10669) | Exceptions & errors are not properly checked in logs in e2e tests |  Major | Test Infrastructure | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-10681](https://issues.apache.org/jira/browse/FLINK-10681) | elasticsearch6.ElasticsearchSinkITCase fails if wrong JNA library installed |  Critical | Connectors / ElasticSearch, Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-10739](https://issues.apache.org/jira/browse/FLINK-10739) | Unstable ProcessFailureCancelingITCase.testCancelingOnProcessFailure |  Major | Tests | Kostas Kloudas | Kostas Kloudas |
| [FLINK-10581](https://issues.apache.org/jira/browse/FLINK-10581) | YarnConfigurationITCase.testFlinkContainerMemory test instability |  Critical | Deployment / YARN | Piotr Nowojski | Dawid Wysakowicz |
| [FLINK-10752](https://issues.apache.org/jira/browse/FLINK-10752) | Result of AbstractYarnClusterDescriptor#validateClusterResources is ignored |  Major | Deployment / YARN | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-10747](https://issues.apache.org/jira/browse/FLINK-10747) | CoGroupConnectedComponentsITCase deadlocked on Travis |  Blocker | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-10757](https://issues.apache.org/jira/browse/FLINK-10757) | TaskManagerProcessFailureStreamingRecoveryITCase failed to initialize the cluster entrypoint StandaloneSessionClusterEntrypoint. |  Major | Tests | Bowen Li | Zili Chen |
| [FLINK-10715](https://issues.apache.org/jira/browse/FLINK-10715) | E2e tests fail with ConcurrentModificationException in MetricRegistryImpl |  Blocker | Runtime / Metrics, Test Infrastructure | Dawid Wysakowicz | Igal Shilman |
| [FLINK-10357](https://issues.apache.org/jira/browse/FLINK-10357) | Streaming File Sink end-to-end test failed with mismatch |  Critical | Tests | Till Rohrmann | Gary Yao |
| [FLINK-10364](https://issues.apache.org/jira/browse/FLINK-10364) | Test instability in NonHAQueryableStateFsBackendITCase#testMapState |  Critical | Runtime / Queryable State, Tests | Nico Kruber | Stefan Richter |
| [FLINK-10638](https://issues.apache.org/jira/browse/FLINK-10638) | Invalid table scan resolution for temporal join queries |  Major | Table SQL / API | Timo Walther | Piotr Nowojski |
| [FLINK-8897](https://issues.apache.org/jira/browse/FLINK-8897) | Rowtime materialization causes "mismatched type" AssertionError |  Major | Table SQL / API | Xingcan Cui | Timo Walther |
| [FLINK-10773](https://issues.apache.org/jira/browse/FLINK-10773) | Resume externalized checkpoint end-to-end test fails |  Critical | Test Infrastructure | Till Rohrmann | Till Rohrmann |
| [FLINK-10222](https://issues.apache.org/jira/browse/FLINK-10222) | Table scalar function expression parses error when function name equals the exists keyword suffix |  Major | Table SQL / API | vinoyang | vinoyang |
| [FLINK-10463](https://issues.apache.org/jira/browse/FLINK-10463) | Null literal cannot be properly parsed in Java Table API function call |  Major | Table SQL / API | Xingcan Cui | Hequn Cheng |
| [FLINK-10704](https://issues.apache.org/jira/browse/FLINK-10704) | Fix sql client end to end test failure |  Major | Connectors / Kafka, Test Infrastructure | vinoyang | vinoyang |
| [FLINK-10711](https://issues.apache.org/jira/browse/FLINK-10711) | flink-end-to-end-tests can fail silently |  Blocker | Test Infrastructure | Piotr Nowojski | Timo Walther |
| [FLINK-10805](https://issues.apache.org/jira/browse/FLINK-10805) | test\_confluent\_schema\_registry.sh and test\_sql\_client.sh end-to-end test broken |  Major | Test Infrastructure | Till Rohrmann | Till Rohrmann |
| [FLINK-10750](https://issues.apache.org/jira/browse/FLINK-10750) | SocketClientSinkTest.testRetry fails on Travis |  Critical | Tests | Till Rohrmann | Chesnay Schepler |
| [FLINK-10797](https://issues.apache.org/jira/browse/FLINK-10797) | "IntelliJ Setup" link is broken in Readme.md |  Major | . | Xiening Dai | Zili Chen |
| [FLINK-10812](https://issues.apache.org/jira/browse/FLINK-10812) | javadoc-plugin fails for flink-e2e-test-utils |  Critical | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10811](https://issues.apache.org/jira/browse/FLINK-10811) | Hcatalog modules needs scala suffix |  Blocker | API / DataSet, Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10816](https://issues.apache.org/jira/browse/FLINK-10816) | Fix LockableTypeSerializer.duplicate() |  Major | Library / CEP | Stefan Richter | Stefan Richter |
| [FLINK-10770](https://issues.apache.org/jira/browse/FLINK-10770) | Some generated functions are not opened properly. |  Major | Table SQL / API | wangsan | wangsan |
| [FLINK-10361](https://issues.apache.org/jira/browse/FLINK-10361) | Elasticsearch (v6.3.1) sink end-to-end test instable |  Critical | Tests | Till Rohrmann | Chesnay Schepler |
| [FLINK-10825](https://issues.apache.org/jira/browse/FLINK-10825) | ConnectedComponents test instable on Travis |  Critical | Test Infrastructure | Timo Walther | Chesnay Schepler |
| [FLINK-10814](https://issues.apache.org/jira/browse/FLINK-10814) | Kafka examples modules need scala suffix |  Blocker | Connectors / Kafka, Examples | Chesnay Schepler | Hequn Cheng |
| [FLINK-10823](https://issues.apache.org/jira/browse/FLINK-10823) | Missing scala suffixes |  Blocker | API / DataSet, Runtime / Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10733](https://issues.apache.org/jira/browse/FLINK-10733) | Misleading clean\_log\_files() in common.sh |  Major | Test Infrastructure | Kostas Kloudas | vinoyang |
| [FLINK-10801](https://issues.apache.org/jira/browse/FLINK-10801) | Fix sql client integrate elasticsearch connector test failure |  Major | Test Infrastructure | vinoyang | Piotr Nowojski |
| [FLINK-10826](https://issues.apache.org/jira/browse/FLINK-10826) | Heavy deployment end-to-end test produces no output on Travis |  Critical | Test Infrastructure | Timo Walther | Stefan Richter |
| [FLINK-10821](https://issues.apache.org/jira/browse/FLINK-10821) | Resuming Externalized Checkpoint E2E test does not resume from Externalized Checkpoint |  Blocker | Test Infrastructure | Gary Yao | Igal Shilman |
| [FLINK-10839](https://issues.apache.org/jira/browse/FLINK-10839) | Fix implementation of PojoSerializer.duplicate() w.r.t. subclass serializer |  Blocker | API / Type Serialization System | Stefan Richter | Stefan Richter |
| [FLINK-10753](https://issues.apache.org/jira/browse/FLINK-10753) | Propagate and log snapshotting exceptions |  Major | Runtime / State Backends | Alexander Fedulov | Stefan Richter |
| [FLINK-10419](https://issues.apache.org/jira/browse/FLINK-10419) | ClassNotFoundException while deserializing user exceptions from checkpointing |  Major | Runtime / Coordination, Runtime / State Backends | Nico Kruber | Dawid Wysakowicz |
| [FLINK-10655](https://issues.apache.org/jira/browse/FLINK-10655) | RemoteRpcInvocation not overwriting ObjectInputStream's ClassNotFoundException |  Major | Runtime / Coordination | Nico Kruber | Nico Kruber |
| [FLINK-10861](https://issues.apache.org/jira/browse/FLINK-10861) | Kafka e2e test fails during tearing down |  Major | . | Piotr Nowojski | Piotr Nowojski |
| [FLINK-10857](https://issues.apache.org/jira/browse/FLINK-10857) | Conflict between JMX and Prometheus Metrics reporter |  Major | Runtime / Metrics | Truong Duc Kien | Chesnay Schepler |
| [FLINK-10856](https://issues.apache.org/jira/browse/FLINK-10856) | Harden resume from externalized checkpoint E2E test |  Critical | Runtime / State Backends, Test Infrastructure | Till Rohrmann | Till Rohrmann |
| [FLINK-10642](https://issues.apache.org/jira/browse/FLINK-10642) | CodeGen split fields errors when maxGeneratedCodeLength equals 1 |  Major | Table SQL / API | xueyu | xueyu |
| [FLINK-10843](https://issues.apache.org/jira/browse/FLINK-10843) | Make Kafka version definition more flexible for new Kafka table factory |  Major | Connectors / Kafka, Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-10531](https://issues.apache.org/jira/browse/FLINK-10531) | State TTL RocksDb backend end-to-end test failed on Travis |  Critical | Tests | Till Rohrmann | Kostas Kloudas |
| [FLINK-10736](https://issues.apache.org/jira/browse/FLINK-10736) | Shaded Hadoop S3A end-to-end test failed on Travis |  Critical | Test Infrastructure | Till Rohrmann | Andrey Zagrebin |
| [FLINK-10913](https://issues.apache.org/jira/browse/FLINK-10913) | ExecutionGraphRestartTest.testRestartAutomatically unstable on Travis |  Critical | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-10880](https://issues.apache.org/jira/browse/FLINK-10880) | Failover strategies should not be applied to Batch Execution |  Blocker | Runtime / Coordination | Stephan Ewen | Till Rohrmann |
| [FLINK-10925](https://issues.apache.org/jira/browse/FLINK-10925) | NPE in PythonPlanStreamer |  Major | API / Python | Karel Kolman | Karel Kolman |
| [FLINK-10893](https://issues.apache.org/jira/browse/FLINK-10893) | Streaming File Sink s3 end-to-end test failed on travis |  Major | Test Infrastructure | Dawid Wysakowicz | Stephan Ewen |
| [FLINK-10670](https://issues.apache.org/jira/browse/FLINK-10670) | Fix Correlate codegen error |  Major | Table SQL / API | Ruidong Li | Ruidong Li |
| [FLINK-10481](https://issues.apache.org/jira/browse/FLINK-10481) | Wordcount end-to-end test in docker env unstable |  Critical | Tests | Till Rohrmann | Dawid Wysakowicz |
| [FLINK-10354](https://issues.apache.org/jira/browse/FLINK-10354) | Savepoints should be counted as retained checkpoints |  Major | Runtime / State Backends | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-10172](https://issues.apache.org/jira/browse/FLINK-10172) | Inconsistency in ExpressionParser and ExpressionDsl for order by asc/desc |  Major | Table SQL / API | Rong Rong | Rong Rong |
| [FLINK-10309](https://issues.apache.org/jira/browse/FLINK-10309) | Cancel with savepoint fails with java.net.ConnectException when using the per job-mode |  Critical | Runtime / Coordination, Runtime / REST | vinoyang | Gary Yao |
| [FLINK-10926](https://issues.apache.org/jira/browse/FLINK-10926) | Fix the problem for function TIMESTAMPDIFF in Table |  Minor | Table SQL / API | Forward Xu |  |
| [FLINK-10674](https://issues.apache.org/jira/browse/FLINK-10674) | Fix handling of retractions after clean up |  Minor | Table SQL / API | ambition | Timo Walther |
| [FLINK-10009](https://issues.apache.org/jira/browse/FLINK-10009) | Fix the casting problem for function TIMESTAMPADD in Table |  Major | Table SQL / API | Xingcan Cui | Ruidong Li |
| [FLINK-10998](https://issues.apache.org/jira/browse/FLINK-10998) | flink-metrics-ganglia has LGPL dependency |  Major | Runtime / Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10990](https://issues.apache.org/jira/browse/FLINK-10990) | Enforce minimum timespan in MeterView |  Minor | Runtime / Metrics | Aitozi | Aitozi |
| [FLINK-10955](https://issues.apache.org/jira/browse/FLINK-10955) | Extend release notes for Flink 1.7 |  Critical | Documentation | Till Rohrmann | Till Rohrmann |
| [FLINK-10987](https://issues.apache.org/jira/browse/FLINK-10987) | LICENSE and NOTICE files are not correct |  Blocker | . | Till Rohrmann | Till Rohrmann |
| [FLINK-10763](https://issues.apache.org/jira/browse/FLINK-10763) | Interval join produces wrong result type in Scala API |  Major | API / DataStream | jinhai | Timo Walther |
| [FLINK-10992](https://issues.apache.org/jira/browse/FLINK-10992) | Jepsen: Do not use /tmp as HDFS Data Directory |  Major | Tests | Gary Yao | Gary Yao |
| [FLINK-11003](https://issues.apache.org/jira/browse/FLINK-11003) | Document of Java Lambda Expressions has a mistake |  Minor | Documentation | Yangze Guo | Yangze Guo |
| [FLINK-10842](https://issues.apache.org/jira/browse/FLINK-10842) | Waiting loops are broken in e2e/common.sh |  Major | Test Infrastructure | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-10946](https://issues.apache.org/jira/browse/FLINK-10946) | Resuming Externalized Checkpoint (rocks, incremental, scale up) end-to-end test failed on Travis |  Major | Test Infrastructure | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-10809](https://issues.apache.org/jira/browse/FLINK-10809) | Using DataStreamUtils.reinterpretAsKeyedStream produces corrupted keyed state after restore |  Major | API / DataStream, Runtime / State Backends | Dawid Wysakowicz | Stefan Richter |
| [FLINK-11123](https://issues.apache.org/jira/browse/FLINK-11123) | Missing import in ML quickstart docs |  Minor | Documentation, Library / Machine Learning | sunjincheng | sunjincheng |
| [FLINK-10455](https://issues.apache.org/jira/browse/FLINK-10455) | Potential Kafka producer leak in case of failures |  Critical | Connectors / Kafka | Nico Kruber | Jiangjie Qin |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-5860](https://issues.apache.org/jira/browse/FLINK-5860) | Replace all the file creating from java.io.tmpdir with TemporaryFolder |  Major | Tests | shijinkui | Mahesh Senniappan |
| [FLINK-10084](https://issues.apache.org/jira/browse/FLINK-10084) | Migration tests weren't updated for 1.5 |  Critical | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10139](https://issues.apache.org/jira/browse/FLINK-10139) | Update migration tests for 1.6 |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10201](https://issues.apache.org/jira/browse/FLINK-10201) | The batchTestUtil was mistakenly used in some stream sql tests |  Minor | Table SQL / API | Xingcan Cui | Xingcan Cui |
| [FLINK-10606](https://issues.apache.org/jira/browse/FLINK-10606) | Construct NetworkEnvironment simple for tests |  Minor | Runtime / Network, Tests | Zhijiang | Zhijiang |
| [FLINK-10607](https://issues.apache.org/jira/browse/FLINK-10607) | Unify to remove duplicated NoOpResultPartitionConsumableNotifier |  Minor | Runtime / Network, Tests | Zhijiang | Zhijiang |
| [FLINK-10490](https://issues.apache.org/jira/browse/FLINK-10490) | OperatorSnapshotUtil should probably use SavepointV2Serializer |  Major | Tests | Stefan Richter | Stefan Richter |
| [FLINK-10791](https://issues.apache.org/jira/browse/FLINK-10791) | Provide end-to-end test for Kafka 0.11 connector |  Major | Test Infrastructure | vinoyang | vinoyang |
| [FLINK-10827](https://issues.apache.org/jira/browse/FLINK-10827) | Add test for duplicate() to SerializerTestBase |  Major | Tests | Stefan Richter | Stefan Richter |
| [FLINK-10872](https://issues.apache.org/jira/browse/FLINK-10872) | Extend SQL client end-to-end to test KafkaTableSink for kafka connector 0.11 |  Major | Test Infrastructure | vinoyang | vinoyang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9951](https://issues.apache.org/jira/browse/FLINK-9951) | Update scm developerConnection |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6846](https://issues.apache.org/jira/browse/FLINK-6846) | Add TIMESTAMPADD supported in TableAPI |  Major | Table SQL / API | sunjincheng | sunjincheng |
| [FLINK-9915](https://issues.apache.org/jira/browse/FLINK-9915) | Add TO\_BASE64 function for table/sql API |  Minor | Table SQL / API | vinoyang | vinoyang |
| [FLINK-9916](https://issues.apache.org/jira/browse/FLINK-9916) | Add FROM\_BASE64 function for table/sql API |  Minor | . | vinoyang | vinoyang |
| [FLINK-9928](https://issues.apache.org/jira/browse/FLINK-9928) | Add LOG2 function for table/sql API |  Minor | Table SQL / API | vinoyang | vinoyang |
| [FLINK-9135](https://issues.apache.org/jira/browse/FLINK-9135) | Remove AggregateReduceFunctionsRule once CALCITE-2216 is fixed |  Major | Table SQL / API | Fabian Hueske | Shuyi Chen |
| [FLINK-9637](https://issues.apache.org/jira/browse/FLINK-9637) | Add public user documentation for TTL feature |  Major | Runtime / State Backends | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-10087](https://issues.apache.org/jira/browse/FLINK-10087) | Update BucketingSinkMigrationTest |  Major | Connectors / FileSystem | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10085](https://issues.apache.org/jira/browse/FLINK-10085) | Update AbstractOperatorRestoreTestBase |  Critical | Runtime / State Backends, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10089](https://issues.apache.org/jira/browse/FLINK-10089) | Update FlinkKafkaConsumerBaseMigrationTest |  Major | Connectors / Kafka | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10090](https://issues.apache.org/jira/browse/FLINK-10090) | Update ContinuousFileProcessingMigrationTest |  Major | Connectors / FileSystem | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10091](https://issues.apache.org/jira/browse/FLINK-10091) | Update WindowOperatorMigrationTest |  Major | API / DataStream | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10092](https://issues.apache.org/jira/browse/FLINK-10092) | Update StatefulJobSavepointMigrationITCase |  Major | Runtime / State Backends | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10109](https://issues.apache.org/jira/browse/FLINK-10109) | Add documentation for StreamingFileSink |  Major | Connectors / Common | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-7205](https://issues.apache.org/jira/browse/FLINK-7205) | Add UUID supported in TableAPI/SQL |  Major | Table SQL / API | sunjincheng | Jiayi Liao |
| [FLINK-5232](https://issues.apache.org/jira/browse/FLINK-5232) | Add a Thread default uncaught exception handler on the JobManager |  Major | Runtime / Coordination | Stephan Ewen | vinoyang |
| [FLINK-10059](https://issues.apache.org/jira/browse/FLINK-10059) | Add LTRIM supported in Table API and SQL |  Minor | Table SQL / API | vinoyang | vinoyang |
| [FLINK-10060](https://issues.apache.org/jira/browse/FLINK-10060) | Add RTRIM supported in Table API and SQL |  Minor | . | vinoyang | vinoyang |
| [FLINK-9781](https://issues.apache.org/jira/browse/FLINK-9781) | scala-maven-plugin fails on java 9 |  Major | API / Scala, Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10207](https://issues.apache.org/jira/browse/FLINK-10207) | Bump checkstyle-plugin to 8.9 |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10324](https://issues.apache.org/jira/browse/FLINK-10324) | Replace ZooKeeperStateHandleStore#getAllSortedByNameAndLock by getAllAndLock |  Minor | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-10331](https://issues.apache.org/jira/browse/FLINK-10331) | Reduce number of flush requests to the network stack |  Major | Runtime / Network | Nico Kruber | Nico Kruber |
| [FLINK-10332](https://issues.apache.org/jira/browse/FLINK-10332) | Move data available notification in PipelinedSubpartition out of the synchronized block |  Major | Runtime / Network | Nico Kruber | Nico Kruber |
| [FLINK-9913](https://issues.apache.org/jira/browse/FLINK-9913) | Improve output serialization only once in RecordWriter |  Major | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-9713](https://issues.apache.org/jira/browse/FLINK-9713) | Support versioned joins in planning phase |  Major | Table SQL / API | Piotr Nowojski | Piotr Nowojski |
| [FLINK-9714](https://issues.apache.org/jira/browse/FLINK-9714) | Support versioned joins with processing time |  Major | Table SQL / API | Piotr Nowojski | Piotr Nowojski |
| [FLINK-9738](https://issues.apache.org/jira/browse/FLINK-9738) | Provide a way to define Table Version Functions in Table API |  Major | Table SQL / API | Piotr Nowojski | Piotr Nowojski |
| [FLINK-10234](https://issues.apache.org/jira/browse/FLINK-10234) | Lambda usage in FutureUtils is ambigouos with Java 9 |  Major | . | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6847](https://issues.apache.org/jira/browse/FLINK-6847) | Add TIMESTAMPDIFF supported in TableAPI |  Major | Table SQL / API | sunjincheng |  |
| [FLINK-6813](https://issues.apache.org/jira/browse/FLINK-6813) | Add TIMESTAMPDIFF supported in SQL |  Major | Table SQL / API | sunjincheng | sunjincheng |
| [FLINK-10145](https://issues.apache.org/jira/browse/FLINK-10145) | Add replace supported in TableAPI and SQL |  Major | Table SQL / API | Guibo Pan | Guibo Pan |
| [FLINK-10393](https://issues.apache.org/jira/browse/FLINK-10393) | Remove legacy entrypoints from startup scripts |  Major | Deployment / Scripts | Till Rohrmann | Till Rohrmann |
| [FLINK-10394](https://issues.apache.org/jira/browse/FLINK-10394) | Remove legacy mode testing profiles from Travis config |  Major | Build System | Till Rohrmann | Till Rohrmann |
| [FLINK-10395](https://issues.apache.org/jira/browse/FLINK-10395) | Remove legacy mode switch from parent pom |  Major | Build System | Till Rohrmann | Till Rohrmann |
| [FLINK-10396](https://issues.apache.org/jira/browse/FLINK-10396) | Remove codebase switch from MiniClusterResource |  Major | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-10397](https://issues.apache.org/jira/browse/FLINK-10397) | Remove CoreOptions#MODE |  Major | Runtime / Configuration | Till Rohrmann | Till Rohrmann |
| [FLINK-10403](https://issues.apache.org/jira/browse/FLINK-10403) | Port JobManagerHAProcessFailureBatchRecoveryITCase to new code base |  Major | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-10402](https://issues.apache.org/jira/browse/FLINK-10402) | Port AbstractTaskManagerProcessFailureRecoveryTest to new code base |  Major | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-10401](https://issues.apache.org/jira/browse/FLINK-10401) | Port ProcessFailureCancelingITCase to new code base |  Major | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-10209](https://issues.apache.org/jira/browse/FLINK-10209) | Exclude jdk.tools dependency from hadoop when running with java 9 |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8819](https://issues.apache.org/jira/browse/FLINK-8819) | Rework travis script to use build stages |  Trivial | Build System, Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10470](https://issues.apache.org/jira/browse/FLINK-10470) | Add method to check if pattern can produce empty matches |  Major | Library / CEP | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-10427](https://issues.apache.org/jira/browse/FLINK-10427) | Port JobSubmitTest to new code base |  Major | Tests | Zili Chen | Zili Chen |
| [FLINK-10406](https://issues.apache.org/jira/browse/FLINK-10406) | Port JobManagerTest to new code base |  Major | Tests | Zili Chen | Zili Chen |
| [FLINK-10453](https://issues.apache.org/jira/browse/FLINK-10453) | Move hadoop 2.4 travis profile into cron job |  Major | Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10512](https://issues.apache.org/jira/browse/FLINK-10512) | Remove legacy REST API docs |  Major | Documentation, Runtime / REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10208](https://issues.apache.org/jira/browse/FLINK-10208) | Bump mockito to 2.0+ |  Major | Build System, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10386](https://issues.apache.org/jira/browse/FLINK-10386) | Remove legacy class TaskExecutionStateListener |  Major | Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-10227](https://issues.apache.org/jira/browse/FLINK-10227) | Remove usage of javax.xml.bind.DatatypeConverter |  Major | . | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9377](https://issues.apache.org/jira/browse/FLINK-9377) | Remove writing serializers as part of the checkpoint meta information |  Critical | Runtime / State Backends | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-10243](https://issues.apache.org/jira/browse/FLINK-10243) | Add option to reduce latency metrics granularity |  Major | Runtime / Configuration, Runtime / Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10426](https://issues.apache.org/jira/browse/FLINK-10426) | Port TaskTest to new code base |  Major | Tests | Zili Chen | Zili Chen |
| [FLINK-10541](https://issues.apache.org/jira/browse/FLINK-10541) |  Removed unused legacy methods in TestBaseUtils |  Major | Tests | Zili Chen | Zili Chen |
| [FLINK-10549](https://issues.apache.org/jira/browse/FLINK-10549) | Remove Legacy\* tests |  Major | Tests | Zili Chen | Zili Chen |
| [FLINK-10545](https://issues.apache.org/jira/browse/FLINK-10545) | Remove JobManagerLeaderSessionIDITCase |  Major | Tests | Zili Chen | Zili Chen |
| [FLINK-10546](https://issues.apache.org/jira/browse/FLINK-10546) | Remove StandaloneMiniCluster |  Major | Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-10551](https://issues.apache.org/jira/browse/FLINK-10551) | Remove legacy REST handlers |  Major | Runtime / REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8865](https://issues.apache.org/jira/browse/FLINK-8865) | Add CLI query code completion in SQL Client |  Major | Table SQL / Client | Timo Walther | xueyu |
| [FLINK-10547](https://issues.apache.org/jira/browse/FLINK-10547) | Remove LegacyCLI |  Minor | . | vinoyang | vinoyang |
| [FLINK-10559](https://issues.apache.org/jira/browse/FLINK-10559) | Remove LegacyLocalStreamEnvironment |  Major | Runtime / Task | Zili Chen | Zili Chen |
| [FLINK-10565](https://issues.apache.org/jira/browse/FLINK-10565) | Refactor SchedulerTestBase |  Major | Tests | Zili Chen | Zili Chen |
| [FLINK-10405](https://issues.apache.org/jira/browse/FLINK-10405) | Port JobManagerFailsITCase to new code base |  Major | Tests | Zili Chen | Zili Chen |
| [FLINK-10247](https://issues.apache.org/jira/browse/FLINK-10247) | Run MetricQueryService in separate thread pool |  Critical | Runtime / Metrics | Till Rohrmann | Shimin Yang |
| [FLINK-10253](https://issues.apache.org/jira/browse/FLINK-10253) | Run MetricQueryService with lower priority |  Critical | Runtime / Metrics | Till Rohrmann | vinoyang |
| [FLINK-9715](https://issues.apache.org/jira/browse/FLINK-9715) | Support versioned joins with event time |  Major | Table SQL / API | Piotr Nowojski | Piotr Nowojski |
| [FLINK-10537](https://issues.apache.org/jira/browse/FLINK-10537) | Network throughput performance regression after broadcast changes |  Major | Runtime / Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-10398](https://issues.apache.org/jira/browse/FLINK-10398) | Add Tanh math function supported in Table API and SQL |  Minor | Table SQL / API | vinoyang | vinoyang |
| [FLINK-10340](https://issues.apache.org/jira/browse/FLINK-10340) | Add Cosh math function supported in Table API and SQL |  Minor | Table SQL / API | Sergey Tsvetkov | vinoyang |
| [FLINK-10508](https://issues.apache.org/jira/browse/FLINK-10508) | Port JobManagerITCase to new code base |  Major | Tests | Zili Chen | Zili Chen |
| [FLINK-10602](https://issues.apache.org/jira/browse/FLINK-10602) | Run MetricFetcher in metrics ActorSystem |  Major | Runtime / Metrics | Till Rohrmann | Till Rohrmann |
| [FLINK-10527](https://issues.apache.org/jira/browse/FLINK-10527) | Cleanup constant isNewMode in YarnTestBase |  Major | Deployment / YARN | vinoyang | vinoyang |
| [FLINK-8880](https://issues.apache.org/jira/browse/FLINK-8880) | Validate configurations for SQL Client |  Major | Table SQL / Client | Xingcan Cui | Timo Walther |
| [FLINK-9737](https://issues.apache.org/jira/browse/FLINK-9737) | Allow to define Table Version Functions from SQL environment file |  Major | Table SQL / API | Piotr Nowojski | Timo Walther |
| [FLINK-10242](https://issues.apache.org/jira/browse/FLINK-10242) | Latency marker interval should be configurable |  Major | Runtime / Configuration, Runtime / Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10599](https://issues.apache.org/jira/browse/FLINK-10599) | Provide documentation for the modern kafka connector |  Major | Connectors / Kafka, Documentation | vinoyang | vinoyang |
| [FLINK-10623](https://issues.apache.org/jira/browse/FLINK-10623) | Extend streaming SQL end-to-end test to test MATCH\_RECOGNIZE |  Major | Table SQL / API, Tests | Till Rohrmann | Dawid Wysakowicz |
| [FLINK-10687](https://issues.apache.org/jira/browse/FLINK-10687) | Make flink-formats Scala-free |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-10723](https://issues.apache.org/jira/browse/FLINK-10723) | Upgrade MapSerializer for state evolution |  Major | API / Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-10717](https://issues.apache.org/jira/browse/FLINK-10717) | Introduce SimpleSerializerSnapshot as replacement for ParameterlessTypeSerializerConfig |  Major | API / Type Serialization System | Tzu-Li (Gordon) Tai | Stephan Ewen |
| [FLINK-10716](https://issues.apache.org/jira/browse/FLINK-10716) | Upgrade ListSerializer / ArrayListSerializer for state evolution |  Major | API / Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-10710](https://issues.apache.org/jira/browse/FLINK-10710) | Implement new CompositeSerializerSnapshot |  Major | API / Type Serialization System | Tzu-Li (Gordon) Tai | Stephan Ewen |
| [FLINK-10709](https://issues.apache.org/jira/browse/FLINK-10709) | Remove NS generic parameter from TypeSerializerSchemaCompatibility |  Major | API / Type Serialization System | Tzu-Li (Gordon) Tai | Stephan Ewen |
| [FLINK-10708](https://issues.apache.org/jira/browse/FLINK-10708) | Implement a SerializerMigrationTestBase |  Major | API / Type Serialization System, Runtime / State Backends | Tzu-Li (Gordon) Tai | Igal Shilman |
| [FLINK-10679](https://issues.apache.org/jira/browse/FLINK-10679) | Let TypeSerializerSchemaCompatibility.resolveSchemaCompatibility() be the entry point for compatibility checks in framework code |  Major | API / Type Serialization System, Runtime / State Backends | Tzu-Li (Gordon) Tai | Stephan Ewen |
| [FLINK-10605](https://issues.apache.org/jira/browse/FLINK-10605) | Upgrade AvroSerializer snapshot to implement new TypeSerializerSnapshot interface |  Major | API / Type Serialization System | Igal Shilman | Igal Shilman |
| [FLINK-9808](https://issues.apache.org/jira/browse/FLINK-9808) | Implement state conversion procedure in state backends |  Critical | Runtime / State Backends | Tzu-Li (Gordon) Tai | Aljoscha Krettek |
| [FLINK-9752](https://issues.apache.org/jira/browse/FLINK-9752) | Add an S3 RecoverableWriter |  Major | Connectors / Common | Stephan Ewen | Kostas Kloudas |
| [FLINK-7816](https://issues.apache.org/jira/browse/FLINK-7816) | Support Scala 2.12 closures and Java 8 lambdas in ClosureCleaner |  Major | API / Scala | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-7811](https://issues.apache.org/jira/browse/FLINK-7811) | Add support for Scala 2.12 |  Major | API / Scala | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-8987](https://issues.apache.org/jira/browse/FLINK-8987) | End-to-end test: Avro state evolution |  Blocker | Tests | Till Rohrmann | Kostas Kloudas |
| [FLINK-10097](https://issues.apache.org/jira/browse/FLINK-10097) | More tests to increase StreamingFileSink test coverage |  Major | Connectors / FileSystem | Kostas Kloudas | Kostas Kloudas |
| [FLINK-10632](https://issues.apache.org/jira/browse/FLINK-10632) | Run general purpose test job with failures in per-job mode |  Major | Test Infrastructure | Till Rohrmann | Dawid Wysakowicz |
| [FLINK-10627](https://issues.apache.org/jira/browse/FLINK-10627) | Extend test\_streaming\_file\_sink to test S3 writer |  Critical | Connectors / FileSystem, Tests | Till Rohrmann | Andrey Zagrebin |
| [FLINK-10633](https://issues.apache.org/jira/browse/FLINK-10633) | End-to-end test: Prometheus reporter |  Major | Test Infrastructure | Till Rohrmann | Chesnay Schepler |
| [FLINK-10384](https://issues.apache.org/jira/browse/FLINK-10384) | Add Sinh math function supported in Table API and SQL |  Minor | Table SQL / API | vinoyang | vinoyang |
| [FLINK-8985](https://issues.apache.org/jira/browse/FLINK-8985) | End-to-end test: CLI |  Major | Command Line Client, Tests | Till Rohrmann | Rong Rong |
| [FLINK-10765](https://issues.apache.org/jira/browse/FLINK-10765) | Modify one of the s3 tests to use the Presto S3 s3p schema |  Major | FileSystems, Test Infrastructure | Till Rohrmann | Stefan Richter |
| [FLINK-7062](https://issues.apache.org/jira/browse/FLINK-7062) | Support the basic functionality of MATCH\_RECOGNIZE |  Major | Library / CEP, Table SQL / API | Dian Fu | Dian Fu |
| [FLINK-10626](https://issues.apache.org/jira/browse/FLINK-10626) | Add documentation for event-time temporal table joins |  Major | Documentation, Table SQL / API | Till Rohrmann | Timo Walther |
| [FLINK-10863](https://issues.apache.org/jira/browse/FLINK-10863) | Assign uids to all operators |  Major | Test Infrastructure | Stefan Richter | Stefan Richter |
| [FLINK-10628](https://issues.apache.org/jira/browse/FLINK-10628) | Add end-to-end test for REST communication encryption |  Major | Runtime / REST | Till Rohrmann | Andrey Zagrebin |
| [FLINK-10624](https://issues.apache.org/jira/browse/FLINK-10624) | Extend SQL client end-to-end to test new KafkaTableSink |  Critical | Connectors / Kafka, Table SQL / API, Table SQL / Client, Tests | Till Rohrmann | vinoyang |
| [FLINK-10634](https://issues.apache.org/jira/browse/FLINK-10634) | End-to-end test: Metrics accessible via REST API |  Major | Runtime / Metrics, Runtime / REST, Test Infrastructure | Till Rohrmann | Chesnay Schepler |
| [FLINK-10764](https://issues.apache.org/jira/browse/FLINK-10764) | Add S3 entropy injection end-to-end/IT test |  Major | FileSystems, Test Infrastructure | Till Rohrmann | Gary Yao |
| [FLINK-10891](https://issues.apache.org/jira/browse/FLINK-10891) | Upgrade Kafka client version to 2.0.1 |  Major | Connectors / Kafka | vinoyang | vinoyang |
| [FLINK-10625](https://issues.apache.org/jira/browse/FLINK-10625) | Add MATCH\_RECOGNIZE documentation |  Major | Documentation, Table SQL / API | Till Rohrmann | Dawid Wysakowicz |
| [FLINK-10922](https://issues.apache.org/jira/browse/FLINK-10922) | Refactor the placement of the Flink Kafka connector end to end test module |  Critical | Test Infrastructure | vinoyang | vinoyang |
| [FLINK-8997](https://issues.apache.org/jira/browse/FLINK-8997) | Add sliding window aggregation to the job |  Major | Tests | Stefan Richter | Dawid Wysakowicz |
| [FLINK-10600](https://issues.apache.org/jira/browse/FLINK-10600) | Provide End-to-end test cases for modern Kafka connectors |  Blocker | Connectors / Kafka | vinoyang | vinoyang |
| [FLINK-9574](https://issues.apache.org/jira/browse/FLINK-9574) | Add a dedicated documentation page for state evolution |  Critical | API / Type Serialization System, Documentation, Runtime / State Backends | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-10793](https://issues.apache.org/jira/browse/FLINK-10793) | Change visibility of TtlValue and TtlSerializer to public for external tools |  Major | Runtime / State Backends | Stefan Richter | Stefan Richter |
| [FLINK-10631](https://issues.apache.org/jira/browse/FLINK-10631) | Update jepsen tests to run with multiple slots |  Critical | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-10767](https://issues.apache.org/jira/browse/FLINK-10767) | Update compatibility table for Flink 1.7 |  Critical | Documentation | Till Rohrmann | Dawid Wysakowicz |
| [FLINK-10900](https://issues.apache.org/jira/browse/FLINK-10900) | Mark Kafka 2.0 connector as beta feature |  Blocker | Connectors / Kafka | Till Rohrmann | Piotr Nowojski |


