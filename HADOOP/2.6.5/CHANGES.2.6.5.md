
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

## Release 2.6.5 - Unreleased (as of 2016-08-25)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-4785](https://issues.apache.org/jira/browse/YARN-4785) | inconsistent value type of the "type" field for LeafQueueInfo in response of RM REST API - cluster/scheduler |  Major | webapp | Jayesh | Varun Vasudev |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-2580](https://issues.apache.org/jira/browse/HDFS-2580) | NameNode#main(...) can make use of GenericOptionsParser. |  Minor | namenode | Harsh J | Harsh J |
| [HDFS-9629](https://issues.apache.org/jira/browse/HDFS-9629) | Update the footer of Web UI to show year 2016 |  Major | . | Xiao Chen | Xiao Chen |
| [HADOOP-12805](https://issues.apache.org/jira/browse/HADOOP-12805) | Annotate CanUnbuffer with @InterfaceAudience.Public |  Major | . | Ted Yu | Ted Yu |
| [YARN-4690](https://issues.apache.org/jira/browse/YARN-4690) | Skip object allocation in FSAppAttempt#getResourceUsage when possible |  Major | . | Ming Ma | Ming Ma |
| [HADOOP-12800](https://issues.apache.org/jira/browse/HADOOP-12800) | Copy docker directory from 2.8 to 2.7/2.6 repos to enable pre-commit Jenkins runs |  Major | build, yetus | Zhe Zhang | Zhe Zhang |
| [MAPREDUCE-6622](https://issues.apache.org/jira/browse/MAPREDUCE-6622) | Add capability to set JHS job cache to a task-based limit |  Critical | jobhistoryserver | Ray Chiang | Ray Chiang |
| [HADOOP-12789](https://issues.apache.org/jira/browse/HADOOP-12789) | log classpath of ApplicationClassLoader at INFO level |  Minor | util | Sangjin Lee | Sangjin Lee |
| [HDFS-10264](https://issues.apache.org/jira/browse/HDFS-10264) | Logging improvements in FSImageFormatProtobuf.Saver |  Major | namenode | Konstantin Shvachko | Xiaobing Zhou |
| [HDFS-10377](https://issues.apache.org/jira/browse/HDFS-10377) | CacheReplicationMonitor shutdown log message should use INFO level. |  Major | logging, namenode | Konstantin Shvachko | Yiqun Lin |
| [HADOOP-13290](https://issues.apache.org/jira/browse/HADOOP-13290) | Appropriate use of generics in FairCallQueue |  Major | ipc | Konstantin Shvachko | Jonathan Hung |
| [HADOOP-13298](https://issues.apache.org/jira/browse/HADOOP-13298) | Fix the leftover L&N files in hadoop-build-tools/src/main/resources/META-INF/ |  Minor | . | Xiao Chen | Tsuyoshi Ozawa |
| [YARN-5483](https://issues.apache.org/jira/browse/YARN-5483) | Optimize RMAppAttempt#pullJustFinishedContainers |  Major | . | sandflee | sandflee |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-7258](https://issues.apache.org/jira/browse/HDFS-7258) | CacheReplicationMonitor rescan schedule log should use DEBUG level instead of INFO level |  Minor | namenode | Xiaoyu Yao | Xiaoyu Yao |
| [HADOOP-7817](https://issues.apache.org/jira/browse/HADOOP-7817) | RawLocalFileSystem.append() should give FSDataOutputStream with accurate .getPos() |  Major | fs | Kristofer Tomasette | Kanaka Kumar Avvaru |
| [MAPREDUCE-6413](https://issues.apache.org/jira/browse/MAPREDUCE-6413) | TestLocalJobSubmission is failing with unknown host |  Major | test | Jason Lowe | zhihai xu |
| [HDFS-8581](https://issues.apache.org/jira/browse/HDFS-8581) | ContentSummary on / skips further counts on yielding lock |  Minor | namenode | tongshiquan | J.Andreina |
| [MAPREDUCE-6302](https://issues.apache.org/jira/browse/MAPREDUCE-6302) | Preempt reducers after a configurable timeout irrespective of headroom |  Critical | . | mai shurong | Karthik Kambatla |
| [HDFS-9347](https://issues.apache.org/jira/browse/HDFS-9347) | Invariant assumption in TestQuorumJournalManager.shutdown() is wrong |  Major | test | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HADOOP-12559](https://issues.apache.org/jira/browse/HADOOP-12559) | KMS connection failures should trigger TGT renewal |  Major | security | Zhe Zhang | Zhe Zhang |
| [HADOOP-12682](https://issues.apache.org/jira/browse/HADOOP-12682) | Fix TestKMS#testKMSRestart\* failure |  Major | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HADOOP-12773](https://issues.apache.org/jira/browse/HADOOP-12773) | HBase classes fail to load with client/job classloader enabled |  Major | util | Sangjin Lee | Sangjin Lee |
| [HDFS-9752](https://issues.apache.org/jira/browse/HDFS-9752) | Permanent write failures may happen to slow writers during datanode rolling upgrades |  Critical | . | Kihwal Lee | Walter Su |
| [HADOOP-12589](https://issues.apache.org/jira/browse/HADOOP-12589) | Fix intermittent test failure of TestCopyPreserveFlag |  Major | test | Tsuyoshi Ozawa | Masatake Iwasaki |
| [MAPREDUCE-6635](https://issues.apache.org/jira/browse/MAPREDUCE-6635) | Unsafe long to int conversion in UncompressedSplitLineReader and IndexOutOfBoundsException |  Critical | . | Sergey Shelukhin | Junping Du |
| [YARN-2046](https://issues.apache.org/jira/browse/YARN-2046) | Out of band heartbeats are sent only on container kill and possibly too early |  Major | nodemanager | Jason Lowe | Ming Ma |
| [YARN-4722](https://issues.apache.org/jira/browse/YARN-4722) | AsyncDispatcher logs redundant event queue sizes |  Major | . | Jason Lowe | Jason Lowe |
| [YARN-4761](https://issues.apache.org/jira/browse/YARN-4761) | NMs reconnecting with changed capabilities can lead to wrong cluster resource calculations on fair scheduler |  Major | fairscheduler | Sangjin Lee | Sangjin Lee |
| [MAPREDUCE-6656](https://issues.apache.org/jira/browse/MAPREDUCE-6656) | [NNBench] OP\_DELETE operation isn't working after MAPREDUCE-6363 |  Blocker | . | J.Andreina | J.Andreina |
| [HADOOP-12958](https://issues.apache.org/jira/browse/HADOOP-12958) | PhantomReference for filesystem statistics can trigger OOM |  Major | . | Jason Lowe | Sangjin Lee |
| [HDFS-10182](https://issues.apache.org/jira/browse/HDFS-10182) | Hedged read might overwrite user's buf |  Major | . | zhouyingchao | zhouyingchao |
| [YARN-4773](https://issues.apache.org/jira/browse/YARN-4773) | Log aggregation performs extraneous filesystem operations when rolling log aggregation is disabled |  Minor | nodemanager | Jason Lowe | Jun Gong |
| [HDFS-10271](https://issues.apache.org/jira/browse/HDFS-10271) | Extra bytes are getting released from reservedSpace for append |  Critical | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-13042](https://issues.apache.org/jira/browse/HADOOP-13042) | Restore lost leveldbjni LICENSE and NOTICE changes |  Major | . | Andrew Wang | Andrew Wang |
| [HADOOP-13043](https://issues.apache.org/jira/browse/HADOOP-13043) | Add LICENSE.txt entries for bundled javascript dependencies |  Major | . | Andrew Wang | Andrew Wang |
| [MAPREDUCE-6514](https://issues.apache.org/jira/browse/MAPREDUCE-6514) | Job hangs as ask is not updated after ramping down of all reducers |  Blocker | applicationmaster | Varun Saxena | Varun Saxena |
| [MAPREDUCE-6689](https://issues.apache.org/jira/browse/MAPREDUCE-6689) | MapReduce job can infinitely increase number of reducer resource requests |  Blocker | . | Wangda Tan | Wangda Tan |
| [MAPREDUCE-6558](https://issues.apache.org/jira/browse/MAPREDUCE-6558) | multibyte delimiters with compressed input files generate duplicate records |  Major | mrv1, mrv2 | Wilfred Spiegelenburg | Wilfred Spiegelenburg |
| [YARN-4459](https://issues.apache.org/jira/browse/YARN-4459) | container-executor should only kill process groups |  Major | nodemanager | Jun Gong | Jun Gong |
| [HDFS-10458](https://issues.apache.org/jira/browse/HDFS-10458) | getFileEncryptionInfo should return quickly for non-encrypted cluster |  Major | encryption, namenode | Zhe Zhang | Zhe Zhang |
| [YARN-5206](https://issues.apache.org/jira/browse/YARN-5206) | RegistrySecurity includes id:pass in exception text if considered invalid |  Minor | client, security | Steve Loughran | Steve Loughran |
| [HADOOP-13189](https://issues.apache.org/jira/browse/HADOOP-13189) | FairCallQueue makes callQueue larger than the configured capacity. |  Major | ipc | Konstantin Shvachko | Vinitha Reddy Gankidi |
| [HADOOP-13255](https://issues.apache.org/jira/browse/HADOOP-13255) | KMSClientProvider should check and renew tgt when doing delegation token operations. |  Major | kms | Xiao Chen | Xiao Chen |
| [YARN-5197](https://issues.apache.org/jira/browse/YARN-5197) | RM leaks containers if running container disappears from node update |  Major | resourcemanager | Jason Lowe | Jason Lowe |
| [YARN-5262](https://issues.apache.org/jira/browse/YARN-5262) | Optimize sending RMNodeFinishedContainersPulledByAMEvent for every AM heartbeat |  Major | resourcemanager | Rohith Sharma K S | Rohith Sharma K S |
| [HADOOP-13350](https://issues.apache.org/jira/browse/HADOOP-13350) | Additional fix to LICENSE and NOTICE |  Blocker | build | Xiao Chen | Xiao Chen |
| [HADOOP-12893](https://issues.apache.org/jira/browse/HADOOP-12893) | Verify LICENSE.txt and NOTICE.txt |  Blocker | build | Allen Wittenauer | Xiao Chen |
| [HADOOP-13297](https://issues.apache.org/jira/browse/HADOOP-13297) | Add missing dependency in setting maven-remote-resource-plugin to fix builds |  Major | build | Akira Ajisaka | Sean Busbey |
| [YARN-5353](https://issues.apache.org/jira/browse/YARN-5353) | ResourceManager can leak delegation tokens when they are shared across apps |  Critical | resourcemanager | Jason Lowe | Jason Lowe |
| [HDFS-10544](https://issues.apache.org/jira/browse/HDFS-10544) | Balancer doesn't work with IPFailoverProxyProvider |  Major | balancer & mover, ha | Zhe Zhang | Zhe Zhang |
| [YARN-5462](https://issues.apache.org/jira/browse/YARN-5462) | TestNodeStatusUpdater.testNodeStatusUpdaterRetryAndNMShutdown fails intermittently |  Major | . | Eric Badger | Eric Badger |
| [HADOOP-13494](https://issues.apache.org/jira/browse/HADOOP-13494) | ReconfigurableBase can log sensitive information |  Major | security | Sean Mackrory | Sean Mackrory |
| [HDFS-9530](https://issues.apache.org/jira/browse/HDFS-9530) | ReservedSpace is not cleared for abandoned Blocks |  Critical | datanode | Fei Hui | Brahma Reddy Battula |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-6191](https://issues.apache.org/jira/browse/MAPREDUCE-6191) | TestJavaSerialization fails with getting incorrect MR job result |  Minor | test | sam liu | sam liu |
| [HDFS-9688](https://issues.apache.org/jira/browse/HDFS-9688) | Test the effect of nested encryption zones in HDFS downgrade |  Major | encryption, test | Zhe Zhang | Zhe Zhang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-4393](https://issues.apache.org/jira/browse/YARN-4393) | TestResourceLocalizationService#testFailedDirsResourceRelease fails intermittently |  Major | test | Varun Saxena | Varun Saxena |
| [YARN-4573](https://issues.apache.org/jira/browse/YARN-4573) | TestRMAppTransitions.testAppRunningKill and testAppKilledKilled fail on trunk |  Major | resourcemanager, test | Takashi Ohnishi | Takashi Ohnishi |
| [HDFS-10653](https://issues.apache.org/jira/browse/HDFS-10653) | Optimize conversion from path string to components |  Major | hdfs | Daryn Sharp | Daryn Sharp |


