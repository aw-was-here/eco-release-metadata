
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
# Changelog

## Release 0.14.0 - 2014-11-20

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4047](https://issues.apache.org/jira/browse/PIG-4047) | Break up pig withouthadoop and fat jar |  Major | build | fang fang chen | fang fang chen |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4141](https://issues.apache.org/jira/browse/PIG-4141) | Ship UDF/LoadFunc/StoreFunc dependent jar automatically |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4128](https://issues.apache.org/jira/browse/PIG-4128) | New logical optimizer rule: ConstantCalculator |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4008](https://issues.apache.org/jira/browse/PIG-4008) | Pig code change to enable Tez Local mode |  Major | tez | Chen He | Chen He |
| [PIG-3970](https://issues.apache.org/jira/browse/PIG-3970) | Merge Tez branch into trunk |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-3939](https://issues.apache.org/jira/browse/PIG-3939) | SPRINTF function to format strings using a printf-style template |  Major | impl, internal-udfs | Philip (flip) Kromer | Philip (flip) Kromer |
| [PIG-3446](https://issues.apache.org/jira/browse/PIG-3446) | Umbrella jira for Pig on Tez |  Major | tez | Cheolsoo Park | Cheolsoo Park |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4328](https://issues.apache.org/jira/browse/PIG-4328) | Upgrade Hive to 0.14 |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-4321](https://issues.apache.org/jira/browse/PIG-4321) | Documentation for 0.14 |  Major | documentation | Daniel Dai | Daniel Dai |
| [PIG-4318](https://issues.apache.org/jira/browse/PIG-4318) | Make PigConfiguration naming consistent |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4253](https://issues.apache.org/jira/browse/PIG-4253) | Add a UniqueID UDF |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-4246](https://issues.apache.org/jira/browse/PIG-4246) | HBaseStorage should implement getShipFiles |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4160](https://issues.apache.org/jira/browse/PIG-4160) | Provide a way to pass local jars in pig.additional.jars when using a remote url for a script |  Major | impl | Andrew C. Oliver | Andrew C. Oliver |
| [PIG-4136](https://issues.apache.org/jira/browse/PIG-4136) | No special handling jythonjar/jrubyjar in e2e tests after PIG-4047 |  Major | e2e harness | Daniel Dai | Daniel Dai |
| [PIG-4124](https://issues.apache.org/jira/browse/PIG-4124) | Command for Python streaming udf should be configurable |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-4119](https://issues.apache.org/jira/browse/PIG-4119) | Add message at end of each testcase with timestamp in Pig system tests |  Trivial | . | Namit Maheshwari | Namit Maheshwari |
| [PIG-4080](https://issues.apache.org/jira/browse/PIG-4080) | Add Preprocessor commands and more to the black/whitelisting feature |  Major | . | Prashant Kommireddi | Prashant Kommireddi |
| [PIG-4077](https://issues.apache.org/jira/browse/PIG-4077) | Some fixes and e2e test for OrcStorage |  Major | . | Rohini Palaniswamy | Mona Chitnis |
| [PIG-4062](https://issues.apache.org/jira/browse/PIG-4062) | Add ascending order option to builtin TOP function |  Minor | . | Ritesh Agrawal | Ritesh Agrawal |
| [PIG-4054](https://issues.apache.org/jira/browse/PIG-4054) | Do not create job.jar when submitting job |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4025](https://issues.apache.org/jira/browse/PIG-4025) | TestLoadFuncWrapper, TestLoadFuncMetaDataWrapper,TestStoreFuncWrapper and TestStoreFuncMetadataWrapper fail on IBM JDK |  Major | . | Anup Ahire | Anup Ahire |
| [PIG-4024](https://issues.apache.org/jira/browse/PIG-4024) | TestPigStreamingUDF and TestPigStreaming fail on IBM JDK. |  Major | . | Anup Ahire | Anup Ahire |
| [PIG-4015](https://issues.apache.org/jira/browse/PIG-4015) | Provide a way to disable auto-parallism in tez |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-3986](https://issues.apache.org/jira/browse/PIG-3986) | PigSplit to support multiple split class |  Major | . | Tongjie Chen | Tongjie Chen |
| [PIG-3979](https://issues.apache.org/jira/browse/PIG-3979) | group all performance, garbage collection, and incremental aggregation |  Major | impl | David Dreyfus | Rohini Palaniswamy |
| [PIG-3558](https://issues.apache.org/jira/browse/PIG-3558) | ORC support for Pig |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-3456](https://issues.apache.org/jira/browse/PIG-3456) | Reduce threadlocal conf access in backend for each record |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-2834](https://issues.apache.org/jira/browse/PIG-2834) | MultiStorage requires unused constructor argument |  Trivial | data | Danny Antonetti | Danny Antonetti |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4492](https://issues.apache.org/jira/browse/PIG-4492) | Hbase-storage-handler not found |  Trivial | . | Jesus Camacho Salazar |  |
| [PIG-4335](https://issues.apache.org/jira/browse/PIG-4335) | Pig release tarball miss tez classes |  Major | build | Daniel Dai | Daniel Dai |
| [PIG-4325](https://issues.apache.org/jira/browse/PIG-4325) | StackOverflow when spilling InternalCachedBag |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4324](https://issues.apache.org/jira/browse/PIG-4324) | Remove jsch-LICENSE.txt |  Major | documentation | Daniel Dai | Daniel Dai |
| [PIG-4314](https://issues.apache.org/jira/browse/PIG-4314) | BigData\_5 hang on some machine |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4312](https://issues.apache.org/jira/browse/PIG-4312) | TestStreamingUDF tez mode leave orphan process on Windows |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4299](https://issues.apache.org/jira/browse/PIG-4299) | SpillableMemoryManager assumes tenured heap incorrectly |  Major | . | Prashant Kommireddi | Prashant Kommireddi |
| [PIG-4298](https://issues.apache.org/jira/browse/PIG-4298) | Descending order-by is broken in some cases when key is bytearrays |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-4267](https://issues.apache.org/jira/browse/PIG-4267) | ToDate has incorrect timezone offsets |  Major | . | Brian Johnson | Brian Johnson |
| [PIG-4261](https://issues.apache.org/jira/browse/PIG-4261) | Skip shipping local resources in tez local mode |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4258](https://issues.apache.org/jira/browse/PIG-4258) | Fix several e2e tests on Windows |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4257](https://issues.apache.org/jira/browse/PIG-4257) | Fix several e2e tests on secure cluster |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4256](https://issues.apache.org/jira/browse/PIG-4256) | Fix StreamingPythonUDFs e2e test failure on Windows |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4252](https://issues.apache.org/jira/browse/PIG-4252) | Tez container reuse fail when using script udf |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4250](https://issues.apache.org/jira/browse/PIG-4250) | Fix Security Risks found by Coverity |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4241](https://issues.apache.org/jira/browse/PIG-4241) | Auto local mode mistakenly converts large jobs to local mode when using with Hive tables |  Major | impl | Cheolsoo Park | Cheolsoo Park |
| [PIG-4238](https://issues.apache.org/jira/browse/PIG-4238) | Property 'pig.job.converted.fetch' should be unset when fetch finishes |  Major | . | Lorand Bendig | Lorand Bendig |
| [PIG-4235](https://issues.apache.org/jira/browse/PIG-4235) | Fix unit test failures on Windows |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4230](https://issues.apache.org/jira/browse/PIG-4230) | Documentation fix: first nested foreach example is incomplete |  Trivial | documentation | Lorand Bendig | Lorand Bendig |
| [PIG-4227](https://issues.apache.org/jira/browse/PIG-4227) | Streaming Python UDF handles bag outputs incorrectly |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-4226](https://issues.apache.org/jira/browse/PIG-4226) | Upgrade Tez to 0.5.1 |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4224](https://issues.apache.org/jira/browse/PIG-4224) | Upload Tez payload history string to timeline server |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4220](https://issues.apache.org/jira/browse/PIG-4220) | MapReduce-based Rank failing with NPE due to missing Counters |  Major | . | Koji Noguchi | Koji Noguchi |
| [PIG-4219](https://issues.apache.org/jira/browse/PIG-4219) | When parsing a schema, pig drops tuple inside of Bag if it contains only one field |  Major | . | Julien Le Dem | Lorand Bendig |
| [PIG-4218](https://issues.apache.org/jira/browse/PIG-4218) | Pig OrcStorage fail to load a map with null key |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4217](https://issues.apache.org/jira/browse/PIG-4217) | Fix documentation in BuildBloom |  Major | . | Praveen Rachabattuni | Praveen Rachabattuni |
| [PIG-4215](https://issues.apache.org/jira/browse/PIG-4215) | Fix unit test failure TestParamSubPreproc and TestMacroExpansion |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4214](https://issues.apache.org/jira/browse/PIG-4214) | Fix unit test fail TestMRJobStats |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4212](https://issues.apache.org/jira/browse/PIG-4212) | Allow LIMIT of 0 for variableLimit (constant 0 is already allowed) |  Trivial | . | Koji Noguchi | Koji Noguchi |
| [PIG-4205](https://issues.apache.org/jira/browse/PIG-4205) | e2e test property-check does not check all prerequisites |  Major | . | liyunzhang\_intel | liyunzhang\_intel |
| [PIG-4201](https://issues.apache.org/jira/browse/PIG-4201) | Native e2e tests fail when run against old version of pig |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4197](https://issues.apache.org/jira/browse/PIG-4197) | Fix typo in Job Stats header: MinMapTIme =\> MinMapTime |  Trivial | . | Joshua Martell | Joshua Martell |
| [PIG-4196](https://issues.apache.org/jira/browse/PIG-4196) | Auto ship udf jar is broken |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4195](https://issues.apache.org/jira/browse/PIG-4195) | Support loading char/varchar data in OrcStorage |  Major | internal-udfs | Daniel Dai | Daniel Dai |
| [PIG-4194](https://issues.apache.org/jira/browse/PIG-4194) | ReadToEndLoader does not call setConf on pigSplit in initializeReader |  Trivial | impl | Shad Sharma | Shad Sharma |
| [PIG-4187](https://issues.apache.org/jira/browse/PIG-4187) | Fix Orc e2e tests |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4186](https://issues.apache.org/jira/browse/PIG-4186) | Fix e2e run against new build of pig and some enhancements |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4184](https://issues.apache.org/jira/browse/PIG-4184) | UDF backward compatibility issue after POStatus.STATUS\_NULL refactory |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4182](https://issues.apache.org/jira/browse/PIG-4182) | e2e tests Scripting\_[1-12] fail on Windows |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4181](https://issues.apache.org/jira/browse/PIG-4181) | Cannot launch tez e2e test on Windows |  Major | e2e harness | Daniel Dai | Daniel Dai |
| [PIG-4180](https://issues.apache.org/jira/browse/PIG-4180) | e2e test Native\_3 fail on Hadoop 2 |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4178](https://issues.apache.org/jira/browse/PIG-4178) | HCatDDL\_[1-3] fail on Windows |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4177](https://issues.apache.org/jira/browse/PIG-4177) | BigData\_1 fail after PIG-4149 |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4176](https://issues.apache.org/jira/browse/PIG-4176) | Fix tez e2e test Bloom\_[1-3] |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4175](https://issues.apache.org/jira/browse/PIG-4175) | PIG CROSS operation follow by STORE produces non-deterministic results each run |  Major | . | Jim Huang | Daniel Dai |
| [PIG-4171](https://issues.apache.org/jira/browse/PIG-4171) | Streaming UDF fails when direct fetch optimization is enabled |  Minor | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-4170](https://issues.apache.org/jira/browse/PIG-4170) | Multiquery with different type of key gives wrong result |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4169](https://issues.apache.org/jira/browse/PIG-4169) | NPE in ConstantCalculator |  Major | impl | Cheolsoo Park | Cheolsoo Park |
| [PIG-4166](https://issues.apache.org/jira/browse/PIG-4166) | Collected group drops last record when combined with merge join |  Major | . | Brian Johnson | Brian Johnson |
| [PIG-4164](https://issues.apache.org/jira/browse/PIG-4164) | After Pig job finish, Pig client spend too much time retry to connect to AM |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4161](https://issues.apache.org/jira/browse/PIG-4161) | Always check for latest Hive snapshot dependencies |  Major | build | Daniel Dai | Daniel Dai |
| [PIG-4159](https://issues.apache.org/jira/browse/PIG-4159) | TestGroupConstParallelTez and TestJobSubmissionTez should be excluded in Hadoop 20 unit tests |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-4158](https://issues.apache.org/jira/browse/PIG-4158) | TestAssert is broken in trunk |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-4157](https://issues.apache.org/jira/browse/PIG-4157) | Pig compilation failure due to HIVE-7208 |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4156](https://issues.apache.org/jira/browse/PIG-4156) | [PATCH] fix NPE when running scripts stored on hdfs:// |  Major | impl | Andrew C. Oliver | Andrew C. Oliver |
| [PIG-4155](https://issues.apache.org/jira/browse/PIG-4155) | Quitting grunt shell using CTRL-D character throws exception |  Major | grunt | Abhishek Agarwal | Abhishek Agarwal |
| [PIG-4154](https://issues.apache.org/jira/browse/PIG-4154) | ScriptState#setScript(File) does not close resources |  Minor | . | Lars Francke | Lars Francke |
| [PIG-4151](https://issues.apache.org/jira/browse/PIG-4151) | Pig Cannot Write Empty Maps to HBase |  Major | internal-udfs | Daniel Dai | Daniel Dai |
| [PIG-4149](https://issues.apache.org/jira/browse/PIG-4149) | Rounding issue in FindQuantiles |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4140](https://issues.apache.org/jira/browse/PIG-4140) | VertexManagerEvent.getUserPayload returns ReadOnlyBuffer after TEZ-1449 |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4139](https://issues.apache.org/jira/browse/PIG-4139) | pig query throws error java.lang.NoSuchFieldException: jobsInProgress on MRv1 |  Major | . | Suhas Satish | Suhas Satish |
| [PIG-4137](https://issues.apache.org/jira/browse/PIG-4137) | Fix hadoopversion 23 compilation due to TEZ-1469 |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4135](https://issues.apache.org/jira/browse/PIG-4135) | Fetch optimization should be disabled if plan contains no limit |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-4134](https://issues.apache.org/jira/browse/PIG-4134) | TEZ-1449 broke the build |  Trivial | . | Koji Noguchi | Koji Noguchi |
| [PIG-4133](https://issues.apache.org/jira/browse/PIG-4133) | Need to update the default $HCAT\_HOME dir in the PIG script. |  Minor | grunt | Manikandan Narayanaswamy | Manikandan Narayanaswamy |
| [PIG-4132](https://issues.apache.org/jira/browse/PIG-4132) | TEZ-1246 and TEZ-1390 broke a build |  Trivial | . | Koji Noguchi | Koji Noguchi |
| [PIG-4129](https://issues.apache.org/jira/browse/PIG-4129) | Pig -Dhadoopversion=23 compile fail after TEZ-1426 |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4127](https://issues.apache.org/jira/browse/PIG-4127) | Build failure due to TEZ-1132 and TEZ-1416 |  Major | build, tez | Lorand Bendig | Lorand Bendig |
| [PIG-4125](https://issues.apache.org/jira/browse/PIG-4125) | TEZ-1347 broke the build |  Trivial | . | Koji Noguchi |  |
| [PIG-4123](https://issues.apache.org/jira/browse/PIG-4123) | Increase memory for TezMiniCluster |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4122](https://issues.apache.org/jira/browse/PIG-4122) | Fix hadoopversion 23 compilation due to TEZ-1194 |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4118](https://issues.apache.org/jira/browse/PIG-4118) | Fix hadoopversion 23 compilation due to TEZ-1237/TEZ-1407 |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4116](https://issues.apache.org/jira/browse/PIG-4116) | Update Pig doc about Hadoop 2 Streaming Python UDF support |  Major | documentation | Cheolsoo Park | Cheolsoo Park |
| [PIG-4113](https://issues.apache.org/jira/browse/PIG-4113) | TEZ-1386 breaks hadoop 2 compilation in trunk |  Major | tez | Cheolsoo Park | Cheolsoo Park |
| [PIG-4110](https://issues.apache.org/jira/browse/PIG-4110) | TEZ-1382 breaks Hadoop 2 compilation |  Major | tez | Cheolsoo Park | Cheolsoo Park |
| [PIG-4109](https://issues.apache.org/jira/browse/PIG-4109) | register local jar fail on Windows when Pig script is remote |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4108](https://issues.apache.org/jira/browse/PIG-4108) | Pig -Dhadoopversion=23 compile fail after TEZ-1317 |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4106](https://issues.apache.org/jira/browse/PIG-4106) | Describe shouldn't trigger execution in batch mode |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-4105](https://issues.apache.org/jira/browse/PIG-4105) | Fix TestAvroStorage with ibm jdk |  Critical | . | fang fang chen | fang fang chen |
| [PIG-4099](https://issues.apache.org/jira/browse/PIG-4099) | "ant copypom" failed with "could not find file $PIG\_HOME/ivy/pig.pom to copy" |  Major | build | fang fang chen | fang fang chen |
| [PIG-4098](https://issues.apache.org/jira/browse/PIG-4098) | Vertex Location Hint api update after TEZ-1041 |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [PIG-4089](https://issues.apache.org/jira/browse/PIG-4089) | TestMultiQuery.testMultiQueryJiraPig1169 fails in trunk after PIG-4079 in Hadoop 1 |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-4088](https://issues.apache.org/jira/browse/PIG-4088) | TEZ-1346 breaks hadoop 2 compilation in trunk |  Major | tez | Cheolsoo Park | Cheolsoo Park |
| [PIG-4086](https://issues.apache.org/jira/browse/PIG-4086) | Fix Orc e2e tests for tez |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4085](https://issues.apache.org/jira/browse/PIG-4085) | TEZ-1303 broke hadoop 2 compilation in trunk |  Major | tez | Cheolsoo Park | Cheolsoo Park |
| [PIG-4082](https://issues.apache.org/jira/browse/PIG-4082) | TEZ-1278 broke hadoop 2 compilation in trunk |  Major | tez | Cheolsoo Park | Cheolsoo Park |
| [PIG-4079](https://issues.apache.org/jira/browse/PIG-4079) | Parallel clause is not honored in local mode |  Major | impl | Cheolsoo Park | Cheolsoo Park |
| [PIG-4076](https://issues.apache.org/jira/browse/PIG-4076) | Fix pom file |  Major | build | Daniel Dai | Daniel Dai |
| [PIG-4075](https://issues.apache.org/jira/browse/PIG-4075) | TEZ-1311 broke Hadoop2 compilation |  Critical | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-4074](https://issues.apache.org/jira/browse/PIG-4074) | mapreduce.client.submit.file.replication is not honored in cached files |  Major | impl | Cheolsoo Park | Cheolsoo Park |
| [PIG-4071](https://issues.apache.org/jira/browse/PIG-4071) | Fix TestStore.testSetStoreSchema, TestParamSubPreproc.testGruntWithParamSub, TestJobSubmission.testReducerNumEstimation |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4067](https://issues.apache.org/jira/browse/PIG-4067) | TestAllLoader in piggybank fails with new hive version |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4058](https://issues.apache.org/jira/browse/PIG-4058) | Use single config in Tez for input and output |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4057](https://issues.apache.org/jira/browse/PIG-4057) | Group All followed by CROSS with default parallelism produces wrong results |  Major | . | Rohini Palaniswamy | Daniel Dai |
| [PIG-4056](https://issues.apache.org/jira/browse/PIG-4056) | Remove PhysicalOperator.setAlias |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4055](https://issues.apache.org/jira/browse/PIG-4055) | Build broke after TEZ-1130 API rename |  Trivial | . | Koji Noguchi | Koji Noguchi |
| [PIG-4053](https://issues.apache.org/jira/browse/PIG-4053) | TestMRCompiler succeeded with sun jdk 1.6 while failed with sun jdk 1.7 |  Critical | . | fang fang chen | Daniel Dai |
| [PIG-4052](https://issues.apache.org/jira/browse/PIG-4052) | TestJobControlSleep, TestInvokerSpeed are unreliable |  Critical | . | fang fang chen | Daniel Dai |
| [PIG-4051](https://issues.apache.org/jira/browse/PIG-4051) | Pigmix returns an error |  Major | . | Keren Ouaknine | Daniel Dai |
| [PIG-4050](https://issues.apache.org/jira/browse/PIG-4050) | HadoopShims.getTaskReports() can cause OOM with Hadoop 2 |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4048](https://issues.apache.org/jira/browse/PIG-4048) | TEZ-692 has a incompatible API change removing TezSession |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4046](https://issues.apache.org/jira/browse/PIG-4046) | PiggyBank DBStorage DATETIME should use setTimestamp with java.sql.Timestamp |  Minor | piggybank | Timothy Friest | Shinichi Yamashita |
| [PIG-4044](https://issues.apache.org/jira/browse/PIG-4044) | Pig should use avro-mapred-hadoop2.jar instead of avro-mapred.jar when compile with hadoop 2 |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4043](https://issues.apache.org/jira/browse/PIG-4043) | JobClient.getMap/ReduceTaskReports() causes OOM for jobs with a large number of tasks |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-4041](https://issues.apache.org/jira/browse/PIG-4041) | org.apache.pig.backend.hadoop.executionengine.tez.util.MRToTezHelper compiling error |  Major | . | Chen He | Jonathan Eagles |
| [PIG-4038](https://issues.apache.org/jira/browse/PIG-4038) | SPRINTF should return NULL on any NULL input |  Minor | internal-udfs | Philip (flip) Kromer | Philip (flip) Kromer |
| [PIG-4037](https://issues.apache.org/jira/browse/PIG-4037) | TestHBaseStorage, TestAccumuloPigCluster has failures with hadoopversion=23 |  Major | . | Rohini Palaniswamy | Daniel Dai |
| [PIG-4035](https://issues.apache.org/jira/browse/PIG-4035) | Fix CollectedGroup e2e tests for tez |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4034](https://issues.apache.org/jira/browse/PIG-4034) | Exclude TestTezAutoParallelism when -Dhadoopversion=20 |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-4033](https://issues.apache.org/jira/browse/PIG-4033) | Fix MergeSparseJoin e2e tests on tez |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4032](https://issues.apache.org/jira/browse/PIG-4032) | BloomFilter fails with s3 path in Hadoop 2.4 |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-4031](https://issues.apache.org/jira/browse/PIG-4031) | Provide Counter aggregation for Tez |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4030](https://issues.apache.org/jira/browse/PIG-4030) | TestGrunt, TestPigRunner fail after PIG-3892 |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-4029](https://issues.apache.org/jira/browse/PIG-4029) | TestMRCompiler is broken after PIG-3874 |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-4028](https://issues.apache.org/jira/browse/PIG-4028) | add a flag to control the ivy resolve/retrieve output |  Major | build | Giridharan Kesavan | Giridharan Kesavan |
| [PIG-4027](https://issues.apache.org/jira/browse/PIG-4027) | Always check for latest Tez snapshot dependencies |  Minor | build, tez | Lorand Bendig | Lorand Bendig |
| [PIG-4023](https://issues.apache.org/jira/browse/PIG-4023) | BigDec/Int sort is broken |  Major | . | Anup Ahire | Anup Ahire |
| [PIG-4022](https://issues.apache.org/jira/browse/PIG-4022) | Fix tez e2e test SkewedJoin\_6 |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4021](https://issues.apache.org/jira/browse/PIG-4021) | Fix TestHBaseStorage failure after auto local mode change (PIG-3463) |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4020](https://issues.apache.org/jira/browse/PIG-4020) | Fix tez e2e tests MapPartialAgg\_[2-4], StreamingPerformance\_[6-7] |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4019](https://issues.apache.org/jira/browse/PIG-4019) | Compilation broken after TEZ-1169 |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4018](https://issues.apache.org/jira/browse/PIG-4018) | Schema validation fails with UNION ONSCHEMA |  Major | . | Travis Woodruff | Travis Woodruff |
| [PIG-4017](https://issues.apache.org/jira/browse/PIG-4017) | NPE thrown from JobControlCompiler.shipToHdfs |  Trivial | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-4014](https://issues.apache.org/jira/browse/PIG-4014) | Fix Rank e2e test failures on tez |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4013](https://issues.apache.org/jira/browse/PIG-4013) | Order by multiple column fail on Tez |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4011](https://issues.apache.org/jira/browse/PIG-4011) | Pig should not put PigContext in job.jar to help jar dedup |  Major | . | Aniket Mokashi | Daniel Dai |
| [PIG-4003](https://issues.apache.org/jira/browse/PIG-4003) | Error is thrown by JobStats.getOutputSize() when storing to a Hive table |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-4000](https://issues.apache.org/jira/browse/PIG-4000) | Minor documentation fix for PIG-3642 |  Minor | documentation | Lorand Bendig | Lorand Bendig |
| [PIG-3999](https://issues.apache.org/jira/browse/PIG-3999) | Document PIG-3388 |  Trivial | documentation | Lorand Bendig | Lorand Bendig |
| [PIG-3998](https://issues.apache.org/jira/browse/PIG-3998) | Documentation fix: invalid page links, wrong Groovy udf example |  Minor | documentation | Lorand Bendig | Lorand Bendig |
| [PIG-3997](https://issues.apache.org/jira/browse/PIG-3997) | Issue on Pig docs ( Testing and Diagnostics ) |  Major | documentation | Jeff Zhang | Jeff Zhang |
| [PIG-3996](https://issues.apache.org/jira/browse/PIG-3996) | Delete zebra from svn |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-3995](https://issues.apache.org/jira/browse/PIG-3995) | Tez unit tests shouldn't run when -Dhadoopversion=20 |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-3991](https://issues.apache.org/jira/browse/PIG-3991) | TestErrorHandling.tesNegative7 is broken in trunk/branch-0.13 |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-3990](https://issues.apache.org/jira/browse/PIG-3990) | ant docs is broken in trunk/branch-0.13 |  Major | documentation | Cheolsoo Park | Cheolsoo Park |
| [PIG-3988](https://issues.apache.org/jira/browse/PIG-3988) | PigStorage: CommandLineParser is not thread safe |  Minor | . | Travis Woodruff | Travis Woodruff |
| [PIG-3985](https://issues.apache.org/jira/browse/PIG-3985) | Multiquery execution of RANK with RANK BY causes NPE JobCreationException "ERROR 2017: Internal error creating job configuration" |  Major | . | Philip (flip) Kromer | Rohini Palaniswamy |
| [PIG-3984](https://issues.apache.org/jira/browse/PIG-3984) | PigServer.shutdown remove the tez resource folder |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-3983](https://issues.apache.org/jira/browse/PIG-3983) | TestGrunt.testKeepGoigFailed fail on tez mode |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-3982](https://issues.apache.org/jira/browse/PIG-3982) | ant target test-tez should depend on jackson-pig-3039-test-download |  Minor | tez | Daniel Dai | Daniel Dai |
| [PIG-3978](https://issues.apache.org/jira/browse/PIG-3978) | Container reuse does not across PigServer |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-3976](https://issues.apache.org/jira/browse/PIG-3976) | Typo correction in JobStats breaks Oozie |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-3974](https://issues.apache.org/jira/browse/PIG-3974) | E2E test data generation fails in cluster mode |  Major | e2e harness | Lorand Bendig | Lorand Bendig |
| [PIG-3973](https://issues.apache.org/jira/browse/PIG-3973) | Ant "test-tez" target should set property hadoopversion=23 and exectype=tez |  Major | build | Daniel Dai | Rohini Palaniswamy |
| [PIG-3969](https://issues.apache.org/jira/browse/PIG-3969) | Javascript UDF fails if no output schema is defined |  Major | . | Lorand Bendig | Lorand Bendig |
| [PIG-3968](https://issues.apache.org/jira/browse/PIG-3968) | OperatorPlan.serialVersionUID is not defined |  Minor | impl | Daniel Dai | Daniel Dai |
| [PIG-3960](https://issues.apache.org/jira/browse/PIG-3960) | Compile fail against Hadoop 2.4.0 after PIG-3913 |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-3958](https://issues.apache.org/jira/browse/PIG-3958) | TestMRJobStats is broken in 0.13 and trunk |  Major | . | Cheolsoo Park | Aniket Mokashi |
| [PIG-3956](https://issues.apache.org/jira/browse/PIG-3956) | UDF profile is often misleading |  Major | impl | Cheolsoo Park | Cheolsoo Park |
| [PIG-3892](https://issues.apache.org/jira/browse/PIG-3892) | Pig distribution for hadoop 2 |  Major | build | Daniel Dai | Daniel Dai |
| [PIG-3870](https://issues.apache.org/jira/browse/PIG-3870) | STRSPLITTOBAG UDF |  Major | . | Praveenesh Kumar | karan kumar |
| [PIG-3861](https://issues.apache.org/jira/browse/PIG-3861) | duplicate jars get added to distributed cache |  Minor | . | Mona Chitnis | Mona Chitnis |
| [PIG-3537](https://issues.apache.org/jira/browse/PIG-3537) | Tweak build to support HBase with Hadoop 23 profile |  Major | . | Jarek Jarcec Cecho | Jarek Jarcec Cecho |
| [PIG-3507](https://issues.apache.org/jira/browse/PIG-3507) | Pig fails to run in local mode on a Kerberos enabled Hadoop cluster |  Major | . | chiyang | liyunzhang\_intel |
| [PIG-3478](https://issues.apache.org/jira/browse/PIG-3478) | Make StreamingUDF work for Hadoop 2 |  Major | impl | Daniel Dai | Lorand Bendig |
| [PIG-3434](https://issues.apache.org/jira/browse/PIG-3434) | Null subexpression in bincond nullifies outer tuple (or bag) |  Major | . | Pavel Fedyakov | Mark Wagner |
| [PIG-3421](https://issues.apache.org/jira/browse/PIG-3421) | Script jars should be added to extra jars instead of pig's job.jar |  Major | . | Aniket Mokashi | Aniket Mokashi |
| [PIG-2689](https://issues.apache.org/jira/browse/PIG-2689) | JsonStorage fails to find schema when LimitAdjuster runs |  Major | . | Doug Daniels | Doug Daniels |
| [PIG-2495](https://issues.apache.org/jira/browse/PIG-2495) | Using merge JOIN from a HBaseStorage produces an error |  Major | . | Kevin Lion | Brian Johnson |
| [PIG-2409](https://issues.apache.org/jira/browse/PIG-2409) | Pig show wrong tracking URL for hadoop 2 |  Minor | impl | Daniel Dai | Lorand Bendig |
| [PIG-2122](https://issues.apache.org/jira/browse/PIG-2122) | Parameter Substitution doesn't work in the Grunt shell |  Minor | grunt | Grant Ingersoll | Daniel Dai |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4319](https://issues.apache.org/jira/browse/PIG-4319) | Make LoadPredicatePushdown InterfaceAudience.Private till PIG-4093 |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4316](https://issues.apache.org/jira/browse/PIG-4316) | Port TestHBaseStorage to tez local mode |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4263](https://issues.apache.org/jira/browse/PIG-4263) | Move tez local mode unit tests to a separate targe |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4259](https://issues.apache.org/jira/browse/PIG-4259) | Fix few issues related to Union, CROSS and auto parallelism in Tez |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4245](https://issues.apache.org/jira/browse/PIG-4245) | 1-1 edge  vertices should use same jvm opts |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4202](https://issues.apache.org/jira/browse/PIG-4202) | Reset UDFContext state before OutputCommitter invocations in Tez |  Major | impl | Daniel Dai | Rohini Palaniswamy |
| [PIG-4199](https://issues.apache.org/jira/browse/PIG-4199) | Mapreduce ACLs should be translated to Tez ACLs |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4162](https://issues.apache.org/jira/browse/PIG-4162) | Intermediate reducer parallelism in Tez should be higher |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4153](https://issues.apache.org/jira/browse/PIG-4153) | Pin Tez to 0.5.0 release |  Major | tez | Cheolsoo Park | Cheolsoo Park |
| [PIG-4146](https://issues.apache.org/jira/browse/PIG-4146) | Create a target to run mr and tez unit test in one shot |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4145](https://issues.apache.org/jira/browse/PIG-4145) | Port local mode tests to Tez - part1 |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4144](https://issues.apache.org/jira/browse/PIG-4144) | Make pigunit.PigTest work in tez mode |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4143](https://issues.apache.org/jira/browse/PIG-4143) | Port more mini cluster tests to Tez - part 7 |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4117](https://issues.apache.org/jira/browse/PIG-4117) | Implement merge cogroup in Tez |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4114](https://issues.apache.org/jira/browse/PIG-4114) | Add Native operator to tez |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4112](https://issues.apache.org/jira/browse/PIG-4112) | NPE in packager when union + group-by followed by replicated join in Tez |  Major | tez | Cheolsoo Park | Rohini Palaniswamy |
| [PIG-4104](https://issues.apache.org/jira/browse/PIG-4104) | Accumulator UDF throws OOM in Tez |  Major | tez | Cheolsoo Park | Rohini Palaniswamy |
| [PIG-4102](https://issues.apache.org/jira/browse/PIG-4102) | Adding e2e tests and several improvements for Orc predicate pushdown |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4101](https://issues.apache.org/jira/browse/PIG-4101) | Lower tez.am.task.max.failed.attempts to 2 from 4 in Tez mini cluster |  Major | tez | Cheolsoo Park | Cheolsoo Park |
| [PIG-4091](https://issues.apache.org/jira/browse/PIG-4091) | Predicate pushdown for ORC |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4084](https://issues.apache.org/jira/browse/PIG-4084) | Port TestPigRunner to Tez |  Major | tez | Rohini Palaniswamy | Daniel Dai |
| [PIG-4078](https://issues.apache.org/jira/browse/PIG-4078) | Port more mini cluster tests to Tez - part 6 |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4070](https://issues.apache.org/jira/browse/PIG-4070) | Change from TezJobConfig to TezRuntimeConfiguration |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4069](https://issues.apache.org/jira/browse/PIG-4069) | Limit reduce task should start as soon as one map task finishes |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4068](https://issues.apache.org/jira/browse/PIG-4068) | ObjectCache cause ClassCastException |  Major | tez | Cheolsoo Park | Cheolsoo Park |
| [PIG-4065](https://issues.apache.org/jira/browse/PIG-4065) | Fix failing unit tests in Tez |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4064](https://issues.apache.org/jira/browse/PIG-4064) | Fix tez auto parallelism test failures |  Major | tez | Rohini Palaniswamy | Daniel Dai |
| [PIG-4061](https://issues.apache.org/jira/browse/PIG-4061) | Make Streaming UDF work in Tez |  Major | tez | Cheolsoo Park | Daniel Dai |
| [PIG-4060](https://issues.apache.org/jira/browse/PIG-4060) | Refactor TezJob and TezLauncher |  Major | tez | Cheolsoo Park | Cheolsoo Park |
| [PIG-4039](https://issues.apache.org/jira/browse/PIG-4039) | New interface for resetting static variables for jvm reuse |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4006](https://issues.apache.org/jira/browse/PIG-4006) | Make the interval of DAGStatus report configurable |  Major | tez | Cheolsoo Park | Cheolsoo Park |
| [PIG-3977](https://issues.apache.org/jira/browse/PIG-3977) | Get TezStats working for Oozie |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-3971](https://issues.apache.org/jira/browse/PIG-3971) | Pig on tez fails to run in Oozie in secure cluster |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-3959](https://issues.apache.org/jira/browse/PIG-3959) | Skewed join followed by replicated join fails in Tez |  Major | tez | Cheolsoo Park | Cheolsoo Park |
| [PIG-3935](https://issues.apache.org/jira/browse/PIG-3935) | Port more mini cluster tests to Tez - part 5 |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-3886](https://issues.apache.org/jira/browse/PIG-3886) | UdfDistributedCache\_1 fails in tez branch |  Major | tez | Cheolsoo Park | Cheolsoo Park |
| [PIG-3846](https://issues.apache.org/jira/browse/PIG-3846) | Implement automatic reducer parallelism |  Major | tez | Rohini Palaniswamy | Daniel Dai |
| [PIG-3838](https://issues.apache.org/jira/browse/PIG-3838) | Organize tez code into subpackages |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4005](https://issues.apache.org/jira/browse/PIG-4005) | depend on hbase-hadoop2-compat rather than hbase-hadoop1-compat when hbaseversion is 95 |  Major | . | Xiaoshuang LU | Daniel Dai |
| [PIG-3954](https://issues.apache.org/jira/browse/PIG-3954) | Document use of user level jar cache |  Major | . | Aniket Mokashi | Aniket Mokashi |


