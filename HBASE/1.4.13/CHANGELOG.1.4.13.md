
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

## Release 1.4.13 - 2020-02-29



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23802](https://issues.apache.org/jira/browse/HBASE-23802) | Remove unnecessary Configuration instantiation in LossyAccounting |  Minor | metrics | Nick Dimiduk | Nick Dimiduk |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22441](https://issues.apache.org/jira/browse/HBASE-22441) | BucketCache NullPointerException in cacheBlock |  Major | BucketCache | Lijin Bin | Lijin Bin |
| [HBASE-23337](https://issues.apache.org/jira/browse/HBASE-23337) | Several modules missing in nexus for Apache HBase 2.2.2 |  Blocker | build, community, scripts | Chao | Sean Busbey |
| [HBASE-23359](https://issues.apache.org/jira/browse/HBASE-23359) | RS going down with NPE when splitting a region with compaction disabled in branch-1 |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-22096](https://issues.apache.org/jira/browse/HBASE-22096) | /storeFile.jsp shows CorruptHFileException when the storeFile is a reference file |  Major | UI | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-23360](https://issues.apache.org/jira/browse/HBASE-23360) | [CLI] Fix help command "set\_quota" to explain removing quota |  Minor | shell | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23375](https://issues.apache.org/jira/browse/HBASE-23375) | Backport HBASE-22441 to branch-1 |  Major | BucketCache | Baiqiang Zhao | Baiqiang Zhao |
| [HBASE-23585](https://issues.apache.org/jira/browse/HBASE-23585) | MetricsRegionServerWrapperImpl.getL1CacheHitCount always returns 200 |  Major | metrics | Baiqiang Zhao | Baiqiang Zhao |
| [HBASE-23205](https://issues.apache.org/jira/browse/HBASE-23205) | Correctly update the position of WALs currently being replicated. |  Major | . | Jeongdae Kim | Jeongdae Kim |
| [HBASE-23698](https://issues.apache.org/jira/browse/HBASE-23698) | Switch central repo to https on branch-1 |  Blocker | tooling | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23825](https://issues.apache.org/jira/browse/HBASE-23825) | Increment proto conversion is broken |  Blocker | Increment | Abhishek Singh Chouhan | Abhishek Singh Chouhan |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23793](https://issues.apache.org/jira/browse/HBASE-23793) | Increase maven heap allocation to 4G in Yetus personality |  Major | build, test | Nick Dimiduk | Nick Dimiduk |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23862](https://issues.apache.org/jira/browse/HBASE-23862) | Fix flaky TestSnapshotFromMaster in 1.x versions |  Major | . | Sakthi | Sakthi |
| [HBASE-23743](https://issues.apache.org/jira/browse/HBASE-23743) | Release 1.4.13 |  Major | build, community | Sean Busbey | Sakthi |


