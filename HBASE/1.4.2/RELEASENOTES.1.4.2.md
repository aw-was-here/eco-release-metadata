
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
# Apache HBase  1.4.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-19770](https://issues.apache.org/jira/browse/HBASE-19770) | *Critical* | **Add '--return-values' option to Shell to print return values of commands in interactive mode**

Introduces a new option to the HBase shell: -r, --return-values. When the shell is in "interactive" mode (default), the return value of shell commands are not returned to the user as they dirty the console output. For those who desire this functionality, the "--return-values" option restores the old functionality of the commands passing their return value to the user.


---

* [HBASE-19892](https://issues.apache.org/jira/browse/HBASE-19892) | *Major* | **Checking 'patch attach' and yetus 0.7.0 and move to Yetus 0.7.0**

Moved our internal yetus reference from 0.6.0 to 0.7.0. Concurrently, I changed hadoopqa to run with 0.7.0 (by editing the config in jenkins).


---

* [HBASE-19901](https://issues.apache.org/jira/browse/HBASE-19901) | *Major* | **Up yetus proclimit on nightlies**

Pass to yetus a dockermemlimit of 20G and a proclimit of 10000. Defaults are 4G and 1G respectively.


---

* [HBASE-19900](https://issues.apache.org/jira/browse/HBASE-19900) | *Critical* | **Region-level exception destroy the result of batch**

This fix makes the following changes to how client handle the both of action result and region exception.
1) honor the action result rather than region exception. If the action have both of true result and region exception, the action is fine as the exception is caused by other actions which are in the same region.
2) honor the action exception rather than region exception. If the action have both of action exception and region exception, we deal with the action exception only. If we also handle the region exception for the same action, it will introduce the negative count of actions in progress. The AsyncRequestFuture#waitUntilDone will block forever.


---

* [HBASE-20017](https://issues.apache.org/jira/browse/HBASE-20017) | *Blocker* | **BufferedMutatorImpl submit the same mutation repeatedly**

This change fixes multithreading issues in the implementation of BufferedMutator. BufferedMutator should not be used with 1.4 releases prior to 1.4.2.


---

* [HBASE-17448](https://issues.apache.org/jira/browse/HBASE-17448) | *Major* | **Export metrics from RecoverableZooKeeper**

Committed to master and branch-1



