
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

* [FLINK-7149](https://issues.apache.org/jira/browse/FLINK-7149) | *Major* | **Add checkpoint ID to 'sendValues()' in GenericWriteAheadSink**

Fixed in
  - 1.4.0 via 4d7d847d07e8355b5c63d11e9683fca8398fcae1
  - 1.3.2 via faf79745659130b6da61034e275abbb3bcb3371c


---

* [FLINK-7150](https://issues.apache.org/jira/browse/FLINK-7150) | *Major* | **Code improvements to the ElasticSearch connector**

Fixed via 89fd63599db7451af081040cdc05bd4dc840b44d


---

* [FLINK-7136](https://issues.apache.org/jira/browse/FLINK-7136) | *Major* | **Docs search can be customized to be more useful**

Fixed via 251fb98450b048b5dbba6770a27eebf6ddd95885


---

* [FLINK-7178](https://issues.apache.org/jira/browse/FLINK-7178) | *Critical* | **Datadog Metric Reporter Jar is Lacking Dependencies**

Users that specified the {{shaded}} classifier in the dependency for the datatog/prometheus reporter must remove the classifier when switching to 1.3.2 / 1.4.0 .


---

* [FLINK-6654](https://issues.apache.org/jira/browse/FLINK-6654) | *Major* | **missing maven dependency on "flink-shaded-hadoop2-uber" in flink-dist**

Fixed in
  - 1.3.2 via 01265fe1529b6712311051ed2d210b5e2e5cf0a8
  - 1.4.0 via 70d53487a7f619d97aaad49879ad4cf7f5704adb


---

* [FLINK-7233](https://issues.apache.org/jira/browse/FLINK-7233) | *Major* | **TaskManagerHeapSizeCalculationJavaBashTest failed on Travis**

Fixed in
  - 1.3.2 via 129a82fbadaddf9befef86cc20797d698ee92e96
  - 1.4.0 via 3a503cd30b436b75a6b93a7a216d7b6d4de20a55


---

* [FLINK-7105](https://issues.apache.org/jira/browse/FLINK-7105) | *Major* | **Make ActorSystem creation per default non-daemonic**

Fixed in 02bf80cf7108253dfc3444fd3fbdeda79fabe333


---

* [FLINK-6665](https://issues.apache.org/jira/browse/FLINK-6665) | *Major* | **Pass a ScheduledExecutorService to the RestartStrategy**

Fixed in 
  - 1.4.0 via 65400bd0a0f6a3bdd3e0bad05e2179534eaf6e9e
  - 1.3.2 via 65400bd0a0f6a3bdd3e0bad05e2179534eaf6e9e

1.3.2 needed to be fixed because this was a blocker for a critical bug fix


---

* [FLINK-6667](https://issues.apache.org/jira/browse/FLINK-6667) | *Major* | **Pass a callback type to the RestartStrategy, rather than the full ExecutionGraph**

Fixed in 
  - 1.4.0 via 65400bd0a0f6a3bdd3e0bad05e2179534eaf6e9e
  - 1.3.2 via 65400bd0a0f6a3bdd3e0bad05e2179534eaf6e9e

1.3.2 needed to be fixed because this was a blocker for a critical bug fix


---

* [FLINK-7216](https://issues.apache.org/jira/browse/FLINK-7216) | *Blocker* | **ExecutionGraph can perform concurrent global restarts to scheduling**

Fixed in 
  - 1.4.0 via 74a6cbab4e736cdb353d100cdd29f51809325796
  - 1.3.2 via e6348fbde1fc0ee8ea682063a4d6503ba3b68864


---

* [FLINK-7231](https://issues.apache.org/jira/browse/FLINK-7231) | *Blocker* | **SlotSharingGroups are not always released in time for new restarts**

Fixed in
  - 1.4.0 via 605319b550aeba5612b0e32fa193521081b7adc5
  - 1.3.2 via 39f5b1144167dcb80e8708f4cb5426e76f648026


---

* [FLINK-7225](https://issues.apache.org/jira/browse/FLINK-7225) | *Major* | **Cutoff exception message in StateDescriptor**

Fixed in
  - 1.4.0 via 3c756085375a003c7fbf8d477924f5b17efcb115
  - 1.3.2 via 618d544491664e9fb0e67d6e95596895cdc9d56d


---

* [FLINK-6365](https://issues.apache.org/jira/browse/FLINK-6365) | *Minor* | **Adapt default values of the Kinesis connector**

Some default values for configurations for AWS API call behaviors in the Flink Kinesis Consumer was adapted for better default consumption performance: 1) SHARD\_GETRECORDS\_MAX default changed to 10,000, and 2) SHARD\_GETRECORDS\_INTERVAL\_MILLIS default changed to 200ms.


---

* [FLINK-7174](https://issues.apache.org/jira/browse/FLINK-7174) | *Major* | **Bump dependency of Kafka 0.10.x to the latest one**

The default Kafka version for Flink Kafka Consumer 0.10 is bumped from 0.10.0.1 to 0.10.2.1.


---

* [FLINK-5851](https://issues.apache.org/jira/browse/FLINK-5851) | *Major* | **Renaming AsyncCollector into ResultPromise/ResultFuture**

This change is breaking the API of the AsyncFunction which is now called with a {{ResultFuture}} instead of a {{AsyncCollector}}. In order to complete the future with the result one has to call {{ResultFuture#complete}} or {{ResultFuture#completeExceptionally}} in case of an exceptional completion.



