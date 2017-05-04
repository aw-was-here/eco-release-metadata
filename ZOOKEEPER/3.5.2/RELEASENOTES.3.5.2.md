
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
# Apache Zookeeper  3.5.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [ZOOKEEPER-1077](https://issues.apache.org/jira/browse/ZOOKEEPER-1077) | *Critical* | **C client lib doesn\'t build on Solaris**

Support for building C client lib on Illumos (and presumably OpenSolaris).  Configure with "CPPFLAGS=-D\_POSIX\_PTHREAD\_SEMANTICS LDFLAGS="-lnsl -lsocket" ./configure"


---

* [ZOOKEEPER-1853](https://issues.apache.org/jira/browse/ZOOKEEPER-1853) | *Minor* | **zkCli.sh can\'t issue a CREATE command containing spaces in the data**

Allows spaces to be used for parameters in zkCli as long as they are in single or double quotes.  ie: create /node1 "This will now work"


---

* [ZOOKEEPER-1929](https://issues.apache.org/jira/browse/ZOOKEEPER-1929) | *Major* | **std::length\_error on update children**

Fix a bug in zkfuse that causes an abort upon reading a node\'s content


---

* [ZOOKEEPER-2413](https://issues.apache.org/jira/browse/ZOOKEEPER-2413) | *Major* | **ContainerManager doesn\'t close the Timer it creates when stop() is called**

Thanks, Jordan.

Branch 3.5: Committed revision 1740737.
Trunk: Committed revision 1740738.


---

* [ZOOKEEPER-1460](https://issues.apache.org/jira/browse/ZOOKEEPER-1460) | *Major* | **IPv6 literal address not supported for quorum members**

IPv6 addresses are now properly parsed in the config



