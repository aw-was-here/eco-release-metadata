
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

## Release 2.7.6 - Unreleased (as of 2018-01-25)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-13263](https://issues.apache.org/jira/browse/HADOOP-13263) | Reload cached groups in background after expiry |  Major | . | Stephen O'Donnell | Stephen O'Donnell |
| [HDFS-11003](https://issues.apache.org/jira/browse/HDFS-11003) | Expose "XmitsInProgress" through DataNodeMXBean |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-14246](https://issues.apache.org/jira/browse/HADOOP-14246) | Authentication Tokens should use SecureRandom instead of Random and 256 bit secrets |  Major | security | Robert Kanter | Robert Kanter |
| [YARN-7590](https://issues.apache.org/jira/browse/YARN-7590) | Improve container-executor validation check |  Major | security, yarn | Eric Yang | Eric Yang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-3425](https://issues.apache.org/jira/browse/YARN-3425) | NPE from RMNodeLabelsManager.serviceStop when NodeLabelsManager.serviceInit failed |  Minor | resourcemanager | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-4167](https://issues.apache.org/jira/browse/YARN-4167) | NPE on RMActiveServices#serviceStop when store is null |  Minor | . | Bibin A Chundatt | Bibin A Chundatt |
| [HADOOP-12181](https://issues.apache.org/jira/browse/HADOOP-12181) | Fix intermittent test failure of TestZKSignerSecretProvider |  Minor | . | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-13375](https://issues.apache.org/jira/browse/HADOOP-13375) | o.a.h.security.TestGroupsCaching.testBackgroundRefreshCounters seems flaky |  Major | security, test | Mingliang Liu | Weiwei Yang |
| [HADOOP-12611](https://issues.apache.org/jira/browse/HADOOP-12611) | TestZKSignerSecretProvider#testMultipleInit occasionally fail |  Major | . | Wei-Chiu Chuang | Eric Badger |
| [HADOOP-13508](https://issues.apache.org/jira/browse/HADOOP-13508) | FsPermission string constructor does not recognize sticky bit |  Major | . | Atul Sikaria | Atul Sikaria |
| [HDFS-12371](https://issues.apache.org/jira/browse/HDFS-12371) | "BlockVerificationFailures" and "BlocksVerified" show up as 0 in Datanode JMX |  Major | metrics | Sai Nukavarapu | Hanisha Koneru |
| [MAPREDUCE-5124](https://issues.apache.org/jira/browse/MAPREDUCE-5124) | AM lacks flow control for task events |  Major | mr-am | Jason Lowe | Peter Bacsko |
| [HDFS-12881](https://issues.apache.org/jira/browse/HDFS-12881) | Output streams closed with IOUtils suppressing write errors |  Major | . | Jason Lowe | Ajay Kumar |
| [YARN-7661](https://issues.apache.org/jira/browse/YARN-7661) | NodeManager metrics return wrong value after update node resource |  Major | . | Yang Wang | Yang Wang |
| [HDFS-12347](https://issues.apache.org/jira/browse/HDFS-12347) | TestBalancerRPCDelay#testBalancerRPCDelay fails very frequently |  Critical | test | Xiao Chen | Bharat Viswanadham |
| [YARN-6632](https://issues.apache.org/jira/browse/YARN-6632) | Backport YARN-3425 to branch 2.7 |  Major | . | Íñigo Goiri | Íñigo Goiri |
| [HADOOP-15143](https://issues.apache.org/jira/browse/HADOOP-15143) | NPE due to Invalid KerberosTicket in UGI |  Major | . | Jitendra Nath Pandey | Mukul Kumar Singh |
| [MAPREDUCE-7028](https://issues.apache.org/jira/browse/MAPREDUCE-7028) | Concurrent task progress updates causing NPE in Application Master |  Blocker | mr-am | Gergo Repas | Gergo Repas |
| [HADOOP-12751](https://issues.apache.org/jira/browse/HADOOP-12751) | While using kerberos Hadoop incorrectly assumes names with '@' to be non-simple |  Critical | security | Bolke de Bruin | Bolke de Bruin |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-6633](https://issues.apache.org/jira/browse/YARN-6633) | Backport YARN-4167 to branch 2.7 |  Major | . | Íñigo Goiri | Íñigo Goiri |
| [HADOOP-15177](https://issues.apache.org/jira/browse/HADOOP-15177) | Update the release year to 2018 |  Blocker | build | Akira Ajisaka | Bharat Viswanadham |


