
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

## Release 1.11.1 - 2019-11-20



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2990](https://issues.apache.org/jira/browse/KUDU-2990) | Kudu can't distribute libnuma (dependency of memkind) |  Blocker | util | Adar Dembo | Adar Dembo |
| [KUDU-2994](https://issues.apache.org/jira/browse/KUDU-2994) | KuduTestHarness fails to start with NTP error when using kudu-binary 1.11.0 |  Critical | test | Greg Solovyev |  |
| [KUDU-2989](https://issues.apache.org/jira/browse/KUDU-2989) | SASL server fails when FQDN is greater than 63 characters long |  Critical | rpc, security | Todd Lipcon |  |
| [KUDU-3014](https://issues.apache.org/jira/browse/KUDU-3014) | Java client doesn't verify channel bindings during connection negotiation |  Major | client, java | Alexey Serbin |  |
| [KUDU-2987](https://issues.apache.org/jira/browse/KUDU-2987) | Intra location rebalance will crash in special case |  Major | CLI | ZhangYao | ZhangYao |


