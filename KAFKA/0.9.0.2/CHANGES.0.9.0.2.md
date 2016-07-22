
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

## Release 0.9.0.2 - Unreleased (as of 2016-07-22)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-3640](https://issues.apache.org/jira/browse/KAFKA-3640) | Reduce the latency of topic metadata requests |  Major | . | Flavio Junqueira | Flavio Junqueira |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-3088](https://issues.apache.org/jira/browse/KAFKA-3088) | 0.9.0.0 broker crash on receipt of produce request with empty client ID |  Major | producer | Dave Peterson | Grant Henke |
| [KAFKA-3594](https://issues.apache.org/jira/browse/KAFKA-3594) | Kafka new producer retries doesn't work in 0.9.0.1 |  Critical | producer | Nicolas PHUNG | Manikumar Reddy |
| [KAFKA-3632](https://issues.apache.org/jira/browse/KAFKA-3632) | ConsumerLag metrics persist after partition migration |  Minor | core | Brian Lueck | Jason Gustafson |
| [KAFKA-3773](https://issues.apache.org/jira/browse/KAFKA-3773) | SocketServer inflightResponses collection leaks memory on client disconnect |  Major | core | Jason Gustafson | Jason Gustafson |
| [KAFKA-3952](https://issues.apache.org/jira/browse/KAFKA-3952) | VerifyConsumerRebalance cannot succeed when checking partition owner |  Minor | core | Simon Wan Wenli | Simon Wan Wenli |


