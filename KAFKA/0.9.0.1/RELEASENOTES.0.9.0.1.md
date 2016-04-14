
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
# Apache Kafka  0.9.0.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [KAFKA-2978](https://issues.apache.org/jira/browse/KAFKA-2978) | *Critical* | **Topic partition is not sometimes consumed after rebalancing of consumer group**

Hi there, we are evaluating Kafka 0.9 to find if it is stable enough and ready for production. We wrote a tool that basically verifies that each produced message is also properly consumed. We found the issue described below while stressing Kafka using this tool.

Adding more and more consumers to a consumer group may result in unsuccessful rebalancing. Data from one or more partitions are not consumed and are not effectively available to the client application (e.g. for 15 minutes). Situation can be resolved externally by touching the consumer group again (add or remove a consumer) which forces another rebalancing that may or may not be successful.

Significantly higher CPU utilization was observed in such cases (from about 3% to 17%). The CPU utilization takes place in both the affected consumer and Kafka broker according to htop and profiling using jvisualvm. 

Jvisualvm indicates the issue may be related to KAFKA-2936 (see its screenshots in the GitHub repo below), but I'm very unsure. I don't also know if the issue is in consumer or broker because both are affected and I don't know Kafka internals.

The issue is not deterministic but it can be easily reproduced after a few minutes just by executing more and more consumers. More parallelism with multiple CPUs probably gives the issue more chances to appear.

The tool itself together with very detailed instructions for quite reliable reproduction of the issue and initial analysis are available here:

- https://github.com/avast/kafka-tests
- https://github.com/avast/kafka-tests/tree/issue1/issues/1\_rebalancing
- Prefer fixed tag {{issue1}} to branch {{master}} which may change.
- Note there are also various screenshots of jvisualvm together with full logs from all components of the tool.

My colleague was able to independently reproduce the issue according to the instructions above. If you have any questions or if you need any help with the tool, just let us know. This issue is blocker for us.


---

* [KAFKA-3029](https://issues.apache.org/jira/browse/KAFKA-3029) | *Major* | **Make class org.apache.kafka.common.TopicPartition Serializable**

The client class TopicPartition is exposed and used by consumer applications directly. In case where the application needs to checkpoint the state it is difficult to serialize different app classes that use TopicPartition as TopicParitition is not serializable.

For instance consider the Spark use case where RDDs have to be checkpointed....the KafakaInputDstream (which we are currently modifying to use the new Kafka API rather than the Highlevel apis in previous version) cannot be serialized due to above limitation.

I have created a patch to serialize TopicPartition class by making it implement serializable interface and have issued a pull request.

Can this be merged for the next release (0.9.0.1)

Thanks

Praveen



