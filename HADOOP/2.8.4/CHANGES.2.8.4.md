
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
# Apache Hadoop Changelog

## Release 2.8.4 - Unreleased (as of 2018-01-25)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-11409](https://issues.apache.org/jira/browse/HDFS-11409) | DatanodeInfo getNetworkLocation and setNetworkLocation shoud use volatile instead of synchronized |  Minor | performance | Chen Liang | Chen Liang |
| [HADOOP-14246](https://issues.apache.org/jira/browse/HADOOP-14246) | Authentication Tokens should use SecureRandom instead of Random and 256 bit secrets |  Major | security | Robert Kanter | Robert Kanter |
| [YARN-7495](https://issues.apache.org/jira/browse/YARN-7495) | Improve robustness of the AggregatedLogDeletionService |  Major | log-aggregation | Jonathan Eagles | Jonathan Eagles |
| [YARN-7678](https://issues.apache.org/jira/browse/YARN-7678) | Ability to enable logging of container memory stats |  Major | nodemanager | Jim Brennan | Jim Brennan |
| [HADOOP-13738](https://issues.apache.org/jira/browse/HADOOP-13738) | DiskChecker should perform some disk IO |  Major | . | Arpit Agarwal | Arpit Agarwal |
| [YARN-7590](https://issues.apache.org/jira/browse/YARN-7590) | Improve container-executor validation check |  Major | security, yarn | Eric Yang | Eric Yang |
| [YARN-7728](https://issues.apache.org/jira/browse/YARN-7728) | Expose container preemptions related information in Capacity Scheduler queue metrics |  Major | . | Eric Payne | Eric Payne |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-7489](https://issues.apache.org/jira/browse/YARN-7489) | ConcurrentModificationException in RMAppImpl#getRMAppMetrics |  Major | capacityscheduler | Tao Yang | Tao Yang |
| [YARN-7525](https://issues.apache.org/jira/browse/YARN-7525) | Incorrect query parameters in cluster nodes REST API document |  Minor | documentation | Tao Yang | Tao Yang |
| [HDFS-12754](https://issues.apache.org/jira/browse/HDFS-12754) | Lease renewal can hit a deadlock |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [HDFS-11754](https://issues.apache.org/jira/browse/HDFS-11754) | Make FsServerDefaults cache configurable. |  Minor | . | Rushabh S Shah | Mikhail Erofeev |
| [MAPREDUCE-5124](https://issues.apache.org/jira/browse/MAPREDUCE-5124) | AM lacks flow control for task events |  Major | mr-am | Jason Lowe | Peter Bacsko |
| [HDFS-12833](https://issues.apache.org/jira/browse/HDFS-12833) | Distcp : Update the usage of delete option for dependency with update and overwrite option |  Minor | distcp, hdfs | Harshakiran Reddy | usharani |
| [HDFS-12907](https://issues.apache.org/jira/browse/HDFS-12907) | Allow read-only access to reserved raw for non-superusers |  Major | namenode | Daryn Sharp | Rushabh S Shah |
| [HDFS-12881](https://issues.apache.org/jira/browse/HDFS-12881) | Output streams closed with IOUtils suppressing write errors |  Major | . | Jason Lowe | Ajay Kumar |
| [YARN-7595](https://issues.apache.org/jira/browse/YARN-7595) | Container launching code suppresses close exceptions after writes |  Major | nodemanager | Jason Lowe | Jim Brennan |
| [YARN-7661](https://issues.apache.org/jira/browse/YARN-7661) | NodeManager metrics return wrong value after update node resource |  Major | . | Yang Wang | Yang Wang |
| [HDFS-12347](https://issues.apache.org/jira/browse/HDFS-12347) | TestBalancerRPCDelay#testBalancerRPCDelay fails very frequently |  Critical | test | Xiao Chen | Bharat Viswanadham |
| [HADOOP-15143](https://issues.apache.org/jira/browse/HADOOP-15143) | NPE due to Invalid KerberosTicket in UGI |  Major | . | Jitendra Nath Pandey | Mukul Kumar Singh |
| [MAPREDUCE-7028](https://issues.apache.org/jira/browse/MAPREDUCE-7028) | Concurrent task progress updates causing NPE in Application Master |  Blocker | mr-am | Gergo Repas | Gergo Repas |
| [YARN-7619](https://issues.apache.org/jira/browse/YARN-7619) | Max AM Resource value in Capacity Scheduler UI has to be refreshed for every user |  Major | capacity scheduler, yarn | Eric Payne | Eric Payne |
| [YARN-7663](https://issues.apache.org/jira/browse/YARN-7663) | RMAppImpl:Invalid event: START at KILLED |  Minor | resourcemanager | lujie | lujie |
| [YARN-6948](https://issues.apache.org/jira/browse/YARN-6948) | Invalid event: ATTEMPT\_ADDED at FINAL\_SAVING |  Minor | yarn | lujie | lujie |
| [HDFS-6804](https://issues.apache.org/jira/browse/HDFS-6804) | Add test for race condition between transferring block and appending block causes "Unexpected checksum mismatch exception" |  Major | datanode | Gordon Wang | Brahma Reddy Battula |
| [HDFS-8693](https://issues.apache.org/jira/browse/HDFS-8693) | refreshNamenodes does not support adding a new standby to a running DN |  Critical | datanode, ha | Jian Fang | Ajith S |
| [HDFS-9049](https://issues.apache.org/jira/browse/HDFS-9049) | Make Datanode Netty reverse proxy port to be configurable |  Major | datanode | Vinayakumar B | Vinayakumar B |
| [HADOOP-15150](https://issues.apache.org/jira/browse/HADOOP-15150) | in FsShell, UGI params should be overidden through env vars(-D arg) |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-15181](https://issues.apache.org/jira/browse/HADOOP-15181) | Typo in SecureMode.md |  Trivial | documentation | Masahiro Tanaka | Masahiro Tanaka |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-12396](https://issues.apache.org/jira/browse/HDFS-12396) | Webhdfs file system should get delegation token from kms provider. |  Major | encryption, kms, webhdfs | Rushabh S Shah | Rushabh S Shah |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-15177](https://issues.apache.org/jira/browse/HADOOP-15177) | Update the release year to 2018 |  Blocker | build | Akira Ajisaka | Bharat Viswanadham |


