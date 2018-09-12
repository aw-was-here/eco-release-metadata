
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

## Release 3.4.8 - 2016-02-22



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1929](https://issues.apache.org/jira/browse/ZOOKEEPER-1929) | std::length\_error on update children |  Major | contrib-zkfuse | Eduard White | Charles Strahan |
| [ZOOKEEPER-2211](https://issues.apache.org/jira/browse/ZOOKEEPER-2211) | PurgeTxnLog does not correctly purge when snapshots and logs are at different locations |  Major | scripts | Wesley Chow | Mohammad Arshad |
| [ZOOKEEPER-2311](https://issues.apache.org/jira/browse/ZOOKEEPER-2311) | assert in setup\_random |  Major | c client | Marshall McMullen | Marshall McMullen |
| [ZOOKEEPER-2295](https://issues.apache.org/jira/browse/ZOOKEEPER-2295) | TGT refresh time logic is wrong |  Major | . | Mohammad Arshad | Mohammad Arshad |
| [ZOOKEEPER-2281](https://issues.apache.org/jira/browse/ZOOKEEPER-2281) | ZK Server startup fails if there are spaces in the JAVA\_HOME path |  Minor | scripts | Neha Bathra | Neha Bathra |
| [ZOOKEEPER-2340](https://issues.apache.org/jira/browse/ZOOKEEPER-2340) | JMX is disabled even if JMXDISABLE is false |  Minor | . | Neha Bathra | Mohammad Arshad |
| [ZOOKEEPER-2229](https://issues.apache.org/jira/browse/ZOOKEEPER-2229) | Several four-letter words are undocumented. |  Major | documentation | Chris Nauroth | Chris Nauroth |
| [ZOOKEEPER-2347](https://issues.apache.org/jira/browse/ZOOKEEPER-2347) | Deadlock shutting down zookeeper |  Blocker | . | Ted Yu | Rakesh R |
| [ZOOKEEPER-2360](https://issues.apache.org/jira/browse/ZOOKEEPER-2360) | Update commons collections version used by tests/releaseaudit |  Blocker | build | Patrick Hunt | Patrick Hunt |


