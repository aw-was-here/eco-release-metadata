
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

## Release 1.3.1 - 2017-04-19



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1933](https://issues.apache.org/jira/browse/KUDU-1933) | OpId index 32-bit overflow (was: Master crashes after too many TS re-registrations) |  Critical | consensus, master, tserver | Jean-Daniel Cryans | Mike Percy |
| [KUDU-1962](https://issues.apache.org/jira/browse/KUDU-1962) | NPE and lost callback in Java client when master queue overflows |  Blocker | client | Todd Lipcon | Todd Lipcon |
| [KUDU-1963](https://issues.apache.org/jira/browse/KUDU-1963) | Java client logs NPE if a connection is closed by client during negotiation |  Critical | client | Todd Lipcon | Todd Lipcon |
| [KUDU-1607](https://issues.apache.org/jira/browse/KUDU-1607) | Unable to delete FAILED tablets as part of drop table |  Major | master | Dan Burkert | Mike Percy |
| [KUDU-1968](https://issues.apache.org/jira/browse/KUDU-1968) | Aborted tablet copies delete live blocks |  Blocker | tserver | Todd Lipcon | Todd Lipcon |
| [KUDU-1981](https://issues.apache.org/jira/browse/KUDU-1981) | With security enabled, Kudu servers cannot start at machines with len(FQDN) \> 64 |  Major | master, tserver | Alexey Serbin | Alexey Serbin |
| [KUDU-1958](https://issues.apache.org/jira/browse/KUDU-1958) | Configuration reference missing evolving gflags |  Major | documentation | Mike Percy | Mike Percy |


