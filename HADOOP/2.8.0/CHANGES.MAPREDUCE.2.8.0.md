
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
# Hadoop Changelog

## Release 2.8.0 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-6364](https://issues.apache.org/jira/browse/MAPREDUCE-6364) | Add a "Kill" link to Task Attempts page |  Minor | applicationmaster | Ryu Kobayashi | Ryu Kobayashi |
| [MAPREDUCE-6304](https://issues.apache.org/jira/browse/MAPREDUCE-6304) | Specifying node labels when submitting MR jobs |  Major | . | Jian Fang | Naganarasimha G R |
| [MAPREDUCE-6284](https://issues.apache.org/jira/browse/MAPREDUCE-6284) | Add Task Attempt State API to MapReduce Application Master REST API |  Minor | . | Ryu Kobayashi | Ryu Kobayashi |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-6383](https://issues.apache.org/jira/browse/MAPREDUCE-6383) | Pi job (QuasiMonteCarlo) should not try to read the results file if its job fails |  Major | examples | Harsh J | Harsh J |
| [MAPREDUCE-6354](https://issues.apache.org/jira/browse/MAPREDUCE-6354) | ShuffleHandler should be able to log shuffle connections |  Major | . | Chang Li | Chang Li |
| [MAPREDUCE-6307](https://issues.apache.org/jira/browse/MAPREDUCE-6307) | Remove property mapreduce.tasktracker.taskmemorymanager.monitoringinterval |  Minor | . | Akira AJISAKA | J.Andreina |
| [MAPREDUCE-6297](https://issues.apache.org/jira/browse/MAPREDUCE-6297) | Task Id of the failed task in diagnostics should link to the task page |  Minor | jobhistoryserver | Siqi Li | Siqi Li |
| [MAPREDUCE-6291](https://issues.apache.org/jira/browse/MAPREDUCE-6291) | Correct mapred queue usage command |  Minor | client | Brahma Reddy Battula | Brahma Reddy Battula |
| [MAPREDUCE-6287](https://issues.apache.org/jira/browse/MAPREDUCE-6287) | Deprecated methods in org.apache.hadoop.examples.Sort |  Minor | examples | Chao Zhang | Chao Zhang |
| [MAPREDUCE-6282](https://issues.apache.org/jira/browse/MAPREDUCE-6282) | Reuse historyFileAbsolute.getFileSystem in CompletedJob#loadFullHistoryData for code optimization. |  Trivial | jobhistoryserver | zhihai xu | zhihai xu |
| [MAPREDUCE-6279](https://issues.apache.org/jira/browse/MAPREDUCE-6279) | AM should explicity exit JVM after all services have stopped |  Major | . | Jason Lowe | Eric Payne |
| [MAPREDUCE-6239](https://issues.apache.org/jira/browse/MAPREDUCE-6239) | Consolidate TestJobConf classes in hadoop-mapreduce-client-jobclient and hadoop-mapreduce-client-core |  Minor | client | Varun Saxena | Varun Saxena |
| [MAPREDUCE-6192](https://issues.apache.org/jira/browse/MAPREDUCE-6192) | Create unit test to automatically compare MR related classes and mapred-default.xml |  Minor | . | Ray Chiang | Ray Chiang |
| [MAPREDUCE-6174](https://issues.apache.org/jira/browse/MAPREDUCE-6174) | Combine common stream code into parent class for InMemoryMapOutput and OnDiskMapOutput. |  Major | mrv2 | Eric Payne | Eric Payne |
| [MAPREDUCE-6105](https://issues.apache.org/jira/browse/MAPREDUCE-6105) | Inconsistent configuration in property mapreduce.reduce.shuffle.merge.percent |  Trivial | . | Dongwook Kwon | Ray Chiang |
| [MAPREDUCE-6100](https://issues.apache.org/jira/browse/MAPREDUCE-6100) | replace "mapreduce.job.credentials.binary" with MRJobConfig.MAPREDUCE\_JOB\_CREDENTIALS\_BINARY for better readability. |  Trivial | mrv2 | zhihai xu | zhihai xu |
| [MAPREDUCE-6079](https://issues.apache.org/jira/browse/MAPREDUCE-6079) | Rename JobImpl#username to reporterUserName |  Major | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [MAPREDUCE-5981](https://issues.apache.org/jira/browse/MAPREDUCE-5981) | Log levels of certain MR logs can be changed to DEBUG |  Major | . | Varun Saxena | Varun Saxena |
| [MAPREDUCE-5755](https://issues.apache.org/jira/browse/MAPREDUCE-5755) | MapTask.MapOutputBuffer#compare/swap should have @Override annotation |  Trivial | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [MAPREDUCE-5465](https://issues.apache.org/jira/browse/MAPREDUCE-5465) | Tasks are often killed before they exit on their own |  Major | mr-am, mrv2 | Radim Kolar | Ming Ma |
| [MAPREDUCE-5248](https://issues.apache.org/jira/browse/MAPREDUCE-5248) | Let NNBenchWithoutMR specify the replication factor for its test |  Minor | client, test | Erik Paulson | Erik Paulson |
| [MAPREDUCE-5232](https://issues.apache.org/jira/browse/MAPREDUCE-5232) | log classpath and other key properties on child JVM start |  Major | mrv1, mrv2 | Sangjin Lee | Sangjin Lee |
| [MAPREDUCE-5190](https://issues.apache.org/jira/browse/MAPREDUCE-5190) | Unnecessary condition test in RandomSampler |  Minor | mrv2 | Jingguo Yao | Jingguo Yao |
| [MAPREDUCE-4653](https://issues.apache.org/jira/browse/MAPREDUCE-4653) | TestRandomAlgorithm has an unused "import" statement |  Trivial | contrib/gridmix | Amir Sanjar | Amir Sanjar |
| [MAPREDUCE-4414](https://issues.apache.org/jira/browse/MAPREDUCE-4414) | Add main methods to JobConf and YarnConfiguration, for debug purposes |  Major | client | Harsh J | Plamen Jeliazkov |
| [MAPREDUCE-579](https://issues.apache.org/jira/browse/MAPREDUCE-579) | Streaming "slowmatch" documentation |  Trivial | contrib/streaming | Bo Adler | Harsh J |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-6382](https://issues.apache.org/jira/browse/MAPREDUCE-6382) | Don't escape HTML links in Diagnostics in JHS job overview |  Major | . | Siqi Li | Siqi Li |
| [MAPREDUCE-6377](https://issues.apache.org/jira/browse/MAPREDUCE-6377) | JHS sorting on state column not working in webUi |  Minor | jobhistoryserver | Bibin A Chundatt | zhihai xu |
| [MAPREDUCE-6374](https://issues.apache.org/jira/browse/MAPREDUCE-6374) | Distributed Cache File visibility should check permission of full path |  Major | . | Chang Li | Chang Li |
| [MAPREDUCE-6366](https://issues.apache.org/jira/browse/MAPREDUCE-6366) | mapreduce.terasort.final.sync configuration in TeraSort  doesn't work |  Trivial | examples | Takuya Fukudome | Takuya Fukudome |
| [MAPREDUCE-6360](https://issues.apache.org/jira/browse/MAPREDUCE-6360) | TestMapreduceConfigFields is placed in wrong dir, introducing compile error |  Major | . | Vinayakumar B | Arshad Mohammad |
| [MAPREDUCE-6359](https://issues.apache.org/jira/browse/MAPREDUCE-6359) | RM HA setup, "Cluster" tab links populated with AM hostname instead of RM |  Minor | . | Aroop Maliakkal | zhaoyunjiong |
| [MAPREDUCE-6356](https://issues.apache.org/jira/browse/MAPREDUCE-6356) | Misspelling of threshold in log4j.properties for tests |  Minor | test | Brahma Reddy Battula | Brahma Reddy Battula |
| [MAPREDUCE-6353](https://issues.apache.org/jira/browse/MAPREDUCE-6353) | Divide by zero error in MR AM when calculating available containers |  Major | mr-am | Anubhav Dhoot | Anubhav Dhoot |
| [MAPREDUCE-6349](https://issues.apache.org/jira/browse/MAPREDUCE-6349) | Fix typo in property org.apache.hadoop.mapreduce.lib.chain.Chain.REDUCER\_INPUT\_VALUE\_CLASS |  Minor | . | Ray Chiang | Ray Chiang |
| [MAPREDUCE-6345](https://issues.apache.org/jira/browse/MAPREDUCE-6345) | Documentation fix for when CRLA is enabled for MRAppMaster logs |  Trivial | documentation | Rohit Agarwal | Rohit Agarwal |
| [MAPREDUCE-6342](https://issues.apache.org/jira/browse/MAPREDUCE-6342) | Make POM project names consistent |  Minor | build | Rohith | Rohith |
| [MAPREDUCE-6333](https://issues.apache.org/jira/browse/MAPREDUCE-6333) | TestEvents,TestAMWebServicesTasks,TestAppController are broken due to MAPREDUCE-6297 |  Major | . | Siqi Li | Siqi Li |
| [MAPREDUCE-6330](https://issues.apache.org/jira/browse/MAPREDUCE-6330) | Fix typo in Task Attempt API's URL in documentations |  Minor | documentation | Ryu Kobayashi | Ryu Kobayashi |
| [MAPREDUCE-6314](https://issues.apache.org/jira/browse/MAPREDUCE-6314) | TestPipeApplication fails on trunk |  Major | test | Varun Vasudev | Varun Vasudev |
| [MAPREDUCE-6300](https://issues.apache.org/jira/browse/MAPREDUCE-6300) | Task list sort by task id broken |  Minor | . | Siqi Li | Siqi Li |
| [MAPREDUCE-6294](https://issues.apache.org/jira/browse/MAPREDUCE-6294) | Remove an extra parameter described in Javadoc of TockenCache |  Trivial | . | Chen He | Brahma Reddy Battula |
| [MAPREDUCE-6293](https://issues.apache.org/jira/browse/MAPREDUCE-6293) | Set job classloader on uber-job's LocalContainerLauncher event thread |  Major | mr-am | Sangjin Lee | Sangjin Lee |
| [MAPREDUCE-6286](https://issues.apache.org/jira/browse/MAPREDUCE-6286) | A typo in HistoryViewer makes some code useless, which causes counter limits are not reset correctly. |  Major | client | zhihai xu | zhihai xu |
| [MAPREDUCE-6281](https://issues.apache.org/jira/browse/MAPREDUCE-6281) | Fix javadoc in Terasort |  Trivial | . | Albert Chu | Albert Chu |
| [MAPREDUCE-6273](https://issues.apache.org/jira/browse/MAPREDUCE-6273) | HistoryFileManager should check whether summaryFile exists to avoid FileNotFoundException causing HistoryFileInfo into MOVE\_FAILED state |  Minor | jobhistoryserver | zhihai xu | zhihai xu |
| [MAPREDUCE-6266](https://issues.apache.org/jira/browse/MAPREDUCE-6266) | Job#getTrackingURL should consistently return a proper URL |  Minor | . | Ray Chiang | Ray Chiang |
| [MAPREDUCE-6252](https://issues.apache.org/jira/browse/MAPREDUCE-6252) | JobHistoryServer should not fail when encountering a missing directory |  Major | jobhistoryserver | Craig Welch | Craig Welch |
| [MAPREDUCE-6242](https://issues.apache.org/jira/browse/MAPREDUCE-6242) | Progress report log is incredibly excessive in application master |  Major | applicationmaster | Jian Fang | Varun Saxena |
| [MAPREDUCE-6213](https://issues.apache.org/jira/browse/MAPREDUCE-6213) | NullPointerException caused by job history server addr not resolvable |  Minor | applicationmaster | Peng Zhang | Peng Zhang |
| [MAPREDUCE-6199](https://issues.apache.org/jira/browse/MAPREDUCE-6199) | AbstractCounters are not reset completely on deserialization |  Major | . | Anubhav Dhoot | Anubhav Dhoot |
| [MAPREDUCE-6165](https://issues.apache.org/jira/browse/MAPREDUCE-6165) | [JDK8] TestCombineFileInputFormat failed on JDK8 |  Minor | . | Wei Yan | Akira AJISAKA |
| [MAPREDUCE-5965](https://issues.apache.org/jira/browse/MAPREDUCE-5965) | Hadoop streaming throws error if list of input files is high. Error is: "error=7, Argument list too long at if number of input file is high" |  Major | . | Arup Malakar | Wilfred Spiegelenburg |
| [MAPREDUCE-5905](https://issues.apache.org/jira/browse/MAPREDUCE-5905) | CountersStrings.toEscapedCompactStrings outputs unnecessary "null" strings |  Minor | . | Akira AJISAKA | Akira AJISAKA |
| [MAPREDUCE-5875](https://issues.apache.org/jira/browse/MAPREDUCE-5875) | Make Counter limits consistent across JobClient, MRAppMaster, and YarnChild |  Major | applicationmaster, client, task | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-5807](https://issues.apache.org/jira/browse/MAPREDUCE-5807) | Print usage for TeraSort job. |  Trivial | examples | Rohith | Rohith |
| [MAPREDUCE-5708](https://issues.apache.org/jira/browse/MAPREDUCE-5708) | Duplicate String.format in YarnOutputFiles.getSpillFileForWrite |  Minor | . | Konstantin Weitz | Konstantin Weitz |
| [MAPREDUCE-5649](https://issues.apache.org/jira/browse/MAPREDUCE-5649) | Reduce cannot use more than 2G memory  for the final merge |  Major | mrv2 | stanley shi | Gera Shegalov |
| [MAPREDUCE-5448](https://issues.apache.org/jira/browse/MAPREDUCE-5448) | MapFileOutputFormat#getReaders bug with invisible files/folders |  Minor | mrv2 | Maysam Yabandeh | Maysam Yabandeh |
| [MAPREDUCE-4844](https://issues.apache.org/jira/browse/MAPREDUCE-4844) | Counters / AbstractCounters have constant references not declared final |  Major | . | Gera Shegalov | Brahma Reddy Battula |
| [MAPREDUCE-3383](https://issues.apache.org/jira/browse/MAPREDUCE-3383) | Duplicate job.getOutputValueGroupingComparator() in ReduceTask |  Major | . | Binglin Chang | Binglin Chang |
| [MAPREDUCE-2094](https://issues.apache.org/jira/browse/MAPREDUCE-2094) | LineRecordReader should not seek into non-splittable, compressed streams. |  Major | task | Niels Basjes | Niels Basjes |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-6204](https://issues.apache.org/jira/browse/MAPREDUCE-6204) | TestJobCounters should use new properties instead of JobConf.MAPRED\_TASK\_JAVA\_OPTS |  Minor | test | sam liu | sam liu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


