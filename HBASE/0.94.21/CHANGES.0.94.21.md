
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

## Release 0.94.21 - 2014-07-03



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10935](https://issues.apache.org/jira/browse/HBASE-10935) | support snapshot policy where flush memstore can be skipped to prevent production cluster freeze |  Minor | shell, snapshots | Tianying Chang | Tianying Chang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8495](https://issues.apache.org/jira/browse/HBASE-8495) | Change ownership of the directory to bulk load |  Trivial | mapreduce | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10871](https://issues.apache.org/jira/browse/HBASE-10871) | Indefinite OPEN/CLOSE wait on busy RegionServers |  Major | Balancer, master, Region Assignment | Harsh J | Esteban Gutierrez |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11096](https://issues.apache.org/jira/browse/HBASE-11096) | stop method of Master and RegionServer coprocessor  is not invoked |  Major | . | Qiang Tian | Qiang Tian |
| [HBASE-11234](https://issues.apache.org/jira/browse/HBASE-11234) | FastDiffDeltaEncoder#getFirstKeyInBlock returns wrong result |  Critical | . | chunhui shen | chunhui shen |
| [HBASE-10692](https://issues.apache.org/jira/browse/HBASE-10692) | The Multi TableMap job don't support the security HBase cluster |  Minor | mapreduce | Liu Shaohui | Liu Shaohui |
| [HBASE-11341](https://issues.apache.org/jira/browse/HBASE-11341) | ZKProcedureCoordinatorRpcs should respond only to members |  Minor | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11052](https://issues.apache.org/jira/browse/HBASE-11052) | Sending random data crashes thrift service |  Major | Thrift | Adrian Muraru | Adrian Muraru |
| [HBASE-11414](https://issues.apache.org/jira/browse/HBASE-11414) | Backport to 0.94: HBASE-7711 rowlock release problem with thread interruptions in batchMutate |  Major | . | Ted Yu | Ted Yu |


