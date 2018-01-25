
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
# Apache Zookeeper  3.5.3 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [ZOOKEEPER-2573](https://issues.apache.org/jira/browse/ZOOKEEPER-2573) | *Major* | **Modify Info.REVISION to adapt git repo**

After the migration of ZooKeeper's version control system from 'svn repo' to 'apache git repo' the revision info becomes git's SHA-1 hash value.


---

* [ZOOKEEPER-1504](https://issues.apache.org/jira/browse/ZOOKEEPER-1504) | *Major* | **Multi-thread NIOServerCnxn**

There is a possibility of file descriptor leakage issue under high workload. Please upgrade to the latest version of JVM or the version that has a fix for this bug (http://bugs.sun.com/bugdatabase/view\_bug.do?bug\_id=7118373)


---

* [ZOOKEEPER-2885](https://issues.apache.org/jira/browse/ZOOKEEPER-2885) | *Critical* | **zookeeper-3.5.3-beta.tar.gz file in mirror site is corrupted**

Thank you all. It's a POSIX tar file, not gzip. My mistake.



