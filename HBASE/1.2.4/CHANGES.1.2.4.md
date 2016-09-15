
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

## Release 1.2.4 - Unreleased (as of 2016-09-15)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16340](https://issues.apache.org/jira/browse/HBASE-16340) | ensure no Xerces jars included |  Critical | dependencies | Sean Busbey | Sean Busbey |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16562](https://issues.apache.org/jira/browse/HBASE-16562) | ITBLL should fail to start if misconfigured |  Major | integration tests | Andrew Purtell | Heng Chen |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16535](https://issues.apache.org/jira/browse/HBASE-16535) | Use regex to exclude generated classes for findbugs |  Major | findbugs | Duo Zhang | Duo Zhang |
| [HBASE-16527](https://issues.apache.org/jira/browse/HBASE-16527) | IOExceptions from DFS client still can cause CatalogJanitor to delete referenced files |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-16375](https://issues.apache.org/jira/browse/HBASE-16375) | Mapreduce mini cluster using HBaseTestingUtility not setting correct resourcemanager and jobhistory webapp address of MapReduceTestingShim |  Minor | . | Loknath Priyatham Teja Singamsetty | Loknath Priyatham Teja Singamsetty |
| [HBASE-16460](https://issues.apache.org/jira/browse/HBASE-16460) | Can\'t rebuild the BucketAllocator\'s data structures when BucketCache uses FileIOEngine |  Major | BucketCache | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16589](https://issues.apache.org/jira/browse/HBASE-16589) | Adjust log level for FATAL messages from HBaseReplicationEndpoint that are not fatal |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-16613](https://issues.apache.org/jira/browse/HBASE-16613) | Return the unused ByteBuffer to BoundedByteBufferPool when no cell is retrieved from the CellScanner |  Major | . | ChiaPing Tsai | ChiaPing Tsai |


