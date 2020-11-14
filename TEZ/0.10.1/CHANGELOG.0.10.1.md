
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
# Apache Tez Changelog

## Release 0.10.1 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-4233](https://issues.apache.org/jira/browse/TEZ-4233) | Map task should be blamed earlier for local fetch failures |  Major | . | László Bodor | László Bodor |
| [TEZ-4229](https://issues.apache.org/jira/browse/TEZ-4229) | Improve TezLocalCacheManager to use configured root directory |  Major | . | László Bodor | László Bodor |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-4070](https://issues.apache.org/jira/browse/TEZ-4070) | SSLFactory not closed in DAGClientTimelineImpl caused native memory issues |  Major | . | Xun REN | László Bodor |
| [TEZ-4237](https://issues.apache.org/jira/browse/TEZ-4237) | Upgrade async-http-client-1.9.40 due to CVE-2017-14063 |  Major | . | László Bodor | László Bodor |


