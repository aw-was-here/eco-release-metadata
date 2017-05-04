
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
# Apache Pig Changelog

## Release 0.17.0 - Unreleased (as of 2017-05-04)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-5067](https://issues.apache.org/jira/browse/PIG-5067) | Revisit union on numeric type and chararray to bytearray |  Major | . | Koji Noguchi | Koji Noguchi |
| [PIG-4923](https://issues.apache.org/jira/browse/PIG-4923) | Drop Hadoop 1.x support in Pig 0.17 |  Major | . | Daniel Dai | Adam Szita |
| [PIG-4897](https://issues.apache.org/jira/browse/PIG-4897) | Scope of param substitution for run/exec commands |  Major | . | Koji Noguchi | Koji Noguchi |
| [PIG-4728](https://issues.apache.org/jira/browse/PIG-4728) | Compilation against hbase 1.x fails with hbase-hadoop1-compat not found |  Major | . | Ted Yu | Adam Szita |
| [PIG-5085](https://issues.apache.org/jira/browse/PIG-5085) | Support FLATTEN of maps |  Major | . | Rohini Palaniswamy | Adam Szita |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4925](https://issues.apache.org/jira/browse/PIG-4925) | Support for passing the bloom filter to the Bloom UDF |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4963](https://issues.apache.org/jira/browse/PIG-4963) | Add a Bloom join |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-5110](https://issues.apache.org/jira/browse/PIG-5110) | Removing schema alias and :: coming from parent relation |  Major | . | Adam Szita | Adam Szita |
| [PIG-5214](https://issues.apache.org/jira/browse/PIG-5214) | search any substring in the input string |  Major | internal-udfs | Yuxiang Wang | Yuxiang Wang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4714](https://issues.apache.org/jira/browse/PIG-4714) | Improve logging across multiple components with callerId |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4719](https://issues.apache.org/jira/browse/PIG-4719) | Documentation for PIG-4704: Customizable Error Handling for Storers in Pig |  Major | documentation | Daniel Dai | Daniel Dai |
| [PIG-2768](https://issues.apache.org/jira/browse/PIG-2768) | Fix org.apache.hadoop.conf.Configuration deprecation warnings for Hadoop 23 |  Major | . | Fabian Alenius | Rohini Palaniswamy |
| [PIG-4906](https://issues.apache.org/jira/browse/PIG-4906) | Add Bigdecimal functions in Over function |  Minor | piggybank | Cristian Galán | Cristian Galán |
| [PIG-4911](https://issues.apache.org/jira/browse/PIG-4911) | Provide option to disable DAG recovery |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4852](https://issues.apache.org/jira/browse/PIG-4852) | Add accumulator implementation for MaxTupleBy1stField |  Minor | . | Eyal Allweil | Adam Szita |
| [PIG-4931](https://issues.apache.org/jira/browse/PIG-4931) | Document IN operator |  Major | . | Rohini Palaniswamy | Artem Ervits |
| [PIG-5023](https://issues.apache.org/jira/browse/PIG-5023) | Documentation for BagToTuple |  Major | documentation | Ian Cook | Ian Cook |
| [PIG-5027](https://issues.apache.org/jira/browse/PIG-5027) | Improve SAMPLE Scalar Expression Example |  Minor | documentation | Ian Cook | Ian Cook |
| [PIG-5020](https://issues.apache.org/jira/browse/PIG-5020) | Give file location for loadcaster related warning and errors |  Minor | . | Koji Noguchi | Koji Noguchi |
| [PIG-4951](https://issues.apache.org/jira/browse/PIG-4951) | Rename PIG\_ATS\_ENABLED constant |  Major | . | Daniel Dai | Adam Szita |
| [PIG-5026](https://issues.apache.org/jira/browse/PIG-5026) | Remove src/META-INF/services/org.apache.hadoop.mapreduce.protocol.ClientProtocolProvider |  Minor | . | Nandor Kollar | Nandor Kollar |
| [PIG-5037](https://issues.apache.org/jira/browse/PIG-5037) | Add api getDisplayString to PigStats |  Major | . | Jeff Zhang | Jeff Zhang |
| [PIG-5053](https://issues.apache.org/jira/browse/PIG-5053) | Can't change HDFS user home in e2e tests using Ant |  Minor | . | Nandor Kollar | Nandor Kollar |
| [PIG-5036](https://issues.apache.org/jira/browse/PIG-5036) | Remove biggish from e2e input dataset |  Major | e2e harness | Daniel Dai | Daniel Dai |
| [PIG-5034](https://issues.apache.org/jira/browse/PIG-5034) | Remove org.apache.hadoop.hive.serde2.objectinspector.primitive package |  Minor | . | Nandor Kollar | Nandor Kollar |
| [PIG-4939](https://issues.apache.org/jira/browse/PIG-4939) | QueryParserUtils.setHdfsServers(QueryParserUtils.java:104) should not be called for non-dfs methods |  Minor | impl | Siddhi Mehta | Adam Szita |
| [PIG-5025](https://issues.apache.org/jira/browse/PIG-5025) | Fix flaky test failures in TestLoad.java |  Minor | . | Adam Szita | Adam Szita |
| [PIG-4901](https://issues.apache.org/jira/browse/PIG-4901) | To use Multistorage for each Group |  Minor | piggybank | Divya | Adam Szita |
| [PIG-3938](https://issues.apache.org/jira/browse/PIG-3938) | Add LoadCaster to EvalFunc(UDF) |  Major | internal-udfs | Hongchang Li | Koji Noguchi |
| [PIG-3851](https://issues.apache.org/jira/browse/PIG-3851) | Upgrade jline to 2.11 |  Major | . | Jun Wang | Daniel Dai |
| [PIG-5120](https://issues.apache.org/jira/browse/PIG-5120) | Let tez\_local mode run without a jar file |  Trivial | . | Koji Noguchi | Koji Noguchi |
| [PIG-5126](https://issues.apache.org/jira/browse/PIG-5126) | Add doc about pig in zeppelin |  Major | . | Jeff Zhang | Jeff Zhang |
| [PIG-5175](https://issues.apache.org/jira/browse/PIG-5175) | Upgrade jruby to 1.7.26 |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-5210](https://issues.apache.org/jira/browse/PIG-5210) | Option to print MR/Tez plan before launching |  Major | . | Lili Yu | Lili Yu |
| [PIG-5211](https://issues.apache.org/jira/browse/PIG-5211) | Optimize Nested Limited Sort |  Major | . | Jin Sun | Jin Sun |
| [PIG-5222](https://issues.apache.org/jira/browse/PIG-5222) | Fix Junit Deprecations |  Major | . | William Watson | William Watson |
| [PIG-5221](https://issues.apache.org/jira/browse/PIG-5221) | More fs.default.name deprecation warnings |  Major | . | William Watson | William Watson |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4902](https://issues.apache.org/jira/browse/PIG-4902) | Fix UT failures on 0.16 branch: TestTezGraceParallelism, TestPigScriptParser |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-3227](https://issues.apache.org/jira/browse/PIG-3227) | SearchEngineExtractor does not work for bing |  Minor | piggybank | Danny Antonetti | Danny Antonetti |
| [PIG-4786](https://issues.apache.org/jira/browse/PIG-4786) | CROSS will not work correctly with Grace Parallelism |  Major | tez | Rohini Palaniswamy | Daniel Dai |
| [PIG-4734](https://issues.apache.org/jira/browse/PIG-4734) | TOMAP schema inferring breaks some scripts in type checking for bincond |  Major | . | Rohini Palaniswamy | Daniel Dai |
| [PIG-4916](https://issues.apache.org/jira/browse/PIG-4916) | Pig on Tez fail to remove temporary HDFS files in some cases |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-4921](https://issues.apache.org/jira/browse/PIG-4921) | Kill running jobs on InterruptedException |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-2315](https://issues.apache.org/jira/browse/PIG-2315) | Make as clause work in generate |  Major | . | Olga Natkovich | Daniel Dai |
| [PIG-4896](https://issues.apache.org/jira/browse/PIG-4896) | Param substitution ignored when redefined |  Minor | parser | Koji Noguchi | Koji Noguchi |
| [PIG-4949](https://issues.apache.org/jira/browse/PIG-4949) | Fix registering jar in S3 which was broken by PIG-4417 in Pig 0.16 |  Major | parser | Yishan Yang | Yishan Yang |
| [PIG-4938](https://issues.apache.org/jira/browse/PIG-4938) | [PiggyBank] XPath returns empty values when using aggregation method |  Minor | piggybank | Ivo Lenting | Nandor Kollar |
| [PIG-4945](https://issues.apache.org/jira/browse/PIG-4945) | Update document for conflicting macro params |  Trivial | documentation | Koji Noguchi | Koji Noguchi |
| [PIG-4950](https://issues.apache.org/jira/browse/PIG-4950) | Fix minor issues with running scripts in non-local FileSystems |  Minor | . | Peter Slawski | Peter Slawski |
| [PIG-4940](https://issues.apache.org/jira/browse/PIG-4940) | Predicate push-down filtering unary expressions can be pushed. |  Major | . | Ryan Blue | Ryan Blue |
| [PIG-4948](https://issues.apache.org/jira/browse/PIG-4948) | Pig on Tez AM use too much memory on a small cluster |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4947](https://issues.apache.org/jira/browse/PIG-4947) | LOAD with HBaseStorage using a mix of pure wildcards and prefixed wildcards results in empty maps for the pure wildcarded column families. |  Major | grunt | Youngjin | Daniel Dai |
| [PIG-4957](https://issues.apache.org/jira/browse/PIG-4957) | See "Received kill signal" message for a normal run after PIG-4921 |  Major | . | Daniel Dai | Rohini Palaniswamy |
| [PIG-4960](https://issues.apache.org/jira/browse/PIG-4960) | Split followed by order by/skewed join is skewed in Tez |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4961](https://issues.apache.org/jira/browse/PIG-4961) | CROSS followed by LIMIT inside nested foreach drop data from result |  Major | . | Sergey Svinarchuk | Rohini Palaniswamy |
| [PIG-4935](https://issues.apache.org/jira/browse/PIG-4935) | TEZ\_USE\_CLUSTER\_HADOOP\_LIBS is always set to true |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4966](https://issues.apache.org/jira/browse/PIG-4966) | Fix Pig compatibility with Hive 2.1.0 |  Minor | build | Zach York | Zach York |
| [PIG-4965](https://issues.apache.org/jira/browse/PIG-4965) | Refactor test/perf/pigmix/bin/runpigmix.pl to delete the output of single test case if we enable cleanup\_after\_test |  Major | . | liyunzhang\_intel | liyunzhang\_intel |
| [PIG-4933](https://issues.apache.org/jira/browse/PIG-4933) | TestDataBagAccess.testBagConstantFlatten1/TestLogicalPlanBuilder.testQuery90  broken after PIG-2315 |  Major | . | Koji Noguchi | Koji Noguchi |
| [PIG-4972](https://issues.apache.org/jira/browse/PIG-4972) | StreamingIO\_1 fail on perl 5.22 |  Major | e2e harness | Daniel Dai | Daniel Dai |
| [PIG-4973](https://issues.apache.org/jira/browse/PIG-4973) | Bigdecimal divison fails |  Major | impl | Adam Szita | Adam Szita |
| [PIG-4975](https://issues.apache.org/jira/browse/PIG-4975) | Map schema shows "Type: null Uid: null" in explain |  Trivial | . | Koji Noguchi | Koji Noguchi |
| [PIG-5022](https://issues.apache.org/jira/browse/PIG-5022) | Error in TOKENIZE Example |  Major | documentation | Ian Cook | Ian Cook |
| [PIG-5019](https://issues.apache.org/jira/browse/PIG-5019) | Pig generates tons of warnings for udf with enabled warnings aggregation |  Major | internal-udfs | Murshid Chalaev | Murshid Chalaev |
| [PIG-5031](https://issues.apache.org/jira/browse/PIG-5031) | Tez failing to compile when replicate join is done with a limit vertex on left |  Minor | tez | Koji Noguchi | Koji Noguchi |
| [PIG-5032](https://issues.apache.org/jira/browse/PIG-5032) | Output record stats in Tez is wrong when there is split followed by union |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-5035](https://issues.apache.org/jira/browse/PIG-5035) | killJob API does not work in Tez |  Major | . | Jeff Zhang | Jeff Zhang |
| [PIG-4976](https://issues.apache.org/jira/browse/PIG-4976) | streaming job with store clause stuck if the script fail |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-3087](https://issues.apache.org/jira/browse/PIG-3087) | Refactor TestLogicalPlanBuilder to be meaningful |  Major | . | Jonathan Coveney | Adam Szita |
| [PIG-5039](https://issues.apache.org/jira/browse/PIG-5039) | TestTypeCheckingValidatorNewLP.TestTypeCheckingValidatorNewLP is failing |  Minor | . | Nandor Kollar | Nandor Kollar |
| [PIG-5038](https://issues.apache.org/jira/browse/PIG-5038) | Pig Limit\_2 e2e test failed with sort check |  Major | . | Konstantin Harasov | Konstantin Harasov |
| [PIG-5040](https://issues.apache.org/jira/browse/PIG-5040) | Order by and CROSS partitioning is not deterministic due to usage of Random |  Critical | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-5041](https://issues.apache.org/jira/browse/PIG-5041) | RoundRobinPartitioner is not deterministic when order of input records change |  Critical | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-5045](https://issues.apache.org/jira/browse/PIG-5045) | CSVExcelStorage Load: A Quoted Field with a Single Escaped Quote """" Becomes "" This should become " instead. |  Minor | piggybank | Shawn Weeks | Adam Szita |
| [PIG-4798](https://issues.apache.org/jira/browse/PIG-4798) | big integer and big decimal literals fail to parse |  Major | . | Savvas Savvides | Adam Szita |
| [PIG-4934](https://issues.apache.org/jira/browse/PIG-4934) | SET command does not work well with deprecated settings |  Major | . | Rohini Palaniswamy | Adam Szita |
| [PIG-5033](https://issues.apache.org/jira/browse/PIG-5033) | MultiQueryOptimizerTez creates bad plan with union, split and FRJoin |  Major | tez | Travis Woodruff | Rohini Palaniswamy |
| [PIG-5049](https://issues.apache.org/jira/browse/PIG-5049) | Cleanup e2e tests turing\_jython.conf |  Major | e2e harness | Daniel Dai | Daniel Dai |
| [PIG-5048](https://issues.apache.org/jira/browse/PIG-5048) | HiveUDTF fail if it is the first expression in projection |  Major | impl | Daniel Dai | Nandor Kollar |
| [PIG-5055](https://issues.apache.org/jira/browse/PIG-5055) | Infinite loop with join by fixed index |  Major | . | Koji Noguchi | Koji Noguchi |
| [PIG-5056](https://issues.apache.org/jira/browse/PIG-5056) | Fix AvroStorage writing enums |  Major | . | Adam Szita | Adam Szita |
| [PIG-5064](https://issues.apache.org/jira/browse/PIG-5064) | NPE in TestScriptUDF#testPythonBuiltinModuleImport1 when JAVA\_HOME is not set |  Minor | . | Xiang Li | Xiang Li |
| [PIG-5074](https://issues.apache.org/jira/browse/PIG-5074) | Build broken when hadoopversion=20 in branch 0.16 |  Major | build | Adam Szita | Adam Szita |
| [PIG-3417](https://issues.apache.org/jira/browse/PIG-3417) | Job fails when skewed join is done on tuple key |  Critical | impl | Nick White | Nandor Kollar |
| [PIG-4930](https://issues.apache.org/jira/browse/PIG-4930) | Skewed Join Breaks On Empty Sampled Input When Key is From Map |  Major | . | William Butler | Nandor Kollar |
| [PIG-5043](https://issues.apache.org/jira/browse/PIG-5043) | Slowstart not applied in Tez with PARALLEL clause |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-5088](https://issues.apache.org/jira/browse/PIG-5088) | HashValuePartitioner has skew when there is only map fields |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-5082](https://issues.apache.org/jira/browse/PIG-5082) | Tez UnionOptimizer creates vertex group with one member |  Minor | tez | Travis Woodruff | Rohini Palaniswamy |
| [PIG-5078](https://issues.apache.org/jira/browse/PIG-5078) | Script fails with error - POStoreTez only accepts MROutput |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4918](https://issues.apache.org/jira/browse/PIG-4918) | Pig on Tez cannot switch pig.temp.dir to another fs |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-5083](https://issues.apache.org/jira/browse/PIG-5083) | CombinerPackager and LitePackager should not materialize bags |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4260](https://issues.apache.org/jira/browse/PIG-4260) | SpillableMemoryManager.spill should revert spill on all exception |  Major | impl | Daniel Dai | Rohini Palaniswamy |
| [PIG-5046](https://issues.apache.org/jira/browse/PIG-5046) | Skewed join with auto parallelism hangs when right input also has autoparallelism |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-5108](https://issues.apache.org/jira/browse/PIG-5108) | AvroStorage on Tez with exception on nested records |  Major | tez | Sebastian Geller | Daniel Dai |
| [PIG-5112](https://issues.apache.org/jira/browse/PIG-5112) | Cleanup pig-template.xml |  Major | build | Daniel Dai | Daniel Dai |
| [PIG-5111](https://issues.apache.org/jira/browse/PIG-5111) | e2e Utf8Test fails in local mode |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-5118](https://issues.apache.org/jira/browse/PIG-5118) | Script fails with Invalid dag containing 0 vertices |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-5119](https://issues.apache.org/jira/browse/PIG-5119) | SkewedJoin\_15 is unstable |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-5127](https://issues.apache.org/jira/browse/PIG-5127) | Test fail when running test-core-mrtez |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-4953](https://issues.apache.org/jira/browse/PIG-4953) | Predicate push-down will not run filters for single unary expressions |  Major | impl | Ryan Blue | Ryan Blue |
| [PIG-5159](https://issues.apache.org/jira/browse/PIG-5159) | Fix Pig not saving grunt history |  Major | . | Adam Szita | Adam Szita |
| [PIG-5173](https://issues.apache.org/jira/browse/PIG-5173) | Script with multiple splits fails with Invalid dag containing 0 vertices |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-5156](https://issues.apache.org/jira/browse/PIG-5156) | Duplicate jars in CLASSPATH when running test |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-5182](https://issues.apache.org/jira/browse/PIG-5182) | ant docs target is broken by PIG-5110 |  Major | documentation | Daniel Dai | Daniel Dai |
| [PIG-5183](https://issues.apache.org/jira/browse/PIG-5183) | We shall mention NATIVE instead of MAPREDUCE operator in document |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-5198](https://issues.apache.org/jira/browse/PIG-5198) | streaming job stuck with script failure when combined with split |  Minor | impl | Koji Noguchi | Koji Noguchi |
| [PIG-4677](https://issues.apache.org/jira/browse/PIG-4677) | Display failure information on stop on failure |  Major | . | Mit Desai | Rohini Palaniswamy |
| [PIG-4640](https://issues.apache.org/jira/browse/PIG-4640) | Compiling Pig with JDK8 or JDK7 Update 85 breaks Ruby UDFs |  Major | . | Edward Winslow | Daniel Dai |
| [PIG-5209](https://issues.apache.org/jira/browse/PIG-5209) | Cross product on flatten(map) fails with ClassCastException |  Minor | impl | Koji Noguchi | Koji Noguchi |
| [PIG-5223](https://issues.apache.org/jira/browse/PIG-5223) | TestLimitVariable.testNestedLimitVariable1 and TestSecondarySortMR.testNestedLimitedSort  failing |  Major | . | Koji Noguchi | Jin Sun |
| [PIG-5226](https://issues.apache.org/jira/browse/PIG-5226) | PreprocessorContext.java can deadlock forever with large stderr |  Minor | . | Jacob Tolar | Jacob Tolar |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-5060](https://issues.apache.org/jira/browse/PIG-5060) | TestPigRunner.testDisablePigCounters2 failing with tez |  Trivial | . | Koji Noguchi | Koji Noguchi |
| [PIG-5062](https://issues.apache.org/jira/browse/PIG-5062) | Allow Native e2e tests to run in parallel |  Minor | . | Koji Noguchi | Koji Noguchi |
| [PIG-5063](https://issues.apache.org/jira/browse/PIG-5063) | e2e IOErrors\_1  on mapreduce is unstable |  Trivial | . | Koji Noguchi | Koji Noguchi |
| [PIG-5066](https://issues.apache.org/jira/browse/PIG-5066) | e2e Jython\_Checkin\_2 failing due to floating precision difference |  Trivial | . | Koji Noguchi | Koji Noguchi |
| [PIG-5061](https://issues.apache.org/jira/browse/PIG-5061) | ant test -Dtestcase=TestBoolean failing |  Trivial | . | Koji Noguchi | Koji Noguchi |
| [PIG-5070](https://issues.apache.org/jira/browse/PIG-5070) | Allow Grunt e2e tests to run in parallel |  Trivial | . | Koji Noguchi | Koji Noguchi |
| [PIG-5072](https://issues.apache.org/jira/browse/PIG-5072) | e2e Union\_12 fails on typecast when oldpig=0.11 |  Trivial | . | Koji Noguchi | Koji Noguchi |
| [PIG-5073](https://issues.apache.org/jira/browse/PIG-5073) | Skip e2e Limit\_5 test for Tez |  Trivial | . | Koji Noguchi | Koji Noguchi |
| [PIG-5087](https://issues.apache.org/jira/browse/PIG-5087) | e2e Native3 failing after PIG-4923 (dropping hadoop 1.x) |  Trivial | . | Koji Noguchi | Koji Noguchi |
| [PIG-5105](https://issues.apache.org/jira/browse/PIG-5105) | Tez unit tests failing with "Argument list too long" |  Major | . | Koji Noguchi | Rohini Palaniswamy |
| [PIG-5153](https://issues.apache.org/jira/browse/PIG-5153) | Change of behavior in FLATTEN(map) |  Minor | . | Koji Noguchi | Adam Szita |
| [PIG-5229](https://issues.apache.org/jira/browse/PIG-5229) | TestPigTest.testSpecificOrderOutput and testSpecificOrderOutputForAlias failing |  Trivial | . | Koji Noguchi | Koji Noguchi |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-5109](https://issues.apache.org/jira/browse/PIG-5109) | Remove HadoopJobHistoryLoader |  Major | piggybank | Adam Szita | Adam Szita |


