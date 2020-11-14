
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
# Apache Hadoop  2.8.6 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HADOOP-16055](https://issues.apache.org/jira/browse/HADOOP-16055) | *Blocker* | **Upgrade AWS SDK to 1.11.271 in branch-2**

This change was required to address license compatibility issues with the JSON parser in the older AWS SDKs.

A consequence of this, where needed, the applied patch contains HADOOP-12705 Upgrade Jackson 2.2.3 to 2.7.8.


---

* [HADOOP-16053](https://issues.apache.org/jira/browse/HADOOP-16053) | *Major* | **Backport HADOOP-14816 to branch-2**

This patch changed the default build and test environment from Ubuntu "Trusty" 14.04 to Ubuntu "Xenial" 16.04.


---

* [HDFS-13101](https://issues.apache.org/jira/browse/HDFS-13101) | *Critical* | **Yet another fsimage corruption related to snapshot**

Fix a corner case in deleting HDFS snapshots. A regression was later found and fixed by HDFS-15012.



