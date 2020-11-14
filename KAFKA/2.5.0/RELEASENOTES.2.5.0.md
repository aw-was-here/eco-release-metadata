
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
# Apache Kafka  2.5.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [KAFKA-9267](https://issues.apache.org/jira/browse/KAFKA-9267) | *Major* | **ZkSecurityMigrator should not create /controller node**

As we can see in these source codes – [ZkSecurityMigrator.scala#L226\|#L226]

\_ZkSecurityMigrator\_ checks and sets acl recursively for each path in \_SecureRootPaths\_. And \_/controller\_ is also in \_SecureRootPaths\_.

As we can predicted, \_zkClient.makeSurePersistentPathExists()\_ will create \_/controller\_ node if \_/controller\_ is not existed.

\_/controller\_ is a \*EPHEMERAL\* node for controller election, but \_makeSurePersistentPathExists()\_ will create a \*PERSISTENT\* node with \*null\* data.

If that happens, null data will cause a \*NPE\*, and the controller cannot be elected, kafka cluster will be unavailable .
 In addition, a \*PERSISTENT\* node doesn't disappear automatically, we have to delete it manually to fix the problem.

 

\*PERSISTENT\* \_/controller\_ node with \*null\* data in zk:
{code:java}
[zk: localhost:2181(CONNECTED) 16] get /kafka/controller
null
cZxid = 0x1100002284
ctime = Tue Dec 03 18:37:26 CST 2019
mZxid = 0x1100002284
mtime = Tue Dec 03 18:37:26 CST 2019
pZxid = 0x1100002284
cversion = 0
dataVersion = 0
aclVersion = 1
ephemeralOwner = 0x0
dataLength = 0
numChildren = 0{code}
\*Normal\* /controller node in zk:
{code:java}
[zk: localhost:2181(CONNECTED) 21] get /kafka/controller
{"version":1,"brokerid":1001,"timestamp":"1575370170528"}
cZxid = 0x11000023e1
ctime = Tue Dec 03 18:49:30 CST 2019
mZxid = 0x11000023e1
mtime = Tue Dec 03 18:49:30 CST 2019
pZxid = 0x11000023e1
cversion = 0
dataVersion = 0
aclVersion = 0
ephemeralOwner = 0x16ecb572df50021
dataLength = 57
numChildren = 0{code}
 \*NPE\* in controller.log : 
{code:java}
[2019-11-21 15:02:41,276] INFO [ControllerEventThread controllerId=1002] Starting (kafka.controller.ControllerEventManager$ControllerEventThread)
[2019-11-21 15:02:41,282] ERROR [ControllerEventThread controllerId=1002] Error processing event Startup (kafka.controller.ControllerEventManager$ControllerEventThread)
java.lang.NullPointerException
 at com.fasterxml.jackson.core.JsonFactory.createParser(JsonFactory.java:857)
 at com.fasterxml.jackson.databind.ObjectMapper.readTree(ObjectMapper.java:2572)
 at kafka.utils.Json$.parseBytes(Json.scala:62)
 at kafka.zk.ControllerZNode$.decode(ZkData.scala:56)
 at kafka.zk.KafkaZkClient.getControllerId(KafkaZkClient.scala:902)
 at kafka.controller.KafkaController.kafka$controller$KafkaController$$elect(KafkaController.scala:1199)
 at kafka.controller.KafkaController$Startup$.process(KafkaController.scala:1148)
 at kafka.controller.ControllerEventManager$ControllerEventThread$$anonfun$doWork$1.apply$mcV$sp(ControllerEventManager.scala:86)
 at kafka.controller.ControllerEventManager$ControllerEventThread$$anonfun$doWork$1.apply(ControllerEventManager.scala:86)
 at kafka.controller.ControllerEventManager$ControllerEventThread$$anonfun$doWork$1.apply(ControllerEventManager.scala:86)
 at kafka.metrics.KafkaTimer.time(KafkaTimer.scala:31)
 at kafka.controller.ControllerEventManager$ControllerEventThread.doWork(ControllerEventManager.scala:85)
 at kafka.utils.ShutdownableThread.run(ShutdownableThread.scala:82){code}
 

So, I submit a PR that \_ZkSecurityMigrator\_ will not handle \_/controller\_ node when \_/controller\_ is not existed.

This bug seems to affect all versions, please review and merge the PR as soon as possible.

Thanks!


---

* [KAFKA-8843](https://issues.apache.org/jira/browse/KAFKA-8843) | *Major* | **Zookeeper migration tool support for TLS**

Currently zookeeper-migration tool works based on SASL authentication. What means only digest and kerberos authentication is supported.

 

With the introduction of ZK 3.5, TLS is added, including a new X509 authentication provider. 

 

To support this great future and utilise the TLS principals, the zookeeper-migration-tool script should support the X509 authentication as well.

 

In my newbie view, this should mean adding a new parameter to allow other ways of authentication around [https://github.com/apache/kafka/blob/trunk/core/src/main/scala/kafka/admin/ZkSecurityMigrator.scala#L65. \|https://github.com/apache/kafka/blob/trunk/core/src/main/scala/kafka/admin/ZkSecurityMigrator.scala#L65]

 

If I understand the process correct, this will require a KIP, right?



