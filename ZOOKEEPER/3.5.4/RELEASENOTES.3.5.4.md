
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
# Apache Zookeeper  3.5.4 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [ZOOKEEPER-2722](https://issues.apache.org/jira/browse/ZOOKEEPER-2722) | *Major* | **Flaky Test: org.apache.zookeeper.test.ReadOnlyModeTest.testSessionEstablishment**

1


---

* [ZOOKEEPER-2841](https://issues.apache.org/jira/browse/ZOOKEEPER-2841) | *Major* | **ZooKeeper public include files leak porting changes**

cmake is added to replace the existing hardcoded (and outdated) visual studio solutions for windows platform.


---

* [ZOOKEEPER-2890](https://issues.apache.org/jira/browse/ZOOKEEPER-2890) | *Critical* | **Local automatic variable is left uninitialized and then freed.**

**WARNING: No release note provided for this change.**


---

* [ZOOKEEPER-2950](https://issues.apache.org/jira/browse/ZOOKEEPER-2950) | *Trivial* | **Add keys for the Zxid from the stat command to check\_zookeeper.py**

Add keys for the zxid and its component pieces: epoch and transaction counter. These are not reported by the 'mntr' command so they must be obtained from 'stat'. The counter is useful for tracking transaction rates, and epoch is useful for tracking leader churn.

zk\_zxid - the 64bit zxid from ZK
zk\_zxid\_counter - the lower 32 bits, AKA the counter
zk\_zxid\_epoch - the upper 32 bits, AKA the epoch


---

* [ZOOKEEPER-2952](https://issues.apache.org/jira/browse/ZOOKEEPER-2952) | *Critical* | **Upgrade third party libraries to address vulnerabilities**

**WARNING: No release note provided for this change.**


---

* [ZOOKEEPER-2967](https://issues.apache.org/jira/browse/ZOOKEEPER-2967) | *Major* | **Add check to validate dataDir and dataLogDir parameters at startup**

**WARNING: No release note provided for this change.**



