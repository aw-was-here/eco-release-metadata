
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
# Apache Flink Changelog

## Release 1.10.3 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-18287](https://issues.apache.org/jira/browse/FLINK-18287) | Correct the documentation of Python Table API in SQL pages |  Major | API / Python, Documentation | Dian Fu | Fin-chan |
| [FLINK-19055](https://issues.apache.org/jira/browse/FLINK-19055) | MemoryManagerSharedResourcesTest contains three tests running extraordinary long |  Major | Runtime / Task | Matthias | Andrey Zagrebin |
| [FLINK-19105](https://issues.apache.org/jira/browse/FLINK-19105) | Table API Sample Code Error |  Major | Documentation | weizheng | zhouyongjin |
| [FLINK-19523](https://issues.apache.org/jira/browse/FLINK-19523) | Hide sensitive command-line configurations |  Major | Runtime / Configuration | Qinghui Xu | Qinghui Xu |
| [FLINK-19252](https://issues.apache.org/jira/browse/FLINK-19252) | Jaas file created under io.tmp.dirs - folder not created if not exists |  Major | Runtime / Coordination | Koala Lam | Yangze Guo |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-18081](https://issues.apache.org/jira/browse/FLINK-18081) | Fix broken links in "Kerberos Authentication Setup and Configuration" doc |  Major | Documentation, Runtime / Configuration | Yangze Guo | Yangze Guo |
| [FLINK-18212](https://issues.apache.org/jira/browse/FLINK-18212) | Init lookup join failed when use udf on lookup table |  Major | Table SQL / Planner | YufeiLiu | Jark Wu |
| [FLINK-14087](https://issues.apache.org/jira/browse/FLINK-14087) | throws java.lang.ArrayIndexOutOfBoundsException  when emiting the data using RebalancePartitioner. |  Major | API / DataStream, Runtime / Network | luojiangyu | Yun Gao |
| [FLINK-18959](https://issues.apache.org/jira/browse/FLINK-18959) | Fail to archiveExecutionGraph because job is not finished when dispatcher close |  Critical | Runtime / Coordination | Liu | Liu |
| [FLINK-18832](https://issues.apache.org/jira/browse/FLINK-18832) | BoundedBlockingSubpartition does not work with StreamTask |  Major | Runtime / Network, Runtime / Task | Till Rohrmann | Zhijiang |
| [FLINK-19135](https://issues.apache.org/jira/browse/FLINK-19135) | (Stream)ExecutionEnvironment.execute() should not throw ExecutionException |  Major | API / DataSet, API / DataStream | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-19109](https://issues.apache.org/jira/browse/FLINK-19109) | Split Reader eats chained periodic watermarks |  Blocker | Runtime / Task | David Anderson | Roman Khachatryan |
| [FLINK-15467](https://issues.apache.org/jira/browse/FLINK-15467) | Should wait for the end of the source thread during the Task cancellation |  Major | Runtime / Task | ming li | Roman Khachatryan |
| [FLINK-17341](https://issues.apache.org/jira/browse/FLINK-17341) | freeSlot in TaskExecutor.closeJobManagerConnection cause ConcurrentModificationException |  Major | Runtime / Coordination | huweihua | Matthias |
| [FLINK-17458](https://issues.apache.org/jira/browse/FLINK-17458) | TaskExecutorSubmissionTest#testFailingScheduleOrUpdateConsumers |  Major | Runtime / Coordination, Tests | Congxian Qiu | Till Rohrmann |
| [FLINK-19022](https://issues.apache.org/jira/browse/FLINK-19022) | AkkaRpcActor failed to start but no exception information |  Critical | Runtime / Coordination | tartarus | tartarus |
| [FLINK-19401](https://issues.apache.org/jira/browse/FLINK-19401) | Job stuck in restart loop due to excessive checkpoint recoveries which block the JobMaster |  Critical | Runtime / Checkpointing | Steven Zhen Wu | Roman Khachatryan |
| [FLINK-19675](https://issues.apache.org/jira/browse/FLINK-19675) | The plan of is incorrect when Calc contains WHERE clause, composite fields access and Python UDF at the same time |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-19557](https://issues.apache.org/jira/browse/FLINK-19557) | Issue retrieving leader after zookeeper session reconnect |  Critical | Runtime / Coordination | Max Mizikar | Till Rohrmann |
| [FLINK-19901](https://issues.apache.org/jira/browse/FLINK-19901) | Unable to exclude metrics variables for the last metrics reporter. |  Major | Runtime / Metrics | Truong Duc Kien | Chesnay Schepler |
| [FLINK-19237](https://issues.apache.org/jira/browse/FLINK-19237) | LeaderChangeClusterComponentsTest.testReelectionOfJobMaster failed with "NoResourceAvailableException: Could not allocate the required slot within slot request timeout" |  Critical | Runtime / Coordination | Dian Fu | Robert Metzger |
| [FLINK-20018](https://issues.apache.org/jira/browse/FLINK-20018) | pipeline.cached-files option cannot escape ':' in path |  Major | Runtime / Configuration | Xuannan Su | Dawid Wysakowicz |
| [FLINK-20076](https://issues.apache.org/jira/browse/FLINK-20076) | DispatcherTest.testOnRemovedJobGraphDoesNotCleanUpHAFiles does not test the desired functionality |  Minor | Runtime / Coordination | Matthias | Matthias |
| [FLINK-20033](https://issues.apache.org/jira/browse/FLINK-20033) | Job fails when stopping JobMaster |  Critical | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-20065](https://issues.apache.org/jira/browse/FLINK-20065) | UnalignedCheckpointCompatibilityITCase.test failed with AskTimeoutException |  Blocker | Runtime / Coordination | Dian Fu | Till Rohrmann |


