
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
# Apache Zookeeper  3.6.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [ZOOKEEPER-1948](https://issues.apache.org/jira/browse/ZOOKEEPER-1948) | *Major* | **Enable JMX remote monitoring**

Changes in zkServer.sh to support JMX remote monitoring of Zookeeper processes. The change doesn't impact current installations and new installations requiring JMX remote monitoring need to set the jmx port to enable it.


---

* [ZOOKEEPER-2079](https://issues.apache.org/jira/browse/ZOOKEEPER-2079) | *Minor* | **Stop daemon with "kill" rather than "kill -9"**

Kill java process with `SIGTERM` rather than `SIGKILL`


---

* [ZOOKEEPER-2114](https://issues.apache.org/jira/browse/ZOOKEEPER-2114) | *Major* | **jute generated allocate\_\* functions are not externally visible**

Expose jute-generated allocate\_XXX functions in libzookeeper.


---

* [ZOOKEEPER-2190](https://issues.apache.org/jira/browse/ZOOKEEPER-2190) | *Major* | **In StandaloneDisabledTest, testReconfig() shouldn't take leaving servers as joining servers**

trunk: http://svn.apache.org/viewvc?view=revision&revision=1679444
branch-3.5: http://svn.apache.org/viewvc?view=revision&revision=1679446


---

* [ZOOKEEPER-1077](https://issues.apache.org/jira/browse/ZOOKEEPER-1077) | *Critical* | **C client lib doesn't build on Solaris**

Support for building C client lib on Illumos (and presumably OpenSolaris).  Configure with "CPPFLAGS=-D\_POSIX\_PTHREAD\_SEMANTICS LDFLAGS="-lnsl -lsocket" ./configure"


---

* [ZOOKEEPER-1506](https://issues.apache.org/jira/browse/ZOOKEEPER-1506) | *Blocker* | **Re-try DNS hostname -\> IP resolution if node connection fails**

Tests pass with this patch.
This patch is for the branch-3.4 branch ONLY.


---

* [ZOOKEEPER-1853](https://issues.apache.org/jira/browse/ZOOKEEPER-1853) | *Minor* | **zkCli.sh can't issue a CREATE command containing spaces in the data**

Allows spaces to be used for parameters in zkCli as long as they are in single or double quotes.  ie: create /node1 "This will now work"


---

* [ZOOKEEPER-2413](https://issues.apache.org/jira/browse/ZOOKEEPER-2413) | *Major* | **ContainerManager doesn't close the Timer it creates when stop() is called**

Thanks, Jordan.

Branch 3.5: Committed revision 1740737.
Trunk: Committed revision 1740738.



