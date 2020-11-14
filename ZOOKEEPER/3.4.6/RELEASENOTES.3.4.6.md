
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
# Apache Zookeeper  3.4.6 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [ZOOKEEPER-1562](https://issues.apache.org/jira/browse/ZOOKEEPER-1562) | *Trivial* | **Memory leaks in zoo\_multi API**

zoo\_multi API used to leak memory while deserializing the response from zookeeper server.
Completion entries for individual operation in zoo\_multi transaction weren't getting cleaned causing memory leak. This patch resolves this memory leak by destroying completion entries in deserialize\_multi function.


---

* [ZOOKEEPER-87](https://issues.apache.org/jira/browse/ZOOKEEPER-87) | *Critical* | **Follower does not shut itself down if its too far behind the leader.**

The value of syncLimit should be reviewed before this change is introduced in the cluster. Since it now detects followers that are lagging behind, clusters in which this was happening will now see followers being disconnected from time to time. This will normally be solved by increasing the syncLimit value.


---

* [ZOOKEEPER-732](https://issues.apache.org/jira/browse/ZOOKEEPER-732) | *Minor* | **Improper translation of error into Python exception**

Client that uses python binding may receive SystemError on session expiration.


---

* [ZOOKEEPER-1771](https://issues.apache.org/jira/browse/ZOOKEEPER-1771) | *Minor* | **ZooInspector authentication**

Added authentication for ZooInspector.


---

* [ZOOKEEPER-1557](https://issues.apache.org/jira/browse/ZOOKEEPER-1557) | *Major* | **jenkins jdk7 test failure in testBadSaslAuthNotifiesWatch**

Committed to 3.4.6/trunk. Thanks Eugene.


---

* [ZOOKEEPER-1812](https://issues.apache.org/jira/browse/ZOOKEEPER-1812) | *Minor* | **ZooInspector reconnection always fails if first connection fails**

Fixed ZooInspector reconnection


---

* [ZOOKEEPER-1666](https://issues.apache.org/jira/browse/ZOOKEEPER-1666) | *Major* | **Avoid Reverse DNS lookup if the hostname in connection string is literal IP address.**

Try to avoid reverse name service look up when the connection string consists of literal IP addresses but not real host names.


---

* [ZOOKEEPER-1817](https://issues.apache.org/jira/browse/ZOOKEEPER-1817) | *Blocker* | **Fix don't care for b3.4**

Thanks for the reviews and all the help, guys. Committed revision 1544858.


---

* [ZOOKEEPER-1653](https://issues.apache.org/jira/browse/ZOOKEEPER-1653) | *Blocker* | **zookeeper fails to start because of inconsistent epoch**

ZOOKEEPER-1549.patch should fix this issue in 3.5 branch.


---

* [ZOOKEEPER-1632](https://issues.apache.org/jira/browse/ZOOKEEPER-1632) | *Minor* | **fix memory leaks in cli\_st**

The fix for this issue solves the memory leak spotted in the absence of errors. In the case the completion function is not registered because of an error (e.g., see zoo\_async), the line duplicate won't be freed.


---

* [ZOOKEEPER-1811](https://issues.apache.org/jira/browse/ZOOKEEPER-1811) | *Major* | **The ZooKeeperSaslClient service name principal is hardcoded to "zookeeper"**

Adds a new system property "zookeeper.sasl.client.username" that can be used to configure the ZK Kerberos (SASL) client user principal name to something other than "zookeeper" (default) for any environments that use non-standard naming for its principals.


---

* [ZOOKEEPER-1179](https://issues.apache.org/jira/browse/ZOOKEEPER-1179) | *Critical* | **NettyServerCnxn does not properly close socket on 4 letter word requests**

Thanks Rakesh, you are right, this error is not happening anymore. Flavio, I'm closing this.



