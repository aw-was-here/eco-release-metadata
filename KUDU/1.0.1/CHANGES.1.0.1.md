
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

## Release 1.0.1 - 2016-10-11



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1661](https://issues.apache.org/jira/browse/KUDU-1661) | Mark kudu::client::KuduClient::GetLatestObservedTimestamp() as experimental |  Minor | api, client, documentation | Alexey Serbin | Alexey Serbin |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1623](https://issues.apache.org/jira/browse/KUDU-1623) | UPSERTs that include only PK columns can cause crashes |  Blocker | tablet | Todd Lipcon |  |
| [KUDU-1660](https://issues.apache.org/jira/browse/KUDU-1660) | Kudu master start failed |  Major | master | Jarred Li |  |
| [KUDU-1681](https://issues.apache.org/jira/browse/KUDU-1681) | DNS resolution failure of master hostname causes tserver crash |  Blocker | tserver | Dan Burkert | Dan Burkert |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1651](https://issues.apache.org/jira/browse/KUDU-1651) | tserver crash when pushing predicate on dict encoded block with all null values |  Blocker | tablet | Dan Burkert | Andrew Wong |
| [KUDU-1652](https://issues.apache.org/jira/browse/KUDU-1652) | Partition pruning / scan optimization fails with IS NOT NULL predicate on PK column |  Blocker | client, tablet | Dan Burkert | Dan Burkert |
| [KUDU-1666](https://issues.apache.org/jira/browse/KUDU-1666) | filter IS NOT NULL predicates on non-nullable columns from scans in client |  Blocker | client | Dan Burkert | Dan Burkert |


