
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
# Apache Zookeeper  3.4.4 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [ZOOKEEPER-1277](https://issues.apache.org/jira/browse/ZOOKEEPER-1277) | *Critical* | **servers stop serving when lower 32bits of zxid roll over**

Workaround: there is a simple workaround for this issue. Force a leader re-election before the lower 32bits reach 0xffffffff

Most users won't even see this given the number of writes on a typical installation - say you are doing 500 writes/second, you'd see this after ~3 months if the quorum is stable, any changes (such as upgrading the server software) would cause the xid to be reset, thereby staving off this issue for another period.


---

* [ZOOKEEPER-1344](https://issues.apache.org/jira/browse/ZOOKEEPER-1344) | *Critical* | **ZooKeeper client multi-update command is not considering the Chroot request**

**WARNING: No release note provided for this change.**


---

* [ZOOKEEPER-1210](https://issues.apache.org/jira/browse/ZOOKEEPER-1210) | *Minor* | **Can't build ZooKeeper RPM with RPM \>= 4.6.0 (i.e. on RHEL 6 and Fedora \>= 10)**

Fix buildroot misplacement on systems with RPM\>=4.6. Earlier RPM versions support --buildroot commandline flag, so this doesn't break anything on older systems.



