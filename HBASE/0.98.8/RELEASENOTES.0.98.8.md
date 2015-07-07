
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
# Apache HBase  0.98.8 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [HBASE-12536](https://issues.apache.org/jira/browse/HBASE-12536) | *Major* | **Reduce the effective scope of GLOBAL CREATE and ADMIN permission**

This change removes implicit write access to the META and ACL tables for any user with GLOBAL CREATE or ADMIN privilege. Users with GLOBAL CREATE will not be able to elevate their privileges unexpectedly through direct access to the ACL table. A GLOBAL ADMIN will still correctly be allowed to grant themselves any desired privilege.


---

* [HBASE-12432](https://issues.apache.org/jira/browse/HBASE-12432) | *Minor* | **RpcRetryingCaller should log after fixed number of retries like AsyncProcess**

hbase.client.start.log.errors.counter now also applies to Scanners.


---

* [HBASE-12389](https://issues.apache.org/jira/browse/HBASE-12389) | *Minor* | **Reduce the number of versions configured for the ACL table**

This change reduces the number of versions kept in the ACL table from 10 to 1. This is a fully compatible change. Existing ACL tables will not be affected, only newly initialized ones. Furthermore, old versions of ACL table entries were never considered by the AccessController in decision making, and any and all entries in the ACL table are not user accessible.


---

* [HBASE-12381](https://issues.apache.org/jira/browse/HBASE-12381) | *Minor* | **Add maven enforcer rules for build assumptions**

Enforces maven >= 3.0.3 (based on the oldest version we have building on jenkins) and java >= the source compilation target variable, which is 1.7 on master and branch-1 (based on java compat doc) and 1.6 before this.


---

* [HBASE-12314](https://issues.apache.org/jira/browse/HBASE-12314) | *Major* | **Add chaos monkey policy to execute two actions concurrently**

Adds a new chaos monkey noKill that won't kill services. Instead it runs two or more ddl commands at the same time.


---

* [HBASE-12197](https://issues.apache.org/jira/browse/HBASE-12197) | *Major* | **Move REST**

HBase Rest has moved to it's own module. If you previously were using the rest sever code in your project you will now need to depend upon hbase-rest module in addition to the hbase-server module.


---

* [HBASE-12142](https://issues.apache.org/jira/browse/HBASE-12142) | *Minor* | **Truncate command does not preserve ACLs table**

Prior to this change, the truncate shell command could not preserve ACLs on the table being truncated. In the 0.98 branch, this change also backports HBASE-8332, which adds a master handler for table truncation and new HBaseAdmin APIs for same.


---

* [HBASE-11997](https://issues.apache.org/jira/browse/HBASE-11997) | *Minor* | **CopyTable with bulkload**

CopyTable now can generate HFiles and bulkload to the destination table.



