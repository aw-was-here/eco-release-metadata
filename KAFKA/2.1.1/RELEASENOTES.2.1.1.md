
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
# Apache Kafka  2.1.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [KAFKA-7655](https://issues.apache.org/jira/browse/KAFKA-7655) | *Major* | **Metadata spamming requests from Kafka Streams under some circumstances, potential DOS**

There is a bug in the InternalTopicManager that makes the client believe that a topic exists even though it doesn't, it occurs mostly in those few seconds between when a topic is marked for deletion and when it is actually deleted. In that timespan, the Broker gives inconsistent information, first it hides the topic but then it refuses to create a new one therefore the client believes the topic was existing already and it starts polling for metadata.

The consequence is that the client goes into a loop where it polls for topic metadata and if this is done by many threads it can take down a small cluster or degrade greatly its performances.

The real life scenario is probably a reset gone wrong. Reproducing the issue is fairly simple, these are the steps:
 \* Stop a Kafka streams application
 \* Delete one of its changelog and the local store
 \* Restart the application immediately after the topic delete
 \* You will see the Kafka streams application hanging after the bootstrap saying something like: INFO  Metadata - Cluster ID: xxxx

 

I am attaching a patch that fixes the issue client side but my personal opinion is that this should be tackled on the broker as well, metadata requests seem expensive and it would be easy to craft a DDOS that can potentially take down an entire cluster in seconds just by flooding the brokers with metadata requests.

The patch kicks in only when a topic that wasn't existing in the first call to getNumPartitions triggers a TopicExistsException. When this happens it forces the re-validation of the topic and if it still looks like doesn't exists plan a retry with some delay, to give the broker the necessary time to sort it out.

I think this patch makes sense beside the above mentioned use case where a topic it's not existing, because, even if the topic was actually created, the client should not blindly trust it and should still re-validate it by checking the number of partitions. IE: a topic can be created automatically by the first request and then it would have the default partitions rather than the expected ones.



