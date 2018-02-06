
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
# Apache HBase Changelog

## Release 1.2.8 - Unreleased (as of 2018-02-06)



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17513](https://issues.apache.org/jira/browse/HBASE-17513) | Thrift Server 1 uses different QOP settings than RPC and Thrift Server 2 and can easily be misconfigured so there is no encryption when the operator expects it. |  Critical | documentation, security, Thrift, Usability | Sean Busbey | Reid Chan |
| [HBASE-18891](https://issues.apache.org/jira/browse/HBASE-18891) | Upgrade netty-all jar |  Critical | . | Josh Elser | Josh Elser |
| [HBASE-19901](https://issues.apache.org/jira/browse/HBASE-19901) | Up yetus proclimit on nightlies |  Major | . | stack | stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18690](https://issues.apache.org/jira/browse/HBASE-18690) | Replace o.a.h.c.InterfaceAudience by o.a.h.h.c.InterfaceAudience |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |


