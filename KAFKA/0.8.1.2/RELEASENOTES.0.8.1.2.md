
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
# Apache Kafka  0.8.1.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [KAFKA-2357](https://issues.apache.org/jira/browse/KAFKA-2357) | *Major* | **Update zookeeper.connect description in Kafka documentation**

Since https://issues.apache.org/jira/browse/KAFKA-404 chroot pass is created on startup.

So the description quoted below is wrong:

bq. Note that you must create this path yourself prior to starting the broker

cf. http://mail-archives.apache.org/mod\_mbox/kafka-users/201507.mbox/%3CCAHBV8WcjXeUnEH4KGZ\_2f\_kPGJ5M%3DC%3DPaAuiOSGdx52cA4s4gg%40mail.gmail.com%3E


---

* [KAFKA-1419](https://issues.apache.org/jira/browse/KAFKA-1419) | *Blocker* | **cross build for scala 2.11**

Please publish builds for scala 2.11, hopefully just needs a small tweak to the gradle conf?


---

* [KAFKA-1382](https://issues.apache.org/jira/browse/KAFKA-1382) | *Major* | **Update zkVersion on partition state update failures**

Our updateIsr code is currently:

  private def updateIsr(newIsr: Set[Replica]) {
    debug("Updated ISR for partition [%s,%d] to %s".format(topic, partitionId, newIsr.mkString(",")))
    val newLeaderAndIsr = new LeaderAndIsr(localBrokerId, leaderEpoch, newIsr.map(r => r.brokerId).toList, zkVersion)
    // use the epoch of the controller that made the leadership decision, instead of the current controller epoch
    val (updateSucceeded, newVersion) = ZkUtils.conditionalUpdatePersistentPath(zkClient,
      ZkUtils.getTopicPartitionLeaderAndIsrPath(topic, partitionId),
      ZkUtils.leaderAndIsrZkData(newLeaderAndIsr, controllerEpoch), zkVersion)
    if (updateSucceeded){
      inSyncReplicas = newIsr
      zkVersion = newVersion
      trace("ISR updated to [%s] and zkVersion updated to [%d]".format(newIsr.mkString(","), zkVersion))
    } else {
      info("Cached zkVersion [%d] not equal to that in zookeeper, skip updating ISR".format(zkVersion))
    }

We encountered an interesting scenario recently when a large producer fully
saturated the broker's NIC for over an hour. The large volume of data led to
a number of ISR shrinks (and subsequent expands). The NIC saturation
affected the zookeeper client heartbeats and led to a session timeout. The
timeline was roughly as follows:

- Attempt to expand ISR
- Expansion written to zookeeper (confirmed in zookeeper transaction logs)
- Session timeout after around 13 seconds (the configured timeout is 20
  seconds) so that lines up.
- zkclient reconnects to zookeeper (with the same session ID) and retries
  the write - but uses the old zkVersion. This fails because the zkVersion
  has already been updated (above).
- The ISR expand keeps failing after that and the only way to get out of it
  is to bounce the broker.

In the above code, if the zkVersion is different we should probably update
the cached version and even retry the expansion until it succeeds.



