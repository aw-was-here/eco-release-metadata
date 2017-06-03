
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

## Release 0.11.1.0 - Unreleased (as of 2017-06-03)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5289](https://issues.apache.org/jira/browse/KAFKA-5289) | One StopReplicaRequest will caused two Responses |  Critical | core | xuzq | Ismael Juma |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5294](https://issues.apache.org/jira/browse/KAFKA-5294) | PlainSaslServerFactory should allow a null Map in getMechanismNames |  Major | . | Bryan Bende | Mickael Maison |
| [KAFKA-5303](https://issues.apache.org/jira/browse/KAFKA-5303) | FetchRequest doesn't implement toString |  Major | . | Andrey | Ismael Juma |
| [KAFKA-5305](https://issues.apache.org/jira/browse/KAFKA-5305) | Missing logging information in ReplicaFetcher |  Major | . | Andrey | Ismael Juma |
| [KAFKA-5135](https://issues.apache.org/jira/browse/KAFKA-5135) | Controller Health Metrics (KIP-143) |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-5081](https://issues.apache.org/jira/browse/KAFKA-5081) | two versions of jackson-annotations-xxx.jar in distribution tgz |  Minor | build | Edoardo Comar | Ewen Cheslack-Postava |
| [KAFKA-5263](https://issues.apache.org/jira/browse/KAFKA-5263) | kakfa-clients consume 100% CPU with manual partition assignment when network connection is lost |  Major | clients | Konstantin Smirnov | Rajini Sivaram |
| [KAFKA-4459](https://issues.apache.org/jira/browse/KAFKA-4459) | rat license check not running in Jenkins |  Major | . | Ismael Juma | Ewen Cheslack-Postava |
| [KAFKA-5229](https://issues.apache.org/jira/browse/KAFKA-5229) | Reflections logs excessive warnings when scanning classpaths |  Major | KafkaConnect | Ewen Cheslack-Postava | Bharat Viswanadham |
| [KAFKA-5164](https://issues.apache.org/jira/browse/KAFKA-5164) | SetSchemaMetadata does not replace the schemas in structs correctly |  Major | KafkaConnect | Ewen Cheslack-Postava | Randall Hauch |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4935](https://issues.apache.org/jira/browse/KAFKA-4935) | Consider disabling record level CRC checks for message format V2 |  Blocker | . | Apurva Mehta | Jason Gustafson |
| [KAFKA-5147](https://issues.apache.org/jira/browse/KAFKA-5147) | KafkaProducer's TransactionManager needs a review on synchronization |  Blocker | . | Apurva Mehta | Apurva Mehta |


