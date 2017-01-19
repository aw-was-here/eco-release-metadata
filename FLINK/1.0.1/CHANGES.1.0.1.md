
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

## Release 1.0.1 - 2016-04-05



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-3570](https://issues.apache.org/jira/browse/FLINK-3570) | Replace random NIC selection heuristic by InetAddress.getLocalHost |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-3575](https://issues.apache.org/jira/browse/FLINK-3575) | Update Working With State Section in Doc |  Major | Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3591](https://issues.apache.org/jira/browse/FLINK-3591) | Replace Quickstart K-Means Example by Streaming Example |  Major | Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3634](https://issues.apache.org/jira/browse/FLINK-3634) | Fix documentation for DataSetUtils.zipWithUniqueId() |  Minor | Documentation | Greg Hogan | Greg Hogan |
| [FLINK-3469](https://issues.apache.org/jira/browse/FLINK-3469) | Improve documentation for grouping keys |  Major | Documentation | Greg Hogan | Greg Hogan |
| [FLINK-3657](https://issues.apache.org/jira/browse/FLINK-3657) | Change access of DataSetUtils.countElements() to 'public' |  Minor | DataSet API | Suneel Marthi | Suneel Marthi |
| [FLINK-2999](https://issues.apache.org/jira/browse/FLINK-2999) | Support connected keyed streams |  Major | Streaming | Fabian Hueske | Stephan Ewen |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-3566](https://issues.apache.org/jira/browse/FLINK-3566) | Input type validation often fails on custom TypeInfo implementations |  Major | Type Serialization System | Gyula Fora | Timo Walther |
| [FLINK-3491](https://issues.apache.org/jira/browse/FLINK-3491) | HDFSCopyUtilitiesTest fails on Windows |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3495](https://issues.apache.org/jira/browse/FLINK-3495) | RocksDB Tests can't run on Windows |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3578](https://issues.apache.org/jira/browse/FLINK-3578) | Scala DataStream API does not support Rich Window Functions |  Critical | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-3533](https://issues.apache.org/jira/browse/FLINK-3533) | Update the Gelly docs wrt examples and cluster execution |  Major | Documentation, Gelly | Vasia Kalavri | Vasia Kalavri |
| [FLINK-3472](https://issues.apache.org/jira/browse/FLINK-3472) | JDBCInputFormat.nextRecord(..) has misleading message on NPE |  Minor | . | Ken Geis | Chesnay Schepler |
| [FLINK-3563](https://issues.apache.org/jira/browse/FLINK-3563) | .returns() doesn't compile when using .map() with a custom MapFunction |  Minor | Type Serialization System | Simone Robutti | Timo Walther |
| [FLINK-3621](https://issues.apache.org/jira/browse/FLINK-3621) | Misleading documentation of memory configuration parameters |  Minor | Documentation | Fabian Hueske | Fabian Hueske |
| [FLINK-3629](https://issues.apache.org/jira/browse/FLINK-3629) | In wikiedits Quick Start example, "The first call, .window()" should be "The first call, .timeWindow()" |  Trivial | Quickstarts | Li Fanxi |  |
| [FLINK-3602](https://issues.apache.org/jira/browse/FLINK-3602) | Recursive Types are not supported / crash TypeExtractor |  Critical | Type Serialization System | Stephan Ewen | Timo Walther |
| [FLINK-3179](https://issues.apache.org/jira/browse/FLINK-3179) | Combiner is not injected if Reduce or GroupReduce input is explicitly partitioned |  Critical | Optimizer | Fabian Hueske | ramkrishna.s.vasudevan |
| [FLINK-3653](https://issues.apache.org/jira/browse/FLINK-3653) | recovery.zookeeper.storageDir is not documented on the configuration page |  Minor | Documentation | Stefano Baghino | Stefano Baghino |
| [FLINK-3663](https://issues.apache.org/jira/browse/FLINK-3663) | FlinkKafkaConsumerBase.logPartitionInfo is missing a log marker |  Trivial | Kafka Connector | Niels Zeilemaker |  |
| [FLINK-3651](https://issues.apache.org/jira/browse/FLINK-3651) | Fix faulty RollingSink Restore |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3681](https://issues.apache.org/jira/browse/FLINK-3681) | CEP library does not support Java 8 lambdas as select function |  Minor | CEP | Till Rohrmann | Till Rohrmann |
| [FLINK-3682](https://issues.apache.org/jira/browse/FLINK-3682) | CEP operator does not set the processing timestamp correctly |  Major | CEP | Till Rohrmann | Till Rohrmann |
| [FLINK-3684](https://issues.apache.org/jira/browse/FLINK-3684) | CEP operator does not forward watermarks properly |  Major | CEP | Till Rohrmann | Till Rohrmann |
| [FLINK-3595](https://issues.apache.org/jira/browse/FLINK-3595) | Kafka09 consumer thread does not interrupt when stuck in record emission |  Critical | Kafka Connector | Stephan Ewen | Ufuk Celebi |
| [FLINK-2644](https://issues.apache.org/jira/browse/FLINK-2644) | State partitioning does not respect the different partitioning of multiple inputs |  Major | Streaming | Gyula Fora |  |


