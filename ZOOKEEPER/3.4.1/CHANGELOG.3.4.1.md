
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
# Apache Zookeeper Changelog

## Release 3.4.1 - 2011-12-16



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1311](https://issues.apache.org/jira/browse/ZOOKEEPER-1311) | ZooKeeper test jar is broken |  Blocker | . | Ivan Kelly | Ivan Kelly |
| [ZOOKEEPER-1305](https://issues.apache.org/jira/browse/ZOOKEEPER-1305) | zookeeper.c:prepend\_string func can dereference null ptr |  Major | c client | Daniel Lescohier | Daniel Lescohier |
| [ZOOKEEPER-1316](https://issues.apache.org/jira/browse/ZOOKEEPER-1316) | zookeeper\_init leaks memory if chroot is just '/' |  Minor | c client | Akira Kitada | Akira Kitada |
| [ZOOKEEPER-1315](https://issues.apache.org/jira/browse/ZOOKEEPER-1315) | zookeeper\_init always reports sessionPasswd=\<hidden\> |  Minor | c client | Akira Kitada | Akira Kitada |
| [ZOOKEEPER-1317](https://issues.apache.org/jira/browse/ZOOKEEPER-1317) | Possible segfault in zookeeper\_init |  Minor | c client | Akira Kitada | Akira Kitada |
| [ZOOKEEPER-1319](https://issues.apache.org/jira/browse/ZOOKEEPER-1319) | Missing data after restarting+expanding a cluster |  Blocker | . | Jeremy Stribling | Patrick Hunt |
| [ZOOKEEPER-1269](https://issues.apache.org/jira/browse/ZOOKEEPER-1269) | Multi deserialization issues |  Major | server | Camille Fournier | Camille Fournier |


