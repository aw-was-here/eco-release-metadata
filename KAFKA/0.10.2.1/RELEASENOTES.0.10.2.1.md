
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
# Apache Kafka  0.10.2.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [KAFKA-4864](https://issues.apache.org/jira/browse/KAFKA-4864) | *Critical* | **Kafka Secure Migrator tool doesn't secure all the nodes**

It seems that the secure nodes as referred by ZkUtils.scala are the following:

https://github.com/apache/kafka/blob/trunk/core/src/main/scala/kafka/utils/ZkUtils.scala#L201

A couple things:
- the list is highly outdated, and for example the most important nodes such as kafka-acls don't get secured. That's a huge security risk. Would it be better to just secure all the nodes recursively from the given root?
- the root of some nodes aren't secured. Ex: /brokers (but many others).

The result is the following after running the tool:
zookeeper-security-migration --zookeeper.acl secure --zookeeper.connect zoo1:2181/kafka-test

[zk: localhost:2181(CONNECTED) 9] getAcl /kafka-test/brokers
'world,'anyone
: cdrwa
[zk: localhost:2181(CONNECTED) 11] getAcl /kafka-test/brokers/ids
'world,'anyone
: r
'sasl,'myzkclient@EXAMPLE.COM
: cdrwa
[zk: localhost:2181(CONNECTED) 16] getAcl /kafka-test/kafka-acl
'world,'anyone
: cdrwa

That seems pretty bad to be honest... A fast enough ZkClient could delete some root nodes, and create the nodes they like before the Acls get set.



