
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
# Apache HBase  1.1.5 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-15479](https://issues.apache.org/jira/browse/HBASE-15479) | *Major* | **No more garbage or beware of autoboxing**

This fix decreases client\'s memory allocation during writes by more than 50%.


---

* [HBASE-15592](https://issues.apache.org/jira/browse/HBASE-15592) | *Major* | **Print Procedure WAL content**

Use hbase org.apache.hadoop.hbase.procedure2.store.wal.ProcedureWALPrettyPrinter
to print the content of a Procedure WAL.
e.g.
hbase org.apache.hadoop.hbase.procedure2.store.wal.ProcedureWALPrettyPrinter -f /hbase/MasterProcWALs/state-00000000000000002571.log


---

* [HBASE-15645](https://issues.apache.org/jira/browse/HBASE-15645) | *Critical* | **hbase.rpc.timeout is not used in operations of HTable**

Fixes regression where hbase.rpc.timeout configuration was ignored in branch-1.0+

Adds new methods setOperationTimeout, getOperationTimeout, setRpcTimeout, and getRpcTimeout to Table. In branch-1.3+ they are public interfaces and in 1.0-1.2 they are labeled as @InterfaceAudience.Private.

Adds hbase.client.operation.timeout to hbase-default.xml with default of 1200000


---

* [HBASE-15720](https://issues.apache.org/jira/browse/HBASE-15720) | *Major* | **Print row locks at the debug dump page**

Adds a section to the debug dump page listing current row locks held.



