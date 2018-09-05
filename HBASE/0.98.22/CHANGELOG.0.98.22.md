
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

## Release 0.98.22 - 2016-09-09

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16340](https://issues.apache.org/jira/browse/HBASE-16340) | ensure no Xerces jars included |  Critical | dependencies | Sean Busbey | Sean Busbey |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16299](https://issues.apache.org/jira/browse/HBASE-16299) | Update REST API scanner with ability to do reverse scan |  Minor | REST | Bjorn Olsen | Minwoo Kang |
| [HBASE-16379](https://issues.apache.org/jira/browse/HBASE-16379) | [replication] Minor improvement to replication/copy\_tables\_desc.rb |  Trivial | Replication, shell | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-16385](https://issues.apache.org/jira/browse/HBASE-16385) | Have hbase-rest pull hbase.rest.port from Constants.java |  Minor | REST | Dima Spivak | Yi Liang |
| [HBASE-16448](https://issues.apache.org/jira/browse/HBASE-16448) | Custom metrics for custom replication endpoints |  Major | Replication | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-16502](https://issues.apache.org/jira/browse/HBASE-16502) | Reduce garbage in BufferedDataBlockEncoder |  Major | . | binlijin | binlijin |
| [HBASE-16399](https://issues.apache.org/jira/browse/HBASE-16399) | Provide an API to get list of failed regions and servername in Canary |  Major | canary | Vishal Khandelwal | Vishal Khandelwal |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16315](https://issues.apache.org/jira/browse/HBASE-16315) | RegionSizeCalculator prints region names as binary without escapes |  Trivial | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16377](https://issues.apache.org/jira/browse/HBASE-16377) | ServerName check is ineffective in region\_mover.rb |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16402](https://issues.apache.org/jira/browse/HBASE-16402) | RegionServerCoprocessorHost should be initialized before RpcServer starts |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-15635](https://issues.apache.org/jira/browse/HBASE-15635) | Mean age of Blocks in cache (seconds) on webUI should be greater than zero |  Major | . | Heng Chen | Heng Chen |
| [HBASE-16360](https://issues.apache.org/jira/browse/HBASE-16360) | TableMapReduceUtil addHBaseDependencyJars has the wrong class name for PrefixTreeCodec |  Minor | mapreduce | Matteo Bertozzi | Jing Pu Chen |
| [HBASE-16464](https://issues.apache.org/jira/browse/HBASE-16464) | archive folder grows bigger and bigger due to corrupt snapshot under tmp dir |  Major | snapshots | Heng Chen | Heng Chen |
| [HBASE-16471](https://issues.apache.org/jira/browse/HBASE-16471) | Region Server metrics context will be wrong when machine hostname contain "master" word |  Minor | metrics | Pankaj Kumar | Pankaj Kumar |
| [HBASE-16495](https://issues.apache.org/jira/browse/HBASE-16495) | When accessed via Thrift, all column families have timeToLive equal to -1 |  Minor | Thrift | Tigran Saluev | Tigran Saluev |
| [HBASE-16512](https://issues.apache.org/jira/browse/HBASE-16512) | when locate meta region, we should respect the param "useCache" passed in on 0.98 |  Major | . | Heng Chen | Heng Chen |
| [HBASE-16535](https://issues.apache.org/jira/browse/HBASE-16535) | Use regex to exclude generated classes for findbugs |  Major | findbugs | Duo Zhang | Duo Zhang |
| [HBASE-16527](https://issues.apache.org/jira/browse/HBASE-16527) | IOExceptions from DFS client still can cause CatalogJanitor to delete referenced files |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-16375](https://issues.apache.org/jira/browse/HBASE-16375) | Mapreduce mini cluster using HBaseTestingUtility not setting correct resourcemanager and jobhistory webapp address of MapReduceTestingShim |  Minor | . | Loknath Priyatham Teja Singamsetty | Loknath Priyatham Teja Singamsetty |
| [HBASE-16552](https://issues.apache.org/jira/browse/HBASE-16552) | MiniHBaseCluster#getServerWith() does not ignore stopped RSs |  Trivial | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16538](https://issues.apache.org/jira/browse/HBASE-16538) | Version mismatch in HBaseConfiguration.checkDefaultsVersion |  Major | . | Appy | Appy |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16400](https://issues.apache.org/jira/browse/HBASE-16400) | TestHBaseFsck fails on HBase-0.98-on-Hadoop-1.1 build |  Minor | . | Ted Yu | Ted Yu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16318](https://issues.apache.org/jira/browse/HBASE-16318) | fail build if license isn't in whitelist |  Major | build, dependencies | Sean Busbey | Sean Busbey |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16467](https://issues.apache.org/jira/browse/HBASE-16467) | Move AbstractHBaseTool to hbase-common |  Trivial | . | Appy | Appy |
| [HBASE-16518](https://issues.apache.org/jira/browse/HBASE-16518) | Remove old .arcconfig file |  Trivial | tooling | Gary Helmling | Gary Helmling |


