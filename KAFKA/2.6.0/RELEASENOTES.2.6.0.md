
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
# Apache Kafka  2.6.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [KAFKA-7740](https://issues.apache.org/jira/browse/KAFKA-7740) | *Major* | **Kafka Admin Client should be able to manage user/client configurations for users and clients**

Right now, Kafka Admin Client only allow users to change the configuration of brokers and topics. There are some use cases that users want to setOrUpdate quota configurations for users and clients through Kafka Admin Client. Without this new capability, users have to manually talk to zookeeper for this, which will pose other challenges for customers.

Considering we have already have the framework for the much complex brokers and topic configuration changes, it seems straightforward to add the support for the alterConfig and describeConfig for users and clients as well.



