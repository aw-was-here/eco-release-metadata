
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
# Apache Flink  1.4.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [FLINK-7178](https://issues.apache.org/jira/browse/FLINK-7178) | *Critical* | **Datadog Metric Reporter Jar is Lacking Dependencies**

Users that specified the {{shaded}} classifier in the dependency for the datatog/prometheus reporter must remove the classifier when switching to 1.3.2 / 1.4.0 .


---

* [FLINK-6365](https://issues.apache.org/jira/browse/FLINK-6365) | *Minor* | **Adapt default values of the Kinesis connector**

Some default values for configurations for AWS API call behaviors in the Flink Kinesis Consumer was adapted for better default consumption performance: 1) SHARD\_GETRECORDS\_MAX default changed to 10,000, and 2) SHARD\_GETRECORDS\_INTERVAL\_MILLIS default changed to 200ms.


---

* [FLINK-7174](https://issues.apache.org/jira/browse/FLINK-7174) | *Major* | **Bump dependency of Kafka 0.10.x to the latest one**

The default Kafka version for Flink Kafka Consumer 0.10 is bumped from 0.10.0.1 to 0.10.2.1.


---

* [FLINK-7508](https://issues.apache.org/jira/browse/FLINK-7508) | *Critical* | **switch FlinkKinesisProducer to use KPL's ThreadingMode to ThreadedPool mode rather than Per\_Request mode**

**WARNING: No release note provided for this change.**


---

* [FLINK-7654](https://issues.apache.org/jira/browse/FLINK-7654) | *Major* | **Update RabbitMQ Java client to  4.x**

The RabbitMQ Java client version used in the RabbitMQ Streaming Connector has been upgraded to 4.2.0.


---

* [FLINK-4660](https://issues.apache.org/jira/browse/FLINK-4660) | *Critical* | **HadoopFileSystem (with S3A) may leak connections, which cause job to stuck in a restarting loop**

Closing the reopened issue to update versions in which this is fixed


---

* [FLINK-7388](https://issues.apache.org/jira/browse/FLINK-7388) | *Major* | **ProcessFunction.onTimer() sets processing time as timestamp**

The timestamp of elements emitted from ProcessFunction.onTimer() is no longer set to the timestamp of the timestamp of the timer if the firing timer is a processing-time timer.


---

* [FLINK-7540](https://issues.apache.org/jira/browse/FLINK-7540) | *Blocker* | **Akka hostnames are not normalised consistently**

**WARNING: No release note provided for this change.**


---

* [FLINK-5851](https://issues.apache.org/jira/browse/FLINK-5851) | *Major* | **Renaming AsyncCollector into ResultPromise/ResultFuture**

The API of AsyncFunction is changed. The type of object handed to {{asyncInvoke()}} is now {{ResultFuture}} instead of {{AsyncCollector}}. In order to complete the future with the result one has to call {{ResultFuture#complete}} or {{ResultFuture#completeExceptionally}} in case of an exceptional completion.



