
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

## Release 0.18.0 - Unreleased (as of 2018-09-05)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-5216](https://issues.apache.org/jira/browse/PIG-5216) | Customizable Error Handling for Loaders in Pig |  Major | . | Iris Zeng | Iris Zeng |
| [PIG-5251](https://issues.apache.org/jira/browse/PIG-5251) | Bump joda-time to 2.9.9 |  Major | . | Artem Ervits | Artem Ervits |
| [PIG-5237](https://issues.apache.org/jira/browse/PIG-5237) | Fix DOT file parsing to enable DOT-based physical plan testing |  Minor | tools | Adam Szita | Jakov Rabinovits |
| [PIG-5157](https://issues.apache.org/jira/browse/PIG-5157) | Upgrade to Spark 2.0 |  Major | spark | Nandor Kollar | Nandor Kollar |
| [PIG-5264](https://issues.apache.org/jira/browse/PIG-5264) | Remove deprecated keys from PigConfiguration |  Minor | . | Nandor Kollar | Nandor Kollar |
| [PIG-5288](https://issues.apache.org/jira/browse/PIG-5288) | Improve performance of PigTextRawBytesComparator |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-5282](https://issues.apache.org/jira/browse/PIG-5282) | Upgade to Java 8 |  Major | . | Nandor Kollar | Satish Subhashrao Saley |
| [PIG-5268](https://issues.apache.org/jira/browse/PIG-5268) | Review of org.apache.pig.backend.hadoop.datastorage.HDataStorage |  Trivial | data | BELUGA BEHR | BELUGA BEHR |
| [PIG-5298](https://issues.apache.org/jira/browse/PIG-5298) | Verify if org.mortbay.jetty is removable |  Major | . | Adam Szita | Nandor Kollar |
| [PIG-5272](https://issues.apache.org/jira/browse/PIG-5272) | BagToTuple output schema is incorrect |  Minor | . | Joshua Juen | Joshua Juen |
| [PIG-5302](https://issues.apache.org/jira/browse/PIG-5302) | Remove HttpClient dependency |  Major | . | Nandor Kollar | Nandor Kollar |
| [PIG-5316](https://issues.apache.org/jira/browse/PIG-5316) | Initialize mapred.task.id property for PoS jobs |  Major | spark | Adam Szita | Nandor Kollar |
| [PIG-5344](https://issues.apache.org/jira/browse/PIG-5344) | Update Apache HTTPD LogParser to latest version |  Major | . | Niels Basjes | Niels Basjes |
| [PIG-5349](https://issues.apache.org/jira/browse/PIG-5349) | Log stderr output when shell command fail |  Trivial | . | Koji Noguchi | Koji Noguchi |
| [PIG-5191](https://issues.apache.org/jira/browse/PIG-5191) | Pig HBase 2.0.0 support |  Major | . | Nandor Kollar | Nandor Kollar |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-5244](https://issues.apache.org/jira/browse/PIG-5244) | Several unit tests are failing in Tez mode after merging spark branch |  Major | tez | Nandor Kollar | Nandor Kollar |
| [PIG-5225](https://issues.apache.org/jira/browse/PIG-5225) | Several unit tests are not annotated with @Test |  Major | . | Nandor Kollar | Nandor Kollar |
| [PIG-4700](https://issues.apache.org/jira/browse/PIG-4700) | Enable progress reporting for Tasks in Tez |  Major | . | Rohini Palaniswamy | Satish Subhashrao Saley |
| [PIG-4548](https://issues.apache.org/jira/browse/PIG-4548) | Records Lost With Specific Combination of Commands and Streaming Function |  Major | . | Steve T | Koji Noguchi |
| [PIG-5263](https://issues.apache.org/jira/browse/PIG-5263) | Using wildcard doesn't work with OrcStorage |  Minor | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [PIG-5269](https://issues.apache.org/jira/browse/PIG-5269) | MapReduceLauncher and MRJobStats imports org.python.google.common.collect.Lists instead of org.google.common.collect.Lists |  Major | . | Nandor Kollar | Nandor Kollar |
| [PIG-5270](https://issues.apache.org/jira/browse/PIG-5270) | Typo in Pig Logging |  Minor | data | Andrew Hutton | Andrew Hutton |
| [PIG-4767](https://issues.apache.org/jira/browse/PIG-4767) | Partition filter not pushed down when filter clause references variable from another load path |  Major | . | Anthony Hsu | Koji Noguchi |
| [PIG-5274](https://issues.apache.org/jira/browse/PIG-5274) | TestEvalPipelineLocal#testSetLocationCalledInFE is failing in spark mode after PIG-5157 |  Major | . | Nandor Kollar | Nandor Kollar |
| [PIG-3655](https://issues.apache.org/jira/browse/PIG-3655) | BinStorage and InterStorage approach to record markers is broken |  Major | . | Jeff Plaisance | Adam Szita |
| [PIG-5276](https://issues.apache.org/jira/browse/PIG-5276) | building "jar" should not call "clean" |  Minor | build | Koji Noguchi | Nandor Kollar |
| [PIG-5278](https://issues.apache.org/jira/browse/PIG-5278) | Unit test failures because of PIG-5264 |  Major | . | Satish Subhashrao Saley | Nandor Kollar |
| [PIG-5284](https://issues.apache.org/jira/browse/PIG-5284) | Fix flakyness introduced by PIG-3655 |  Major | . | Adam Szita | Adam Szita |
| [PIG-5254](https://issues.apache.org/jira/browse/PIG-5254) | Hit Ctrl-D to quit grunt shell fail |  Major | impl | Daniel Dai | Weijun Qian |
| [PIG-5283](https://issues.apache.org/jira/browse/PIG-5283) | Configuration is not passed to SparkPigSplits on the backend |  Major | spark | Adam Szita | Adam Szita |
| [PIG-5287](https://issues.apache.org/jira/browse/PIG-5287) | bump jython to 2.7.1 |  Minor | . | Artem Ervits | Artem Ervits |
| [PIG-5294](https://issues.apache.org/jira/browse/PIG-5294) | Spark unit tests are always run in spark1 mode |  Major | build, spark | Adam Szita | Adam Szita |
| [PIG-5293](https://issues.apache.org/jira/browse/PIG-5293) | Suspicious code as missing \`this' for a member |  Major | . | JC | JC |
| [PIG-5290](https://issues.apache.org/jira/browse/PIG-5290) | User Cache upload contention can cause job failures |  Major | . | Erik Krogen | Erik Krogen |
| [PIG-5271](https://issues.apache.org/jira/browse/PIG-5271) | StackOverflowError when compiling in Tez mode (with union and replicated join) |  Major | . | Koji Noguchi | Koji Noguchi |
| [PIG-5307](https://issues.apache.org/jira/browse/PIG-5307) | NPE in TezOperDependencyParallelismEstimator |  Minor | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-5314](https://issues.apache.org/jira/browse/PIG-5314) | Abort method is not implemented in PigProcessor |  Major | . | Rohini Palaniswamy | Satish Subhashrao Saley |
| [PIG-5310](https://issues.apache.org/jira/browse/PIG-5310) | MergeJoin throwing NullPointer Exception |  Major | . | Satish Subhashrao Saley | Satish Subhashrao Saley |
| [PIG-5315](https://issues.apache.org/jira/browse/PIG-5315) | pig.script is not set for scripts run via PigServer |  Minor | . | Rohini Palaniswamy | Satish Subhashrao Saley |
| [PIG-5201](https://issues.apache.org/jira/browse/PIG-5201) | Null handling on FLATTEN |  Major | . | Koji Noguchi | Koji Noguchi |
| [PIG-5318](https://issues.apache.org/jira/browse/PIG-5318) | Unit test failures on Pig on Spark with Spark 2.2 |  Major | spark | Nandor Kollar | Nandor Kollar |
| [PIG-5300](https://issues.apache.org/jira/browse/PIG-5300) | hashCode for Bag needs to be order independent |  Major | . | Koji Noguchi | Koji Noguchi |
| [PIG-5312](https://issues.apache.org/jira/browse/PIG-5312) | Uids not set in inner schemas after UNION ONSCHEMA |  Major | . | Travis Woodruff | Travis Woodruff |
| [PIG-3864](https://issues.apache.org/jira/browse/PIG-3864) | ToDate(userstring, format, timezone) computes DateTime with strange handling of Daylight Saving Time with location based timezones |  Major | . | Frederic Schmaljohann | Daniel Dai |
| [PIG-5322](https://issues.apache.org/jira/browse/PIG-5322) | ConstantCalculator optimizer is not applied for split |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-5311](https://issues.apache.org/jira/browse/PIG-5311) | POReservoirSample fails for more than Integer.MAX\_VALUE records |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-5325](https://issues.apache.org/jira/browse/PIG-5325) | Schema disambiguation can't be turned off for nested schemas |  Major | . | Adam Szita | Adam Szita |
| [PIG-5327](https://issues.apache.org/jira/browse/PIG-5327) | Check for DAG status before trying to kill |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-5320](https://issues.apache.org/jira/browse/PIG-5320) | TestCubeOperator#testRollupBasic is flaky on Spark 2.2 |  Major | spark | Nandor Kollar | Nandor Kollar |
| [PIG-5328](https://issues.apache.org/jira/browse/PIG-5328) | expressionOperator Divide.equalsZero(DataType.BIGDECIMAL) is invalid |  Major | impl | Michael Howard | Michael Howard |
| [PIG-5333](https://issues.apache.org/jira/browse/PIG-5333) | LoadCaster sometimes not set for complex type |  Major | . | Koji Noguchi | Koji Noguchi |
| [PIG-5335](https://issues.apache.org/jira/browse/PIG-5335) | Error message from range projection completely misleading |  Major | . | Koji Noguchi | Koji Noguchi |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4120](https://issues.apache.org/jira/browse/PIG-4120) | Broadcast the index file in case of POMergeCoGroup and POMergeJoin |  Major | tez | Rohini Palaniswamy | Satish Subhashrao Saley |
| [PIG-5305](https://issues.apache.org/jira/browse/PIG-5305) | Enable yarn-client mode execution of tests in Spark (1) mode |  Major | spark | Adam Szita | Adam Szita |
| [PIG-4092](https://issues.apache.org/jira/browse/PIG-4092) | Predicate pushdown for Parquet |  Major | . | Rohini Palaniswamy | Nandor Kollar |


