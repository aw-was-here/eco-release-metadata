
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

## Release 2.7.8 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-13812](https://issues.apache.org/jira/browse/HDFS-13812) | Fix the inconsistent default refresh interval on Caching documentation |  Trivial | documentation | David Mollitor | Hrishikesh Gadre |
| [HADOOP-15959](https://issues.apache.org/jira/browse/HADOOP-15959) | revert HADOOP-12751 |  Minor | security | Steve Loughran | Steve Loughran |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-12319](https://issues.apache.org/jira/browse/HDFS-12319) | DirectoryScanner will throw IllegalStateException when Multiple BP's are present |  Blocker | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-14891](https://issues.apache.org/jira/browse/HADOOP-14891) | Remove references to Guava Objects.toStringHelper |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [HADOOP-15674](https://issues.apache.org/jira/browse/HADOOP-15674) | Test failure TestSSLHttpServer.testExcludedCiphers with TLS\_ECDHE\_RSA\_WITH\_AES\_128\_CBC\_SHA256 cipher suite |  Major | common | Gabor Bota | Szilard Nemeth |
| [YARN-8640](https://issues.apache.org/jira/browse/YARN-8640) | Restore previous state in container-executor after failure |  Major | . | Jim Brennan | Jim Brennan |
| [MAPREDUCE-7131](https://issues.apache.org/jira/browse/MAPREDUCE-7131) | Job History Server has race condition where it moves files from intermediate to finished but thinks file is in intermediate |  Major | . | Anthony Hsu | Anthony Hsu |
| [MAPREDUCE-7133](https://issues.apache.org/jira/browse/MAPREDUCE-7133) | History Server task attempts REST API returns invalid data |  Major | jobhistoryserver | Oleksandr Shevchenko | Oleksandr Shevchenko |
| [HADOOP-15735](https://issues.apache.org/jira/browse/HADOOP-15735) | backport HADOOP-11687 for hadoop-aws 2.7.x |  Trivial | fs/s3 | MunShik JOUNG | MunShik JOUNG |
| [HADOOP-15900](https://issues.apache.org/jira/browse/HADOOP-15900) | Update JSch versions in LICENSE.txt |  Major | . | Akira Ajisaka | Akira Ajisaka |
| [HDFS-13999](https://issues.apache.org/jira/browse/HDFS-13999) | Bogus missing block warning if the file is under construction when NN starts |  Major | namenode | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [YARN-6616](https://issues.apache.org/jira/browse/YARN-6616) | YARN AHS shows submitTime for jobs same as startTime |  Minor | . | Prabhu Joseph | Prabhu Joseph |
| [YARN-7266](https://issues.apache.org/jira/browse/YARN-7266) | Timeline Server event handler threads locked |  Major | ATSv2, timelineserver | Venkata Puneet Ravuri | Prabhu Joseph |
| [YARN-2194](https://issues.apache.org/jira/browse/YARN-2194) | Cgroups cease to work in RHEL7 |  Critical | nodemanager | Wei Yan | Wei Yan |
| [YARN-8625](https://issues.apache.org/jira/browse/YARN-8625) | Aggregate Resource Allocation for each job is not present in ATS |  Major | ATSv2 | Prabhu Joseph | Prabhu Joseph |
| [YARN-9855](https://issues.apache.org/jira/browse/YARN-9855) | Fix ApplicationReportProto submitTime id in branch-2.8/branch-2.7 |  Major | . | Jonathan Hung | Jonathan Hung |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-16009](https://issues.apache.org/jira/browse/HADOOP-16009) | Replace the url of the repository in Apache Hadoop source code |  Major | documentation | Akira Ajisaka | Akira Ajisaka |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-16025](https://issues.apache.org/jira/browse/HADOOP-16025) | Update the year to 2019 |  Major | build | Ayush Saxena | Ayush Saxena |
| [HDFS-14912](https://issues.apache.org/jira/browse/HDFS-14912) | Set dfs.image.string-tables.expanded default to false in branch-2.7 |  Major | . | Siyao Meng | Siyao Meng |


