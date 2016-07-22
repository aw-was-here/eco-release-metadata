
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

## Release 2.7.4 - Unreleased (as of 2016-07-22)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-13290](https://issues.apache.org/jira/browse/HADOOP-13290) | Appropriate use of generics in FairCallQueue |  Major | ipc | Konstantin Shvachko | Jonathan Hung |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-3707](https://issues.apache.org/jira/browse/YARN-3707) | RM Web UI queue filter doesn't work |  Blocker | . | Wangda Tan | Wangda Tan |
| [HADOOP-11149](https://issues.apache.org/jira/browse/HADOOP-11149) | Increase the timeout of TestZKFailoverController |  Major | test | Rajat Jain | Steve Loughran |
| [YARN-5197](https://issues.apache.org/jira/browse/YARN-5197) | RM leaks containers if running container disappears from node update |  Major | resourcemanager | Jason Lowe | Jason Lowe |
| [HDFS-10396](https://issues.apache.org/jira/browse/HDFS-10396) | Using -diff option with DistCp may get "Comparison method violates its general contract" exception |  Major | . | Yongjun Zhang | Yongjun Zhang |
| [HADOOP-13362](https://issues.apache.org/jira/browse/HADOOP-13362) | DefaultMetricsSystem leaks the source name when a source unregisters |  Critical | metrics | Jason Lowe | Junping Du |
| [YARN-5353](https://issues.apache.org/jira/browse/YARN-5353) | ResourceManager can leak delegation tokens when they are shared across apps |  Critical | resourcemanager | Jason Lowe | Jason Lowe |
| [HADOOP-11361](https://issues.apache.org/jira/browse/HADOOP-11361) | Fix a race condition in MetricsSourceAdapter.updateJmxCache |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-10544](https://issues.apache.org/jira/browse/HDFS-10544) | Balancer doesn't work with IPFailoverProxyProvider |  Major | balancer & mover, ha | Zhe Zhang | Zhe Zhang |
| [HADOOP-13202](https://issues.apache.org/jira/browse/HADOOP-13202) | Avoid possible overflow in org.apache.hadoop.util.bloom.BloomFilter#getNBytes |  Major | util | zhengbing li | Kai Sasaki |
| [HADOOP-12991](https://issues.apache.org/jira/browse/HADOOP-12991) | Conflicting default ports in DelegateToFileSystem |  Major | fs | Kevin Hogeland | Kai Sasaki |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-5092](https://issues.apache.org/jira/browse/YARN-5092) | TestRMDelegationTokens fails intermittently |  Major | test | Rohith Sharma K S | Jason Lowe |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-4393](https://issues.apache.org/jira/browse/YARN-4393) | TestResourceLocalizationService#testFailedDirsResourceRelease fails intermittently |  Major | test | Varun Saxena | Varun Saxena |
| [HDFS-10653](https://issues.apache.org/jira/browse/HDFS-10653) | Optimize conversion from path string to components |  Major | hdfs | Daryn Sharp | Daryn Sharp |


