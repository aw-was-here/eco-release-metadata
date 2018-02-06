
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

## Release 0.11.0.3 - Unreleased (as of 2018-02-06)



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4827](https://issues.apache.org/jira/browse/KAFKA-4827) | Kafka connect: error with special characters in connector name |  Minor | KafkaConnect | Aymeric Bouvet | Arjun Satish |
| [KAFKA-4767](https://issues.apache.org/jira/browse/KAFKA-4767) | KafkaProducer is not joining its IO thread properly |  Minor | producer | Buğra Gedik | huxihx |
| [KAFKA-6277](https://issues.apache.org/jira/browse/KAFKA-6277) | Make loadClass thread-safe for class loaders of Connect plugins |  Blocker | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-6467](https://issues.apache.org/jira/browse/KAFKA-6467) | Enforce layout of dependencies within a Connect plugin to be deterministic |  Blocker | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-6148](https://issues.apache.org/jira/browse/KAFKA-6148) | ClassCastException in BigQuery connector |  Major | KafkaConnect | Eugene Burd | Konstantine Karantasis |
| [KAFKA-6288](https://issues.apache.org/jira/browse/KAFKA-6288) | Broken symlink interrupts scanning the plugin path |  Major | KafkaConnect | Yeva Byzek | Konstantine Karantasis |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-6118](https://issues.apache.org/jira/browse/KAFKA-6118) | Transient failure in kafka.api.SaslScramSslEndToEndAuthorizationTest.testTwoConsumersWithDifferentSaslCredentials |  Major | core, unit tests | Guozhang Wang | Jason Gustafson |


