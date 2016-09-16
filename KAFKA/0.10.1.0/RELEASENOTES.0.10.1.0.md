
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
# Apache Kafka  0.10.1.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [KAFKA-4131](https://issues.apache.org/jira/browse/KAFKA-4131) | *Major* | **Multiple Regex KStream-Consumers cause Null pointer exception in addRawRecords in RecordQueue class**

When you start two consumer processes with a regex topic (with 2 or more
partitions for the matching topics), the second (i.e. nonleader) consumer
will fail with a null pointer exception.

Exception in thread "StreamThread-4" java.lang.NullPointerException
                 at org.apache.kafka.streams.processor.internals.
RecordQueue.addRawRecords(RecordQueue.java:78)
                 at org.apache.kafka.streams.processor.internals.
PartitionGroup.addRawRecords(PartitionGroup.java:117)
                 at org.apache.kafka.streams.processor.internals.
StreamTask.addRecords(StreamTask.java:139)
                 at org.apache.kafka.streams.processor.internals.
StreamThread.runLoop(StreamThread.java:299)
                 at org.apache.kafka.streams.processor.internals.
StreamThread.run(StreamThread.java:208)

The issue may be in the TopologyBuilder line 832:
String[] topics = (sourceNodeFactory.pattern != null) ?
sourceNodeFactory.getTopics(subscriptionUpdates.getUpdates()) :
sourceNodeFactory.getTopics();

Because the 2nd consumer joins as a follower, “getUpdates” returns an
empty collection and the regular expression doesn’t get applied to any
topics.

Steps to Reproduce:
1.) Create at least two topics with at least 2 partitions each.  And start sending messages to them.
2.) Start a single threaded Regex KStream-Consumer (i.e. becomes the leader)
3)  Start a new instance of this consumer (i.e. it should receive some of the partitions)

The second consumer will die with the above exception.



