
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

## Release 1.1.2 - Unreleased (as of 2018-09-12)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-6292](https://issues.apache.org/jira/browse/KAFKA-6292) | KafkaConsumer ran into Unknown error fetching data for topic-partition caused by integer overflow in FileLogInputStream |  Major | log | Terence Yi |  |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7285](https://issues.apache.org/jira/browse/KAFKA-7285) | Streams should be more fencing-sensitive during task suspension under EOS |  Major | streams | Guozhang Wang | Matthias J. Sax |
| [KAFKA-7278](https://issues.apache.org/jira/browse/KAFKA-7278) | replaceSegments() should not call asyncDeleteSegment() for segments which have been removed from segments list |  Major | . | Dong Lin | Dong Lin |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4950](https://issues.apache.org/jira/browse/KAFKA-4950) | ConcurrentModificationException when iterating over Kafka Metrics |  Minor | consumer | Dumitru Postoronca | Sébastien Launay |
| [KAFKA-7255](https://issues.apache.org/jira/browse/KAFKA-7255) | Timing issue in SimpleAclAuthorizer with concurrent create/update |  Blocker | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7261](https://issues.apache.org/jira/browse/KAFKA-7261) | Request and response total metrics record bytes instead of request count |  Major | metrics | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7164](https://issues.apache.org/jira/browse/KAFKA-7164) | Follower should truncate after every leader epoch change |  Major | . | Jason Gustafson | Bob Barrett |
| [KAFKA-7284](https://issues.apache.org/jira/browse/KAFKA-7284) | Producer getting fenced may cause Streams to shut down |  Critical | streams | John Roesler | John Roesler |
| [KAFKA-7119](https://issues.apache.org/jira/browse/KAFKA-7119) | Intermittent test failure with GSSAPI authentication failure |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-5891](https://issues.apache.org/jira/browse/KAFKA-5891) | Cast transformation fails if record schema contains timestamp field |  Major | KafkaConnect | Artem Plotnikov |  |
| [KAFKA-7128](https://issues.apache.org/jira/browse/KAFKA-7128) | Lagging high watermark can lead to committed data loss after ISR expansion |  Major | . | Jason Gustafson | Anna Povzner |
| [KAFKA-7354](https://issues.apache.org/jira/browse/KAFKA-7354) | Fix IdlePercent and NetworkProcessorAvgIdlePercent metric calculation |  Major | core | huxihx | huxihx |
| [KAFKA-7287](https://issues.apache.org/jira/browse/KAFKA-7287) | Set open ACL permissions for old consumer znode path |  Major | . | Manikumar | Manikumar |
| [KAFKA-7353](https://issues.apache.org/jira/browse/KAFKA-7353) | Connect logs 'this' for anonymous inner classes |  Minor | KafkaConnect | Kevin Lafferty |  |
| [KAFKA-7044](https://issues.apache.org/jira/browse/KAFKA-7044) | kafka-consumer-groups.sh NullPointerException describing round robin or sticky assignors |  Major | tools | Jeff Field | Anna Povzner |


