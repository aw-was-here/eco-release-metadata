
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
#  0.8.2.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [KAFKA-1984](https://issues.apache.org/jira/browse/KAFKA-1984) | *Blocker* | **java producer may miss an available partition**

In Partitioner, we cycle through each partition to find one whose leader is available. However, since the counter is shared among different caller threads, the logic may not iterate through every partition. The impact is that we could return an unavailable partition to the caller when there are partitions available. If the partition is unavailable for a long time, the producer may block due to bufferpool being full.


---

* [KAFKA-1971](https://issues.apache.org/jira/browse/KAFKA-1971) | *Blocker* | **starting a broker with a conflicting id will delete the previous broker registration**

This issue can be easily reproduced by the following steps.

1. Start broker 1.
2. Start broker 2 with the same id as broker 1 (configure different port, log dir).

Broker 2's registration will fail. However, broker 1's registration in ZK is now deleted.


---

* [KAFKA-1952](https://issues.apache.org/jira/browse/KAFKA-1952) | *Critical* | **High CPU Usage in 0.8.2 release**

Brokers with high partition count see increased CPU usage when migrating from 0.8.1.1 to 0.8.2.


---

* [KAFKA-1919](https://issues.apache.org/jira/browse/KAFKA-1919) | *Blocker* | **Metadata request issued with no backoff in new producer if there are no topics**

Original report:
We have observed high cpu and high network traffic problem when
1) cluster (0.8.1.1) has no topic
2) KafkaProducer (0.8.2-beta) object is created without sending any traffic

We have observed such problem twice. In both cases, problem went away
immediately after one/any topic is created.

Is this a known issue? Just want to check with the community first before I
spend much time to reproduce it.

I couldn't reproduce the issue with similar setup with unit test code in
IDE. start two brokers with no topic locally on my laptop. create a
KafkaProducer object without sending any msgs. but I only tested with
0.8.2-beta for both broker and producer.

Issue exists in 0.8.2 as well:
I have re-run my unit test with 0.8.2.0. same tight-loop problem happened
after a few mins.



