
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

## Release 0.8.1.1 - 2014-04-29



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-1171](https://issues.apache.org/jira/browse/KAFKA-1171) | Gradle build for Kafka |  Blocker | packaging | David Arthur | David Arthur |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-1311](https://issues.apache.org/jira/browse/KAFKA-1311) | Add a flag to turn off delete topic until it is stable |  Blocker | . | Neha Narkhede | Neha Narkhede |
| [KAFKA-1317](https://issues.apache.org/jira/browse/KAFKA-1317) | KafkaServer 0.8.1 not responding to .shutdown() cleanly, possibly related to TopicDeletionManager or MetricsMeter state |  Blocker | . | Brent Bradbury | Timothy Chen |
| [KAFKA-1310](https://issues.apache.org/jira/browse/KAFKA-1310) | Zookeeper timeout causes deadlock in Controller |  Blocker | . | Fedor Korotkiy | Neha Narkhede |
| [KAFKA-1350](https://issues.apache.org/jira/browse/KAFKA-1350) | Fix excessive state change logging |  Blocker | . | Joel Koshy | Neha Narkhede |
| [KAFKA-803](https://issues.apache.org/jira/browse/KAFKA-803) | Offset returned to producer is not consistent |  Major | . | Jun Rao |  |
| [KAFKA-1358](https://issues.apache.org/jira/browse/KAFKA-1358) | Broker throws exception when reconnecting to zookeeper |  Major | . | Timothy Chen | Timothy Chen |
| [KAFKA-1373](https://issues.apache.org/jira/browse/KAFKA-1373) | LogCleaner assumes first dirty offset zero if there is no cleaner checkpoint |  Major | . | Joel Koshy | Joel Koshy |
| [KAFKA-1363](https://issues.apache.org/jira/browse/KAFKA-1363) | testTopicConfigChangesDuringDeleteTopic hangs |  Major | core | Jun Rao | Timothy Chen |
| [KAFKA-1323](https://issues.apache.org/jira/browse/KAFKA-1323) | log.dirs server property no longer supports relative directories |  Blocker | . | Joel Koshy |  |
| [KAFKA-1315](https://issues.apache.org/jira/browse/KAFKA-1315) | log.dirs property in KafkaServer intolerant of trailing slash |  Blocker | . | Brent Bradbury | Timothy Chen |
| [KAFKA-1365](https://issues.apache.org/jira/browse/KAFKA-1365) | Second Manual preferred replica leader election command always fails |  Critical | controller, tools | Ryan Berdeen | Neha Narkhede |
| [KAFKA-1362](https://issues.apache.org/jira/browse/KAFKA-1362) | Publish sources and javadoc jars |  Major | packaging | Stevo Slavic | Joel Koshy |
| [KAFKA-1355](https://issues.apache.org/jira/browse/KAFKA-1355) | Reduce/optimize update metadata requests sent during leader election |  Critical | . | Joel Koshy |  |
| [KAFKA-1398](https://issues.apache.org/jira/browse/KAFKA-1398) | Topic config changes can be lost and cause fatal exceptions on broker restarts |  Critical | . | Joel Koshy | Jay Kreps |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-1413](https://issues.apache.org/jira/browse/KAFKA-1413) | bump kafka version to 0.8.1.1 in gradle.properties |  Blocker | . | Joe Stein |  |


