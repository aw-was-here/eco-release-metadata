
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

## Release 1.3.4 - 2019-04-14



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21926](https://issues.apache.org/jira/browse/HBASE-21926) | Profiler servlet |  Major | master, Operability, regionserver | Andrew Kyle Purtell | Andrew Kyle Purtell |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21818](https://issues.apache.org/jira/browse/HBASE-21818) | Incorrect list item in javadoc |  Trivial | documentation, master | qiang Liu | qiang Liu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21196](https://issues.apache.org/jira/browse/HBASE-21196) | HTableMultiplexer clears the meta cache after every put operation |  Critical | Performance | Nihal Jain | Nihal Jain |
| [HBASE-21492](https://issues.apache.org/jira/browse/HBASE-21492) | CellCodec Written To WAL Before It's Verified |  Critical | wal | David Mollitor | David Mollitor |
| [HBASE-21547](https://issues.apache.org/jira/browse/HBASE-21547) | Precommit uses master flaky list for other branches |  Major | test | Peter Somogyi | Peter Somogyi |
| [HBASE-21766](https://issues.apache.org/jira/browse/HBASE-21766) | TestSimpleRpcScheduler is flaky (branch-1) |  Trivial | rpc, test | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21475](https://issues.apache.org/jira/browse/HBASE-21475) | Put mutation (having TTL set) added via co-processor is retrieved even after TTL expires |  Major | Coprocessors | Nihal Jain | Nihal Jain |
| [HBASE-22058](https://issues.apache.org/jira/browse/HBASE-22058) | upgrade thrift dependency to 0.9.3.1 on  branches 1.4, 1.3 and 1.2 |  Critical | Thrift | Francis Christopher Liu | Francis Christopher Liu |
| [HBASE-22067](https://issues.apache.org/jira/browse/HBASE-22067) | Fix log line in StochasticLoadBalancer when balancer is an ill-fit for cluster size |  Major | Balancer | Xu Cang | Xu Cang |
| [HBASE-21135](https://issues.apache.org/jira/browse/HBASE-21135) | Build fails on windows as it fails to parse windows path during license check |  Major | build | Nihal Jain | Nihal Jain |
| [HBASE-22125](https://issues.apache.org/jira/browse/HBASE-22125) | Fix more instances in make\_rc.sh where we need -Dhttps.protocols=TLSv1.2 |  Trivial | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20911](https://issues.apache.org/jira/browse/HBASE-20911) | correct Swtich/case indentation in formatter template for eclipse |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-20912](https://issues.apache.org/jira/browse/HBASE-20912) | Add import order config in dev support for eclipse |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-22070](https://issues.apache.org/jira/browse/HBASE-22070) | Checking restoreDir in RestoreSnapshotHelper |  Minor | snapshots | Vincent Choi | Vincent Choi |
| [HBASE-22106](https://issues.apache.org/jira/browse/HBASE-22106) | Log cause of the failure when coprocessor specification parsing fails. |  Minor | logging | Ankit Singhal | Ankit Singhal |
| [HBASE-22310](https://issues.apache.org/jira/browse/HBASE-22310) | checkAndMutate used an incorrect row to check the condition |  Major | API | Adonis Ling | Adonis Ling |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21963](https://issues.apache.org/jira/browse/HBASE-21963) | Add a script for building and verifying release candidate |  Minor | community, scripts | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21711](https://issues.apache.org/jira/browse/HBASE-21711) | Remove references to git.apache.org/hbase.git |  Critical | . | Peter Somogyi | Peter Somogyi |
| [HBASE-21561](https://issues.apache.org/jira/browse/HBASE-21561) | Backport HBASE-21413 (Empty meta log doesn't get split when restart whole cluster) to branch-1 |  Minor | . | Andrew Kyle Purtell | Xu Cang |
| [HBASE-21748](https://issues.apache.org/jira/browse/HBASE-21748) | Port HBASE-21738 (Remove all the CLSM#size operation in our memstore because it's an quite time consuming.) to branch-1 |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21374](https://issues.apache.org/jira/browse/HBASE-21374) | Backport HBASE-21342 to branch-1 |  Major | . | Mike Drob | mazhenlin |
| [HBASE-22152](https://issues.apache.org/jira/browse/HBASE-22152) | Create a jenkins file for yetus to processing GitHub PR |  Major | build | Duo Zhang | Duo Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21687](https://issues.apache.org/jira/browse/HBASE-21687) | Update Findbugs Maven Plugin to 3.0.4 to work with Maven 3.6.0+ [branches-1] |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-21685](https://issues.apache.org/jira/browse/HBASE-21685) | Change repository urls to Gitbox |  Critical | . | Peter Somogyi | Peter Somogyi |
| [HBASE-21853](https://issues.apache.org/jira/browse/HBASE-21853) | update copyright notices to 2019 |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-21884](https://issues.apache.org/jira/browse/HBASE-21884) | Fix box/unbox findbugs warning in secure bulk load |  Minor | . | Sean Busbey | Sean Busbey |


