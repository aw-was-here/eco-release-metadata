
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

## Release 1.6.1 - Unreleased (as of 2018-08-21)



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2231](https://issues.apache.org/jira/browse/KUDU-2231) | "materializing\_iterator\_do\_pushdown=true" cause simple query slow |  Major | master, tserver | DawnZhang | Dan Burkert |
| [KUDU-2251](https://issues.apache.org/jira/browse/KUDU-2251) | rowset size can overflow int in RowSetInfo |  Critical | tablet | Dan Burkert | Dan Burkert |
| [KUDU-2343](https://issues.apache.org/jira/browse/KUDU-2343) | Java client doesn't properly reconnect to leader master when old leader is online |  Critical | client, java | Todd Lipcon | Todd Lipcon |
| [KUDU-2416](https://issues.apache.org/jira/browse/KUDU-2416) | Incorrect fallthrough in Java PartialRow.setMin for DECIMAL times |  Critical | java | Todd Lipcon | Grant Henke |
| [KUDU-2540](https://issues.apache.org/jira/browse/KUDU-2540) | Authorization failures on exactly-once RPCs cause FATAL |  Major | rpc, security | Todd Lipcon | Dan Burkert |


