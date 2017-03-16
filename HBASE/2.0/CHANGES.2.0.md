
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

## Release 2.0 - Unreleased (as of 2017-03-16)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17707](https://issues.apache.org/jira/browse/HBASE-17707) | New More Accurate Table Skew cost function/generator |  Minor | Balancer | Kahlil Oppenheimer | Kahlil Oppenheimer |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17676](https://issues.apache.org/jira/browse/HBASE-17676) | Get class name once for all in AbstractFSWAL |  Major | Performance | Yu Li | Yu Li |
| [HBASE-17689](https://issues.apache.org/jira/browse/HBASE-17689) | Add support for table.existsAll in thrift2 THBaseservice |  Major | Thrift | Yechao Chen | Yechao Chen |
| [HBASE-17747](https://issues.apache.org/jira/browse/HBASE-17747) | Support both weak and soft object pool |  Major | . | Yu Li | Yu Li |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17674](https://issues.apache.org/jira/browse/HBASE-17674) | Major compaction may be cancelled in CompactionChecker |  Major | Compaction | Guangxu Cheng | Guangxu Cheng |
| [HBASE-17760](https://issues.apache.org/jira/browse/HBASE-17760) | HDFS Balancer doc is misleading |  Minor | documentation | Harsh J | Harsh J |
| [HBASE-17779](https://issues.apache.org/jira/browse/HBASE-17779) | disable\_table\_replication returns misleading message and does not turn off replication |  Major | . | Ted Yu | Janos Gub |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17703](https://issues.apache.org/jira/browse/HBASE-17703) | TestThriftServerCmdLine is flaky in master branch |  Major | . | Ted Yu | Jan Hentschel |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17745](https://issues.apache.org/jira/browse/HBASE-17745) | Support short circuit connection for master services |  Major | . | Yu Li | Yu Li |
| [HBASE-15314](https://issues.apache.org/jira/browse/HBASE-15314) | Allow more than one backing file in bucketcache |  Major | BucketCache | stack | chunhui shen |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17782](https://issues.apache.org/jira/browse/HBASE-17782) | Extend IdReadWriteLock to support using both weak and soft reference |  Major | . | Yu Li | Yu Li |


