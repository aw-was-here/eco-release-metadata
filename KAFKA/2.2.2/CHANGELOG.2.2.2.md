
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

## Release 2.2.2 - 2019-12-01



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-8952](https://issues.apache.org/jira/browse/KAFKA-8952) | Vulnerabilities found for jackson-databind-2.9.9 |  Blocker | . | Namrata Kokate | Ismael Juma |
| [KAFKA-6290](https://issues.apache.org/jira/browse/KAFKA-6290) | Kafka Connect cast transformation should support logical types |  Major | KafkaConnect | Sudhir Pradhan | Nigel Liang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-8347](https://issues.apache.org/jira/browse/KAFKA-8347) | Choose next record to process by timestamp |  Major | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-8379](https://issues.apache.org/jira/browse/KAFKA-8379) | Flaky test KafkaAdminClientTest.testUnreachableBootstrapServer |  Major | clients | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-8290](https://issues.apache.org/jira/browse/KAFKA-8290) | Streams Not Closing Fenced Producer On Task Close |  Major | streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-8229](https://issues.apache.org/jira/browse/KAFKA-8229) | Connect Sink Task updates nextCommit when commitRequest is true |  Major | KafkaConnect | Scott Reynolds |  |
| [KAFKA-8351](https://issues.apache.org/jira/browse/KAFKA-8351) | Log cleaner must handle transactions spanning multiple segments |  Major | log cleaner | Jason Gustafson | Jason Gustafson |
| [KAFKA-8404](https://issues.apache.org/jira/browse/KAFKA-8404) | Authorization header is not passed in Connect when forwarding REST requests |  Blocker | KafkaConnect | Robert Yokota | Robert Yokota |
| [KAFKA-4893](https://issues.apache.org/jira/browse/KAFKA-4893) | async topic deletion conflicts with max topic length |  Major | log | Onur Karaman | Colin McCabe |
| [KAFKA-8564](https://issues.apache.org/jira/browse/KAFKA-8564) | NullPointerException when loading logs at startup |  Blocker | log | Mickael Maison | Edoardo Comar |
| [KAFKA-8570](https://issues.apache.org/jira/browse/KAFKA-8570) | Downconversion could fail when log contains out of order message formats |  Major | clients | Dhruvil Shah | Dhruvil Shah |
| [KAFKA-8536](https://issues.apache.org/jira/browse/KAFKA-8536) | Error creating ACL Alter Topic in 2.2 |  Critical | security | Alvaro Peris | Manikumar |
| [KAFKA-8591](https://issues.apache.org/jira/browse/KAFKA-8591) | NPE when reloading connector configuration using WorkerConfigTransformer |  Major | KafkaConnect | Nacho Munoz | Robert Yokota |
| [KAFKA-5998](https://issues.apache.org/jira/browse/KAFKA-5998) | /.checkpoint.tmp Not found exception |  Critical | streams | Yogesh BG | John Roesler |
| [KAFKA-6605](https://issues.apache.org/jira/browse/KAFKA-6605) | Flatten SMT does not properly handle fields that are null |  Major | KafkaConnect | Randall Hauch | Michal Borowiecki |
| [KAFKA-7157](https://issues.apache.org/jira/browse/KAFKA-7157) | Connect TimestampConverter SMT doesn't handle null values |  Major | KafkaConnect | Randall Hauch | Valeria Vasylieva |
| [KAFKA-8602](https://issues.apache.org/jira/browse/KAFKA-8602) | StreamThread Dies Because Restore Consumer is not Subscribed to Any Topic |  Critical | streams | Bruno Cadonna | Bruno Cadonna |
| [KAFKA-8620](https://issues.apache.org/jira/browse/KAFKA-8620) | Race condition in StreamThread state change |  Major | streams | Boyang Chen | Boyang Chen |
| [KAFKA-8637](https://issues.apache.org/jira/browse/KAFKA-8637) | WriteBatch objects leak off-heap memory |  Blocker | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-8615](https://issues.apache.org/jira/browse/KAFKA-8615) | Change to track partition time breaks TimestampExtractor |  Major | streams | Bill Bejeck | A. Sophie Blee-Goldman |
| [KAFKA-8678](https://issues.apache.org/jira/browse/KAFKA-8678) | LeaveGroup request getErrorResponse is incorrect on throttle time and error setting |  Major | consumer | Boyang Chen | Boyang Chen |
| [KAFKA-8550](https://issues.apache.org/jira/browse/KAFKA-8550) | Connector validation fails with aliased converters |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8774](https://issues.apache.org/jira/browse/KAFKA-8774) | Connect REST API exposes plaintext secrets in tasks endpoint if config value contains additional characters |  Critical | KafkaConnect | Oleksandr Diachenko | Arjun Satish |
| [KAFKA-7941](https://issues.apache.org/jira/browse/KAFKA-7941) | Connect KafkaBasedLog work thread terminates when getting offsets fails because broker is unavailable |  Minor | KafkaConnect | Paul Whalen | Paul Whalen |
| [KAFKA-8586](https://issues.apache.org/jira/browse/KAFKA-8586) | Source task producers silently fail to send records |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8412](https://issues.apache.org/jira/browse/KAFKA-8412) | Still a nullpointer exception thrown on shutdown while flushing before closing producers |  Minor | streams | Sebastiaan | Chris Pettitt |
| [KAFKA-8816](https://issues.apache.org/jira/browse/KAFKA-8816) | RecordCollector offsets updated indirectly by StreamTask |  Major | streams | Chris Pettitt | Chris Pettitt |
| [KAFKA-8861](https://issues.apache.org/jira/browse/KAFKA-8861) | Fix flaky RegexSourceIntegrationTest.testMultipleConsumersCanReadFromPartitionedTopic |  Minor | streams, unit tests | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-8523](https://issues.apache.org/jira/browse/KAFKA-8523) | InsertField transformation fails when encountering tombstone event |  Major | KafkaConnect | Gunnar Morling |  |
| [KAFKA-8974](https://issues.apache.org/jira/browse/KAFKA-8974) | Sink Connectors can't handle topic list with whitespaces |  Minor | KafkaConnect | Magesh kumar Nandakumar | Magesh kumar Nandakumar |
| [KAFKA-8896](https://issues.apache.org/jira/browse/KAFKA-8896) | NoSuchElementException after coordinator move |  Major | . | Jason Gustafson | Boyang Chen |
| [KAFKA-8649](https://issues.apache.org/jira/browse/KAFKA-8649) | Error while rolling update from Kafka Streams 2.0.0 -\> Kafka Streams 2.1.0 |  Critical | streams | Suyash Garg | A. Sophie Blee-Goldman |
| [KAFKA-9014](https://issues.apache.org/jira/browse/KAFKA-9014) | AssertionError thrown by SourceRecordWriteCounter when SourceTask.poll returns an empty list |  Major | KafkaConnect | Richard Wise | Konstantine Karantasis |
| [KAFKA-8945](https://issues.apache.org/jira/browse/KAFKA-8945) | Incorrect null check in the constructor for ConnectorHealth and AbstractState |  Major | KafkaConnect | Sanjana Kaundinya | Chris Egerton |
| [KAFKA-8947](https://issues.apache.org/jira/browse/KAFKA-8947) | Connect framework incorrectly instantiates TaskStates for REST extensions |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8340](https://issues.apache.org/jira/browse/KAFKA-8340) | ServiceLoader fails when used from isolated plugin path directory |  Major | KafkaConnect | Chris Egerton | Greg Harris |
| [KAFKA-8819](https://issues.apache.org/jira/browse/KAFKA-8819) | Plugin path for converters not working as intended |  Major | KafkaConnect | Magesh kumar Nandakumar | Greg Harris |
| [KAFKA-9053](https://issues.apache.org/jira/browse/KAFKA-9053) | AssignmentInfo#encode hardcodes the LATEST\_SUPPORTED\_VERSION |  Blocker | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-5972](https://issues.apache.org/jira/browse/KAFKA-5972) | Flatten SMT does not work with null values |  Minor | KafkaConnect | Tomas Zuklys | siva santhalingam |
| [KAFKA-4912](https://issues.apache.org/jira/browse/KAFKA-4912) | Add check for topic name length |  Minor | streams | Matthias J. Sax | Soumabrata Chakraborty |


