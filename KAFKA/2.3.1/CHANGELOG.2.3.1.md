
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

## Release 2.3.1 - 2019-10-24



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-8952](https://issues.apache.org/jira/browse/KAFKA-8952) | Vulnerabilities found for jackson-databind-2.9.9 |  Blocker | . | Namrata Kokate | Ismael Juma |
| [KAFKA-6290](https://issues.apache.org/jira/browse/KAFKA-6290) | Kafka Connect cast transformation should support logical types |  Major | KafkaConnect | Sudhir Pradhan | Nigel Liang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-8676](https://issues.apache.org/jira/browse/KAFKA-8676) | Avoid Stopping Unnecessary Connectors and Tasks |  Major | KafkaConnect | Luying Liu |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-8263](https://issues.apache.org/jira/browse/KAFKA-8263) | Flaky Test MetricsIntegrationTest#testStreamMetricOfWindowStore |  Major | streams, unit tests | Matthias J. Sax | Bruno Cadonna |
| [KAFKA-8262](https://issues.apache.org/jira/browse/KAFKA-8262) | Flaky Test MetricsIntegrationTest#testStreamMetric |  Major | streams, unit tests | Matthias J. Sax | Bruno Cadonna |
| [KAFKA-8530](https://issues.apache.org/jira/browse/KAFKA-8530) | Consumer should handle authorization errors in OffsetFetch |  Major | consumer | Jason Gustafson | Jason Gustafson |
| [KAFKA-8570](https://issues.apache.org/jira/browse/KAFKA-8570) | Downconversion could fail when log contains out of order message formats |  Major | clients | Dhruvil Shah | Dhruvil Shah |
| [KAFKA-8591](https://issues.apache.org/jira/browse/KAFKA-8591) | NPE when reloading connector configuration using WorkerConfigTransformer |  Major | KafkaConnect | Nacho Munoz | Robert Yokota |
| [KAFKA-8653](https://issues.apache.org/jira/browse/KAFKA-8653) | Regression in JoinGroup v0 rebalance timeout handling |  Blocker | . | Jason Gustafson |  |
| [KAFKA-5998](https://issues.apache.org/jira/browse/KAFKA-5998) | /.checkpoint.tmp Not found exception |  Critical | streams | Yogesh BG | John Roesler |
| [KAFKA-6605](https://issues.apache.org/jira/browse/KAFKA-6605) | Flatten SMT does not properly handle fields that are null |  Major | KafkaConnect | Randall Hauch | Michal Borowiecki |
| [KAFKA-7157](https://issues.apache.org/jira/browse/KAFKA-7157) | Connect TimestampConverter SMT doesn't handle null values |  Major | KafkaConnect | Randall Hauch | Valeria Vasylieva |
| [KAFKA-8602](https://issues.apache.org/jira/browse/KAFKA-8602) | StreamThread Dies Because Restore Consumer is not Subscribed to Any Topic |  Critical | streams | Bruno Cadonna | Bruno Cadonna |
| [KAFKA-8620](https://issues.apache.org/jira/browse/KAFKA-8620) | Race condition in StreamThread state change |  Major | streams | Boyang Chen | Boyang Chen |
| [KAFKA-8637](https://issues.apache.org/jira/browse/KAFKA-8637) | WriteBatch objects leak off-heap memory |  Blocker | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-8662](https://issues.apache.org/jira/browse/KAFKA-8662) | Produce fails if a previous produce was to an unauthorized topic |  Blocker | producer | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-8670](https://issues.apache.org/jira/browse/KAFKA-8670) | kafka-topics.sh shows IllegalArgumentException when describing all topics if no topics exist on the cluster |  Major | admin, tools | Tirtha Chatterjee | Tirtha Chatterjee |
| [KAFKA-8053](https://issues.apache.org/jira/browse/KAFKA-8053) | kafka-topics.sh gives confusing error message when the topic doesn't exist |  Minor | . | Jakub Scholz | Tirtha Chatterjee |
| [KAFKA-8615](https://issues.apache.org/jira/browse/KAFKA-8615) | Change to track partition time breaks TimestampExtractor |  Major | streams | Bill Bejeck | A. Sophie Blee-Goldman |
| [KAFKA-8635](https://issues.apache.org/jira/browse/KAFKA-8635) | Unnecessary wait when looking up coordinator before transactional request |  Major | clients | Denis Washington | Bob Barrett |
| [KAFKA-8678](https://issues.apache.org/jira/browse/KAFKA-8678) | LeaveGroup request getErrorResponse is incorrect on throttle time and error setting |  Major | consumer | Boyang Chen | Boyang Chen |
| [KAFKA-8715](https://issues.apache.org/jira/browse/KAFKA-8715) | Static consumer cannot join group due to ERROR in broker |  Critical | consumer, streams | Raman Gupta | Boyang Chen |
| [KAFKA-8731](https://issues.apache.org/jira/browse/KAFKA-8731) | InMemorySessionStore throws NullPointerException on startup |  Blocker | streams | Jonathan Gordon | A. Sophie Blee-Goldman |
| [KAFKA-8736](https://issues.apache.org/jira/browse/KAFKA-8736) | Performance: ThreadCache uses size() for empty cache check |  Critical | streams | Matthew Jarvie | Matthew Jarvie |
| [KAFKA-8550](https://issues.apache.org/jira/browse/KAFKA-8550) | Connector validation fails with aliased converters |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8774](https://issues.apache.org/jira/browse/KAFKA-8774) | Connect REST API exposes plaintext secrets in tasks endpoint if config value contains additional characters |  Critical | KafkaConnect | Oleksandr Diachenko | Arjun Satish |
| [KAFKA-7941](https://issues.apache.org/jira/browse/KAFKA-7941) | Connect KafkaBasedLog work thread terminates when getting offsets fails because broker is unavailable |  Minor | KafkaConnect | Paul Whalen | Paul Whalen |
| [KAFKA-8791](https://issues.apache.org/jira/browse/KAFKA-8791) | RocksDBTimestampedStore should open in regular mode for new stores |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-8788](https://issues.apache.org/jira/browse/KAFKA-8788) | Optimize client metadata handling with a large number of partitions |  Critical | . | Ismael Juma | Ismael Juma |
| [KAFKA-8592](https://issues.apache.org/jira/browse/KAFKA-8592) | Broker Dynamic Configuration fails to resolve variables as per KIP-421 |  Major | config | TEJAL ADSUL |  |
| [KAFKA-8802](https://issues.apache.org/jira/browse/KAFKA-8802) | ConcurrentSkipListMap shows performance regression in cache and in-memory store |  Major | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-8325](https://issues.apache.org/jira/browse/KAFKA-8325) | Remove from the incomplete set failed. This should be impossible |  Major | producer | Mattia Barbon | Bob Barrett |
| [KAFKA-8824](https://issues.apache.org/jira/browse/KAFKA-8824) | InMemoryTimeOrderedKeyValueBuffer propagates nulls when supress is configured |  Major | streams | Ferran altimiras | John Roesler |
| [KAFKA-8586](https://issues.apache.org/jira/browse/KAFKA-8586) | Source task producers silently fail to send records |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8412](https://issues.apache.org/jira/browse/KAFKA-8412) | Still a nullpointer exception thrown on shutdown while flushing before closing producers |  Minor | streams | Sebastiaan | Chris Pettitt |
| [KAFKA-8816](https://issues.apache.org/jira/browse/KAFKA-8816) | RecordCollector offsets updated indirectly by StreamTask |  Major | streams | Chris Pettitt | Chris Pettitt |
| [KAFKA-8861](https://issues.apache.org/jira/browse/KAFKA-8861) | Fix flaky RegexSourceIntegrationTest.testMultipleConsumersCanReadFromPartitionedTopic |  Minor | streams, unit tests | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-8724](https://issues.apache.org/jira/browse/KAFKA-8724) | log cleaner thread dies when attempting to clean a \_\_consumer\_offsets partition after upgrade from 2.0-\>2.3 |  Critical | log cleaner | Keith So | Jason Gustafson |
| [KAFKA-8875](https://issues.apache.org/jira/browse/KAFKA-8875) | CreateTopic API should check topic existence before replication factor |  Major | . | Jason Gustafson | huxihx |
| [KAFKA-8523](https://issues.apache.org/jira/browse/KAFKA-8523) | InsertField transformation fails when encountering tombstone event |  Major | KafkaConnect | Gunnar Morling |  |
| [KAFKA-8974](https://issues.apache.org/jira/browse/KAFKA-8974) | Sink Connectors can't handle topic list with whitespaces |  Minor | KafkaConnect | Magesh kumar Nandakumar | Magesh kumar Nandakumar |
| [KAFKA-8896](https://issues.apache.org/jira/browse/KAFKA-8896) | NoSuchElementException after coordinator move |  Major | . | Jason Gustafson | Boyang Chen |
| [KAFKA-8649](https://issues.apache.org/jira/browse/KAFKA-8649) | Error while rolling update from Kafka Streams 2.0.0 -\> Kafka Streams 2.1.0 |  Critical | streams | Suyash Garg | A. Sophie Blee-Goldman |
| [KAFKA-9014](https://issues.apache.org/jira/browse/KAFKA-9014) | AssertionError thrown by SourceRecordWriteCounter when SourceTask.poll returns an empty list |  Major | KafkaConnect | Richard Wise | Konstantine Karantasis |
| [KAFKA-8950](https://issues.apache.org/jira/browse/KAFKA-8950) | KafkaConsumer stops fetching |  Major | clients | Will James |  |
| [KAFKA-9053](https://issues.apache.org/jira/browse/KAFKA-9053) | AssignmentInfo#encode hardcodes the LATEST\_SUPPORTED\_VERSION |  Blocker | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-9251](https://issues.apache.org/jira/browse/KAFKA-9251) | Describing a non consumer group with the Admin API hangs forever |  Major | . | David Jacot | David Jacot |
| [KAFKA-9266](https://issues.apache.org/jira/browse/KAFKA-9266) | KafkaConsumer manual assignment does not reset group assignment |  Major | clients | G G |  |
| [KAFKA-5972](https://issues.apache.org/jira/browse/KAFKA-5972) | Flatten SMT does not work with null values |  Minor | KafkaConnect | Tomas Zuklys | siva santhalingam |


