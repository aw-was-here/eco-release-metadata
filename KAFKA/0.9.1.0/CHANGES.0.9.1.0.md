
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
# Apache Kafka Changelog

## Release 0.9.1.0 - Unreleased (as of 2016-01-16)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-3044](https://issues.apache.org/jira/browse/KAFKA-3044) | Consumer.poll doesnot return messages when poll interval is less |  Major | clients | Praveen Devarao | Jason Gustafson |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-3084](https://issues.apache.org/jira/browse/KAFKA-3084) | Topic existence checks in topic commands (create, alter, delete) |  Major | . | Grant Henke | Grant Henke |
| [KAFKA-3077](https://issues.apache.org/jira/browse/KAFKA-3077) | Enable KafkaLog4jAppender to work with SASL enabled brokers. |  Major | clients | Ashish K Singh | Ashish K Singh |
| [KAFKA-3058](https://issues.apache.org/jira/browse/KAFKA-3058) | remove the usage of deprecated config properties |  Major | core | Jun Rao | Konrad Kalita |
| [KAFKA-3043](https://issues.apache.org/jira/browse/KAFKA-3043) | Replace request.required.acks with acks in docs |  Major | website | Sasaki Toru |  |
| [KAFKA-3024](https://issues.apache.org/jira/browse/KAFKA-3024) | Remove old patch review tools |  Major | . | Grant Henke | Grant Henke |
| [KAFKA-3019](https://issues.apache.org/jira/browse/KAFKA-3019) | Add an exceptionName method to Errors |  Major | . | Grant Henke | Grant Henke |
| [KAFKA-3002](https://issues.apache.org/jira/browse/KAFKA-3002) | Make available to specify hostname with Uppercase at broker list |  Minor | clients | Sasaki Toru |  |
| [KAFKA-2992](https://issues.apache.org/jira/browse/KAFKA-2992) | Trace log statements in the replica fetcher inner loop create large amounts of garbage |  Minor | core | Cory Kolbeck |  |
| [KAFKA-2964](https://issues.apache.org/jira/browse/KAFKA-2964) | Split Security Rolling Upgrade Test By Client and Broker Protocols |  Minor | . | Ben Stopford | Ben Stopford |
| [KAFKA-2958](https://issues.apache.org/jira/browse/KAFKA-2958) | Remove duplicate API key mapping functionality |  Major | . | Grant Henke | Grant Henke |
| [KAFKA-2957](https://issues.apache.org/jira/browse/KAFKA-2957) | Fix typos in Kafka documentation |  Trivial | . | Vahid Hashemian | Vahid Hashemian |
| [KAFKA-2929](https://issues.apache.org/jira/browse/KAFKA-2929) | Migrate server side error mapping functionality |  Major | . | Grant Henke | Grant Henke |
| [KAFKA-2881](https://issues.apache.org/jira/browse/KAFKA-2881) | Documentation improvement |  Major | . | Gwen Shapira | Guozhang Wang |
| [KAFKA-2879](https://issues.apache.org/jira/browse/KAFKA-2879) | Make MiniKDC test service slightly more generic |  Major | . | Gwen Shapira | Gwen Shapira |
| [KAFKA-2668](https://issues.apache.org/jira/browse/KAFKA-2668) | Add a metric that records the total number of metrics |  Major | . | Joel Koshy | Dong Lin |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-3069](https://issues.apache.org/jira/browse/KAFKA-3069) | Fix recursion in ZkSecurityMigrator |  Major | security | Flavio Junqueira | Flavio Junqueira |
| [KAFKA-3055](https://issues.apache.org/jira/browse/KAFKA-3055) | JsonConverter mangles schema during serialization (fromConnectData) |  Major | copycat | Kishore Senji | Ewen Cheslack-Postava |
| [KAFKA-3009](https://issues.apache.org/jira/browse/KAFKA-3009) | Disallow star imports |  Major | . | Gwen Shapira | Manasvi Gupta |
| [KAFKA-2990](https://issues.apache.org/jira/browse/KAFKA-2990) | NoSuchMethodError when Kafka is compiled with 1.8 and run on 1.7 |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-2973](https://issues.apache.org/jira/browse/KAFKA-2973) | Fix leak of child sensors on remove |  Major | clients | Ismael Juma | Ismael Juma |
| [KAFKA-2965](https://issues.apache.org/jira/browse/KAFKA-2965) | Two variables should be exchanged. |  Minor | controller | Bo Wang |  |
| [KAFKA-2928](https://issues.apache.org/jira/browse/KAFKA-2928) | system tests: failures in version-related sanity checks |  Major | . | Geoff Anderson | Geoff Anderson |
| [KAFKA-2927](https://issues.apache.org/jira/browse/KAFKA-2927) | System tests: reduce storage footprint of collected logs |  Major | . | Geoff Anderson | Geoff Anderson |
| [KAFKA-2926](https://issues.apache.org/jira/browse/KAFKA-2926) | [MirrorMaker] InternalRebalancer calls wrong method of external rebalancer |  Major | tools | Gwen Shapira | Gwen Shapira |
| [KAFKA-2915](https://issues.apache.org/jira/browse/KAFKA-2915) | System Tests that use bootstrap.servers embedded in jinja files are not working |  Major | . | Ben Stopford |  |
| [KAFKA-2911](https://issues.apache.org/jira/browse/KAFKA-2911) | Replace Utils.sleep() with Time.sleep() whenever possible |  Major | . | Guozhang Wang | Jason Gustafson |
| [KAFKA-2906](https://issues.apache.org/jira/browse/KAFKA-2906) | Kafka Connect javadocs not built properly |  Major | copycat | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2902](https://issues.apache.org/jira/browse/KAFKA-2902) | StreamingConfig getConsumerConfiigs uses getRestoreConsumerConfigs instead of  getBaseConsumerConfigs |  Major | kafka streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-2892](https://issues.apache.org/jira/browse/KAFKA-2892) | Consumer Docs Use Wrong Method |  Major | clients | Jesse Anderson |  |
| [KAFKA-2886](https://issues.apache.org/jira/browse/KAFKA-2886) | WorkerSinkTask doesn't catch exceptions from rebalance callbacks |  Major | copycat | Ewen Cheslack-Postava | Jason Gustafson |
| [KAFKA-2878](https://issues.apache.org/jira/browse/KAFKA-2878) | Kafka broker throws OutOfMemory exception with invalid join group request |  Critical | clients | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-2874](https://issues.apache.org/jira/browse/KAFKA-2874) | zookeeper-server-stop.sh may fail to shutdown ZK and/or may stop unrelated processes |  Major | . | Michael Noll |  |
| [KAFKA-2872](https://issues.apache.org/jira/browse/KAFKA-2872) | Error starting KafkaStream caused by sink not being connected to parent source/processor nodes |  Major | kafka streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-2862](https://issues.apache.org/jira/browse/KAFKA-2862) | Incorrect help description for MirrorMaker's message.handler.args |  Major | . | Ashish K Singh | Ashish K Singh |
| [KAFKA-2859](https://issues.apache.org/jira/browse/KAFKA-2859) | Deadlock in WorkerSourceTask |  Blocker | copycat | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2850](https://issues.apache.org/jira/browse/KAFKA-2850) | SslTransportLayerTest.testInvalidEndpointIdentification fails consistently |  Major | clients, security | Flavio Junqueira | Rajini Sivaram |
| [KAFKA-2826](https://issues.apache.org/jira/browse/KAFKA-2826) | Make Kafka Connect ducktape services easier to extend |  Minor | copycat | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2824](https://issues.apache.org/jira/browse/KAFKA-2824) | MiniKDC based tests don't run in VirtualBox |  Major | . | Ben Stopford | Ben Stopford |
| [KAFKA-2820](https://issues.apache.org/jira/browse/KAFKA-2820) | System tests: log level is no longer propagating from service classes |  Major | . | Geoff Anderson | Geoff Anderson |
| [KAFKA-2815](https://issues.apache.org/jira/browse/KAFKA-2815) | unit test failure in org.apache.kafka.streams.processor.internals.KafkaStreamingPartitionAssignorTest |  Major | . | Jun Rao | Grant Henke |
| [KAFKA-2814](https://issues.apache.org/jira/browse/KAFKA-2814) | Kafka Connect system tests using REST interface fail on AWS |  Major | copycat, system tests | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2803](https://issues.apache.org/jira/browse/KAFKA-2803) | Add hard bounce system test for distributed Kafka Connect |  Major | copycat | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2578](https://issues.apache.org/jira/browse/KAFKA-2578) | Client Metadata internal state should be synchronized |  Trivial | . | Jason Gustafson | Edward Ribeiro |
| [KAFKA-2421](https://issues.apache.org/jira/browse/KAFKA-2421) | Upgrade LZ4 to version 1.3 to avoid crashing with IBM Java 7 |  Major | . | Rajini Sivaram | Grant Henke |
| [KAFKA-2399](https://issues.apache.org/jira/browse/KAFKA-2399) | Replace Stream.continually with Iterator.continually |  Minor | . | Ismael Juma | Ismael Juma |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2989](https://issues.apache.org/jira/browse/KAFKA-2989) | Verify all partitions consumed after rebalancing in system tests |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-2979](https://issues.apache.org/jira/browse/KAFKA-2979) | Enable authorizer and ACLs in ducktape tests |  Major | system tests | Flavio Junqueira | Flavio Junqueira |
| [KAFKA-2949](https://issues.apache.org/jira/browse/KAFKA-2949) | Make EndToEndAuthorizationTest replicated |  Major | . | Flavio Junqueira | Flavio Junqueira |
| [KAFKA-2905](https://issues.apache.org/jira/browse/KAFKA-2905) | System test for rolling upgrade to enable ZooKeeper ACLs with SASL |  Major | . | Flavio Junqueira | Flavio Junqueira |
| [KAFKA-2825](https://issues.apache.org/jira/browse/KAFKA-2825) | Add controller failover to existing replication tests |  Major | . | Anna Povzner | Anna Povzner |
| [KAFKA-2732](https://issues.apache.org/jira/browse/KAFKA-2732) | Add test cases with ZK Auth, SASL and SSL |  Major | security | Flavio Junqueira | Flavio Junqueira |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-3108](https://issues.apache.org/jira/browse/KAFKA-3108) | KStream custom StreamPartitioner for windowed key |  Minor | kafka streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-3081](https://issues.apache.org/jira/browse/KAFKA-3081) | KTable Aggregation Implementation |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-3078](https://issues.apache.org/jira/browse/KAFKA-3078) | Add ducktape tests for KafkaLog4jAppender producing to SASL enabled Kafka cluster |  Major | clients | Ashish K Singh | Ashish K Singh |
| [KAFKA-3063](https://issues.apache.org/jira/browse/KAFKA-3063) | LogRecoveryTest exits with -1 occasionally |  Major | . | Guozhang Wang | Ismael Juma |
| [KAFKA-3030](https://issues.apache.org/jira/browse/KAFKA-3030) | Remove unused scala dependencies |  Major | build | Grant Henke | Grant Henke |
| [KAFKA-3022](https://issues.apache.org/jira/browse/KAFKA-3022) | Deduplicate common project configurations |  Major | build | Grant Henke | Grant Henke |
| [KAFKA-3021](https://issues.apache.org/jira/browse/KAFKA-3021) | Centralize dependency version managment |  Major | build | Grant Henke | Grant Henke |
| [KAFKA-3020](https://issues.apache.org/jira/browse/KAFKA-3020) | Ensure Checkstyle runs on all Java code |  Major | build | Grant Henke | Grant Henke |
| [KAFKA-3016](https://issues.apache.org/jira/browse/KAFKA-3016) | Add KStream-KStream window joins |  Major | kafka streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2984](https://issues.apache.org/jira/browse/KAFKA-2984) | KTable should send old values along with new values to downstreams |  Major | kafka streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2962](https://issues.apache.org/jira/browse/KAFKA-2962) | Add Simple Join API |  Major | kafka streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2856](https://issues.apache.org/jira/browse/KAFKA-2856) | add KTable |  Major | kafka streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2837](https://issues.apache.org/jira/browse/KAFKA-2837) | FAILING TEST: kafka.api.ProducerBounceTest \> testBrokerFailure |  Major | . | Gwen Shapira | jin xing |
| [KAFKA-2811](https://issues.apache.org/jira/browse/KAFKA-2811) | Add standby tasks |  Major | kafka streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2804](https://issues.apache.org/jira/browse/KAFKA-2804) | Create / Update changelog topics upon state store initialization |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-2763](https://issues.apache.org/jira/browse/KAFKA-2763) | Reduce stream task migrations and initialization costs |  Major | kafka streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2733](https://issues.apache.org/jira/browse/KAFKA-2733) | Distinguish metric names inside the sensor registry |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-2727](https://issues.apache.org/jira/browse/KAFKA-2727) | initialize only the part of the topology relevant to the task |  Major | kafka streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2707](https://issues.apache.org/jira/browse/KAFKA-2707) | Make KStream processor names deterministic |  Major | . | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2706](https://issues.apache.org/jira/browse/KAFKA-2706) | Make state stores first class citizens in the processor DAG |  Major | kafka streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2694](https://issues.apache.org/jira/browse/KAFKA-2694) | Make a task id be a composite id of a topic group id and a partition id |  Major | kafka streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2667](https://issues.apache.org/jira/browse/KAFKA-2667) | Copycat KafkaBasedLogTest.testSendAndReadToEnd transient failure |  Major | copycat | Jason Gustafson | Ewen Cheslack-Postava |
| [KAFKA-2654](https://issues.apache.org/jira/browse/KAFKA-2654) | Avoid calling Consumer.poll(0) in each iteration |  Major | . | Guozhang Wang | Yasuhiro Matsuda |
| [KAFKA-2653](https://issues.apache.org/jira/browse/KAFKA-2653) | Stateful operations in the KStream DSL layer |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-2652](https://issues.apache.org/jira/browse/KAFKA-2652) | Incorporate the new consumer protocol with partition-group interface |  Major | . | Guozhang Wang | Yasuhiro Matsuda |
| [KAFKA-2649](https://issues.apache.org/jira/browse/KAFKA-2649) | Add support for custom partitioner in sink nodes |  Major | kafka streams | Randall Hauch | Randall Hauch |
| [KAFKA-2643](https://issues.apache.org/jira/browse/KAFKA-2643) | Run mirror maker tests in ducktape with SSL and SASL |  Major | . | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-2642](https://issues.apache.org/jira/browse/KAFKA-2642) | Run replication tests in ducktape with SSL for clients |  Major | . | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-2600](https://issues.apache.org/jira/browse/KAFKA-2600) | Make KStream interfaces compatible with Java 8 java.util.function |  Major | . | Guozhang Wang | Randall Hauch |
| [KAFKA-2594](https://issues.apache.org/jira/browse/KAFKA-2594) | Add a key-value store that is a fixed-capacity in-memory LRU cache |  Major | kafka streams | Randall Hauch | Randall Hauch |
| [KAFKA-2593](https://issues.apache.org/jira/browse/KAFKA-2593) | KeyValueStores should not require use of the context's default serializers and deserializers |  Major | kafka streams | Randall Hauch | Randall Hauch |
| [KAFKA-2591](https://issues.apache.org/jira/browse/KAFKA-2591) | Remove Persistent Data before Restoringafter a Fault |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-2509](https://issues.apache.org/jira/browse/KAFKA-2509) | Replace LeaderAndIsr{Request,Response} with org.apache.kafka.common.network.requests equivalent |  Major | . | Ismael Juma | Grant Henke |
| [KAFKA-2422](https://issues.apache.org/jira/browse/KAFKA-2422) | Allow copycat connector plugins to be aliased to simpler names |  Minor | copycat | Ewen Cheslack-Postava | Gwen Shapira |
| [KAFKA-2072](https://issues.apache.org/jira/browse/KAFKA-2072) | Add StopReplica request/response to o.a.k.common.requests and replace the usage in core module |  Major | . | Gwen Shapira | David Jacot |
| [KAFKA-2070](https://issues.apache.org/jira/browse/KAFKA-2070) | Replace OffsetRequest/response with ListOffsetRequest/response from org.apache.kafka.common.requests |  Major | . | Gwen Shapira | Grant Henke |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2896](https://issues.apache.org/jira/browse/KAFKA-2896) | System test for partition re-assignment |  Major | . | Gwen Shapira | Anna Povzner |
| [KAFKA-2845](https://issues.apache.org/jira/browse/KAFKA-2845) | Add 0.9 clients vs 0.8 brokers compatibility test |  Major | . | Geoff Anderson | Geoff Anderson |
| [KAFKA-2830](https://issues.apache.org/jira/browse/KAFKA-2830) | Change default fix version to 0.9.1.0 in kafka-merge-pr.py |  Major | build | Ismael Juma | Ismael Juma |


