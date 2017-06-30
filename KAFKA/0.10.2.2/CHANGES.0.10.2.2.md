
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

## Release 0.10.2.2 - Unreleased (as of 2017-06-30)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4965](https://issues.apache.org/jira/browse/KAFKA-4965) | set internal.leave.group.on.close to false in KafkaStreams |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-5118](https://issues.apache.org/jira/browse/KAFKA-5118) | Improve message for Kafka failed startup with non-Kafka data in data.dirs |  Minor | core | Dustin Cote | huxihx |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5230](https://issues.apache.org/jira/browse/KAFKA-5230) | Recommended values for Connect transformations contain the wrong class name |  Major | KafkaConnect | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-5232](https://issues.apache.org/jira/browse/KAFKA-5232) | Kafka broker fails to start if a topic containing dot in its name is marked for delete but hasn't been deleted during previous uptime |  Critical | core | jaikiran pai | jaikiran pai |
| [KAFKA-5206](https://issues.apache.org/jira/browse/KAFKA-5206) | RocksDBSessionStore doesn't use default aggSerde. |  Major | streams | Kyle Winkelman | Kyle Winkelman |
| [KAFKA-5205](https://issues.apache.org/jira/browse/KAFKA-5205) | CachingSessionStore doesn't use the default keySerde. |  Major | streams | Kyle Winkelman | Kyle Winkelman |
| [KAFKA-5241](https://issues.apache.org/jira/browse/KAFKA-5241) | GlobalKTable does not checkpoint offsets after restoring state |  Minor | streams | Tommy Becker | Tommy Becker |
| [KAFKA-5316](https://issues.apache.org/jira/browse/KAFKA-5316) | Log cleaning can increase message size and cause cleaner to crash with buffer overflow |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-5150](https://issues.apache.org/jira/browse/KAFKA-5150) | LZ4 decompression is 4-5x slower than Snappy on small batches / messages |  Major | consumer | Xavier Léauté | Xavier Léauté |
| [KAFKA-5345](https://issues.apache.org/jira/browse/KAFKA-5345) | Some socket connections not closed after restart of Kafka Streams |  Major | streams | Jeroen van Wilgenburg | Rajini Sivaram |
| [KAFKA-5395](https://issues.apache.org/jira/browse/KAFKA-5395) | Distributed Herder Deadlocks on Shutdown |  Critical | KafkaConnect | Michael Jaschob | Rajini Sivaram |
| [KAFKA-5413](https://issues.apache.org/jira/browse/KAFKA-5413) | Log cleaner fails due to large offset in segment file |  Critical | core | Nicholas Ngorok | Kelvin Rutt |
| [KAFKA-5484](https://issues.apache.org/jira/browse/KAFKA-5484) | Refactor kafkatest docker support |  Major | . | Colin P. McCabe | Colin P. McCabe |


