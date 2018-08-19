
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
# Apache Kudu Changelog

## Release 1.2.1 - Unreleased (as of 2018-08-19)



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2085](https://issues.apache.org/jira/browse/KUDU-2085) | Seek past last element of a prefix-encoded binary block may crash |  Critical | cfile | Todd Lipcon | Todd Lipcon |
| [KUDU-2083](https://issues.apache.org/jira/browse/KUDU-2083) | MaintenanceManager running\_op\_ count not decremented if MaintenanceOp::Prepare() fails |  Critical | . | Samuel Okrent | David Alves |
| [KUDU-2209](https://issues.apache.org/jira/browse/KUDU-2209) | HybridClock doesn't handle changes STA\_NANO status flag |  Critical | server | Todd Lipcon | Todd Lipcon |
| [KUDU-2173](https://issues.apache.org/jira/browse/KUDU-2173) | Partitions are pruned incorrectly when range-partitioned on a PK prefix |  Blocker | client | Todd Lipcon | Dan Burkert |


