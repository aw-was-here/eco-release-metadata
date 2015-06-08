
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

## Release 0.13.0 - 2014-07-03

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-3926](https://issues.apache.org/jira/browse/PIG-3926) | ROUND\_TO function: rounds double/float to fixed number of decimal places |  Minor | . | Philip (flip) Kromer | Philip (flip) Kromer |
| [PIG-3765](https://issues.apache.org/jira/browse/PIG-3765) | Ability to disable Pig commands and operators |  Major | documentation, grunt | Prashant Kommireddi | Prashant Kommireddi |
| [PIG-3573](https://issues.apache.org/jira/browse/PIG-3573) | Provide StoreFunc and LoadFunc for Accumulo |  Major | internal-udfs | Josh Elser | Josh Elser |
| [PIG-3463](https://issues.apache.org/jira/browse/PIG-3463) | Pig should use hadoop local mode for small jobs |  Major | impl | Aniket Mokashi | Aniket Mokashi |
| [PIG-3419](https://issues.apache.org/jira/browse/PIG-3419) | Pluggable Execution Engine |  Minor | . | Achal Soni | Achal Soni |
| [PIG-3238](https://issues.apache.org/jira/browse/PIG-3238) | Pig current releases lack a UDF Stuff(). This UDF deletes a specified length of characters and inserts another set of characters at a specified starting point. |  Major | piggybank | Sonu Prathap | Nezih Yigitbasi |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-3966](https://issues.apache.org/jira/browse/PIG-3966) | Document variable input arguments of UDFs |  Major | documentation | Lorand Bendig | Lorand Bendig |
| [PIG-3963](https://issues.apache.org/jira/browse/PIG-3963) | Documentation for BagToString UDF |  Minor | documentation | Philip (flip) Kromer | Philip (flip) Kromer |
| [PIG-3941](https://issues.apache.org/jira/browse/PIG-3941) | Piggybank's Over UDF returns an output schema with named fields |  Minor | piggybank | Philip (flip) Kromer | Philip (flip) Kromer |
| [PIG-3932](https://issues.apache.org/jira/browse/PIG-3932) | Document ROUND\_TO builtin UDF |  Major | documentation | Cheolsoo Park | Philip (flip) Kromer |
| [PIG-3914](https://issues.apache.org/jira/browse/PIG-3914) | Change TaskContext to abstract class |  Major | impl | Cheolsoo Park | Cheolsoo Park |
| [PIG-3901](https://issues.apache.org/jira/browse/PIG-3901) | Organize the Pig properties file and document all properties |  Minor | . | Philip (flip) Kromer | Philip (flip) Kromer |
| [PIG-3885](https://issues.apache.org/jira/browse/PIG-3885) | AccumuloStorage incompatible with Accumulo 1.6.0 |  Major | . | Josh Elser | Josh Elser |
| [PIG-3884](https://issues.apache.org/jira/browse/PIG-3884) | Move multi store counters to PigStatsUtil from MRPigStatsUtil |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-3865](https://issues.apache.org/jira/browse/PIG-3865) | Remodel the XMLLoader to work to be faster and more maintainable |  Minor | piggybank | Ahmed Eldawy | Ahmed Eldawy |
| [PIG-3844](https://issues.apache.org/jira/browse/PIG-3844) | Make ScriptState InheritableThreadLocal for threads that need it |  Major | . | Akihiro Matsukawa | Akihiro Matsukawa |
| [PIG-3800](https://issues.apache.org/jira/browse/PIG-3800) | Documentation for Pig whitelist and blacklist features |  Major | . | Prashant Kommireddi | Prashant Kommireddi |
| [PIG-3793](https://issues.apache.org/jira/browse/PIG-3793) | Provide info on number of LogicalRelationalOperator(s) used in the script through LogicalPlanData |  Major | data | Prashant Kommireddi | Prashant Kommireddi |
| [PIG-3778](https://issues.apache.org/jira/browse/PIG-3778) | Log list of running jobs along with progress |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-3731](https://issues.apache.org/jira/browse/PIG-3731) | Ability to specify local-mode specific configuration (useful for local/auto-local mode) |  Major | . | Aniket Mokashi | Aniket Mokashi |
| [PIG-3653](https://issues.apache.org/jira/browse/PIG-3653) | Add support for pre-deployed jars |  Major | . | Travis Woodruff | Travis Woodruff |
| [PIG-3648](https://issues.apache.org/jira/browse/PIG-3648) | Make the sample size for RandomSampleLoader configurable |  Minor | impl | Cheolsoo Park | Cheolsoo Park |
| [PIG-3645](https://issues.apache.org/jira/browse/PIG-3645) | Move FileLocalizer.setR() calls to unit tests |  Minor | impl | Cheolsoo Park | Cheolsoo Park |
| [PIG-3642](https://issues.apache.org/jira/browse/PIG-3642) | Direct HDFS access for small jobs (fetch) |  Major | . | Lorand Bendig | Lorand Bendig |
| [PIG-3619](https://issues.apache.org/jira/browse/PIG-3619) | Provide XPath function |  Major | piggybank | Saad Patel | Saad Patel |
| [PIG-3580](https://issues.apache.org/jira/browse/PIG-3580) | MIN, MAX and AVG functions for BigDecimal and BigInteger |  Critical | internal-udfs | Hariharasudhan Chinnan | Hariharasudhan Chinnan |
| [PIG-3569](https://issues.apache.org/jira/browse/PIG-3569) | SUM function for BigDecimal and BigInteger |  Critical | internal-udfs | Hariharasudhan Chinnan | Hariharasudhan Chinnan |
| [PIG-3563](https://issues.apache.org/jira/browse/PIG-3563) | support adding archives to the distributed cache |  Minor | . | Jim Donofrio | Jim Donofrio |
| [PIG-3551](https://issues.apache.org/jira/browse/PIG-3551) | Minor typo on pig latin basics page |  Trivial | site | Josh Elser | Josh Elser |
| [PIG-3542](https://issues.apache.org/jira/browse/PIG-3542) | Javadoc of REGEX\_EXTRACT\_ALL |  Minor | documentation | Nezih Yigitbasi | Nezih Yigitbasi |
| [PIG-3522](https://issues.apache.org/jira/browse/PIG-3522) | Remove shock from pig |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-3505](https://issues.apache.org/jira/browse/PIG-3505) | Make AvroStorage sync interval take default from io.file.buffer.size |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-3484](https://issues.apache.org/jira/browse/PIG-3484) | Make the size of pig.script property configurable |  Major | impl | Cheolsoo Park | Cheolsoo Park |
| [PIG-3388](https://issues.apache.org/jira/browse/PIG-3388) | No support for Regex for row filter in org.apache.pig.backend.hadoop.hbase.HBaseStorage |  Major | impl | vikram s | Lorand Bendig |
| [PIG-3299](https://issues.apache.org/jira/browse/PIG-3299) | Provide support for LazyOutputFormat to avoid creating empty files |  Major | . | Rohini Palaniswamy | Lorand Bendig |
| [PIG-2672](https://issues.apache.org/jira/browse/PIG-2672) | Optimize the use of DistributedCache |  Major | . | Rohini Palaniswamy | Aniket Mokashi |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4037](https://issues.apache.org/jira/browse/PIG-4037) | TestHBaseStorage, TestAccumuloPigCluster has failures with hadoopversion=23 |  Major | . | Rohini Palaniswamy | Daniel Dai |
| [PIG-4036](https://issues.apache.org/jira/browse/PIG-4036) | Fix e2e failures - JobManagement\_3, CmdErrors\_3 and BigData\_4 |  Major | . | Rohini Palaniswamy | Daniel Dai |
| [PIG-4030](https://issues.apache.org/jira/browse/PIG-4030) | TestGrunt, TestPigRunner fail after PIG-3892 |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-4029](https://issues.apache.org/jira/browse/PIG-4029) | TestMRCompiler is broken after PIG-3874 |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-4021](https://issues.apache.org/jira/browse/PIG-4021) | Fix TestHBaseStorage failure after auto local mode change (PIG-3463) |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4017](https://issues.apache.org/jira/browse/PIG-4017) | NPE thrown from JobControlCompiler.shipToHdfs |  Trivial | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-4000](https://issues.apache.org/jira/browse/PIG-4000) | Minor documentation fix for PIG-3642 |  Minor | documentation | Lorand Bendig | Lorand Bendig |
| [PIG-3999](https://issues.apache.org/jira/browse/PIG-3999) | Document PIG-3388 |  Trivial | documentation | Lorand Bendig | Lorand Bendig |
| [PIG-3998](https://issues.apache.org/jira/browse/PIG-3998) | Documentation fix: invalid page links, wrong Groovy udf example |  Minor | documentation | Lorand Bendig | Lorand Bendig |
| [PIG-3997](https://issues.apache.org/jira/browse/PIG-3997) | Issue on Pig docs ( Testing and Diagnostics ) |  Major | documentation | Jeff Zhang | Jeff Zhang |
| [PIG-3996](https://issues.apache.org/jira/browse/PIG-3996) | Delete zebra from svn |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-3991](https://issues.apache.org/jira/browse/PIG-3991) | TestErrorHandling.tesNegative7 is broken in trunk/branch-0.13 |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-3990](https://issues.apache.org/jira/browse/PIG-3990) | ant docs is broken in trunk/branch-0.13 |  Major | documentation | Cheolsoo Park | Cheolsoo Park |
| [PIG-3989](https://issues.apache.org/jira/browse/PIG-3989) | PIG\_OPTS does not work with some version of HADOOP |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-3976](https://issues.apache.org/jira/browse/PIG-3976) | Typo correction in JobStats breaks Oozie |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-3975](https://issues.apache.org/jira/browse/PIG-3975) | Multiple Scalar reference calls leading to missing records |  Critical | . | Koji Noguchi | Koji Noguchi |
| [PIG-3967](https://issues.apache.org/jira/browse/PIG-3967) | Grunt fail if we running more statement after first store |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-3960](https://issues.apache.org/jira/browse/PIG-3960) | Compile fail against Hadoop 2.4.0 after PIG-3913 |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-3958](https://issues.apache.org/jira/browse/PIG-3958) | TestMRJobStats is broken in 0.13 and trunk |  Major | . | Cheolsoo Park | Aniket Mokashi |
| [PIG-3955](https://issues.apache.org/jira/browse/PIG-3955) | Remove url.openStream() file descriptor leak from JCC |  Trivial | . | Aniket Mokashi | Aniket Mokashi |
| [PIG-3950](https://issues.apache.org/jira/browse/PIG-3950) | Removing empty file PColFilterExtractor.java speeds up rebuilds |  Trivial | build | Philip (flip) Kromer | Philip (flip) Kromer |
| [PIG-3949](https://issues.apache.org/jira/browse/PIG-3949) | HiveColumnarStorage compile failure with Hive 0.14.0 |  Major | build | Daniel Dai | Daniel Dai |
| [PIG-3945](https://issues.apache.org/jira/browse/PIG-3945) | Ant not sending hadoopversion to piggybank sub-ant |  Major | build, piggybank | Philip (flip) Kromer | Philip (flip) Kromer |
| [PIG-3944](https://issues.apache.org/jira/browse/PIG-3944) | PigNullableWritable toString method throws NPE on null value |  Major | . | Manu Zhang | Manu Zhang |
| [PIG-3940](https://issues.apache.org/jira/browse/PIG-3940) | NullPointerException writing .pig\_header for field with null name (in JsonMetadata.java) |  Major | impl | Philip (flip) Kromer | Philip (flip) Kromer |
| [PIG-3936](https://issues.apache.org/jira/browse/PIG-3936) | DBStorage fails on storing nulls for non varchar columns |  Major | piggybank | Jeremy Karn | Jeremy Karn |
| [PIG-3930](https://issues.apache.org/jira/browse/PIG-3930) | "java.io.IOException: Cannot initialize Cluster" in local mode with hadoopversion=23 dependencies |  Critical | build | Gera Shegalov | Gera Shegalov |
| [PIG-3929](https://issues.apache.org/jira/browse/PIG-3929) | pig.temp.dir should allow to substitute vars as hadoop configuration does |  Major | . | Aniket Mokashi | Aniket Mokashi |
| [PIG-3923](https://issues.apache.org/jira/browse/PIG-3923) | Gitignore file should ignore all generated artifacts |  Trivial | build | Philip (flip) Kromer | Philip (flip) Kromer |
| [PIG-3922](https://issues.apache.org/jira/browse/PIG-3922) | Increase Forrest heap size to avoid OutOfMemoryError building docs |  Minor | . | Philip (flip) Kromer | Philip (flip) Kromer |
| [PIG-3921](https://issues.apache.org/jira/browse/PIG-3921) | Obsolete entries in piggybank javadoc build script |  Minor | piggybank | Philip (flip) Kromer | Philip (flip) Kromer |
| [PIG-3916](https://issues.apache.org/jira/browse/PIG-3916) | isEmpty should not be early terminating |  Critical | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-3915](https://issues.apache.org/jira/browse/PIG-3915) | MapReduce queries in Pigmix outputs different results than Pig's |  Major | tools | Keren Ouaknine | Keren Ouaknine |
| [PIG-3913](https://issues.apache.org/jira/browse/PIG-3913) | Pig should use job's jobClient wherever possible (fixes local mode counters) |  Major | . | Aniket Mokashi | Aniket Mokashi |
| [PIG-3909](https://issues.apache.org/jira/browse/PIG-3909) | Type Casting issue |  Major | parser | Hongchang Li | Daniel Dai |
| [PIG-3905](https://issues.apache.org/jira/browse/PIG-3905) | 0.12.1 release can't be build for Hadoop2 |  Blocker | build | Konstantin Boudnik | Daniel Dai |
| [PIG-3902](https://issues.apache.org/jira/browse/PIG-3902) | PigServer creates cycle |  Major | . | Jacob Perkins | Jacob Perkins |
| [PIG-3895](https://issues.apache.org/jira/browse/PIG-3895) | Pigmix run script has compilation error |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-3894](https://issues.apache.org/jira/browse/PIG-3894) | Datetime function AddDuration, SubtractDuration and all Between functions don't check for null values in the input tuple. |  Major | . | Jenny Thompson | Jenny Thompson |
| [PIG-3892](https://issues.apache.org/jira/browse/PIG-3892) | Pig distribution for hadoop 2 |  Major | build | Daniel Dai | Daniel Dai |
| [PIG-3889](https://issues.apache.org/jira/browse/PIG-3889) | Direct fetch doesn't set job submission timestamps |  Major | . | Lorand Bendig | Lorand Bendig |
| [PIG-3888](https://issues.apache.org/jira/browse/PIG-3888) | Direct fetch doesn't differentiate between frontend and backend sides |  Major | . | Lorand Bendig | Lorand Bendig |
| [PIG-3887](https://issues.apache.org/jira/browse/PIG-3887) | TestMRJobStats is broken in trunk |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-3882](https://issues.apache.org/jira/browse/PIG-3882) | Multiquery off mode execution is not done in batch and very inefficient |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-3874](https://issues.apache.org/jira/browse/PIG-3874) | FileLocalizer temp path can sometimes be non-unique |  Major | . | Mona Chitnis | Mona Chitnis |
| [PIG-3871](https://issues.apache.org/jira/browse/PIG-3871) | Replace org.python.google.* with com.google.* in imports |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-3868](https://issues.apache.org/jira/browse/PIG-3868) | Fix Iterator\_1 e2e test on windows |  Major | e2e harness | Sergey Svinarchuk | Sergey Svinarchuk |
| [PIG-3867](https://issues.apache.org/jira/browse/PIG-3867) | Added hadoop home to build classpath for build pig with unit test on windows |  Major | build | Sergey Svinarchuk | Sergey Svinarchuk |
| [PIG-3860](https://issues.apache.org/jira/browse/PIG-3860) | Refactor PigStatusReporter and PigLogger for non-MR execution engine |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-3859](https://issues.apache.org/jira/browse/PIG-3859) | auto local mode should not modify reducer configuration |  Trivial | . | Aniket Mokashi | Aniket Mokashi |
| [PIG-3858](https://issues.apache.org/jira/browse/PIG-3858) | PigLogger/PigStatusReporter is not set for fetch tasks |  Major | . | Lorand Bendig | Lorand Bendig |
| [PIG-3837](https://issues.apache.org/jira/browse/PIG-3837) | ant pigperf target is broken in trunk |  Major | build | Cheolsoo Park | Cheolsoo Park |
| [PIG-3836](https://issues.apache.org/jira/browse/PIG-3836) | Pig signature has has guava version dependency |  Major | . | Akihiro Matsukawa | Akihiro Matsukawa |
| [PIG-3833](https://issues.apache.org/jira/browse/PIG-3833) | Relation loaded by AvroStorage with schema is projected incorrectly in foreach statement. |  Major | . | Jeongjin Ku | Jeongjin Ku |
| [PIG-3832](https://issues.apache.org/jira/browse/PIG-3832) | Fix piggybank test compilation failure after PIG-3449 |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-3827](https://issues.apache.org/jira/browse/PIG-3827) | Custom partitioner is not picked up with secondary sort optimization |  Major | . | Prashant Kommireddi | Daniel Dai |
| [PIG-3826](https://issues.apache.org/jira/browse/PIG-3826) | Outer join with PushDownForEachFlatten generates wrong result |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-3825](https://issues.apache.org/jira/browse/PIG-3825) | Stats collection needs to be changed for hadoop2 (with auto local mode) |  Major | . | Aniket Mokashi | Aniket Mokashi |
| [PIG-3820](https://issues.apache.org/jira/browse/PIG-3820) | TestAvroStorage fail on some OS |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-3819](https://issues.apache.org/jira/browse/PIG-3819) | e2e tests containing "perl -e "print $\_;" fails on Hadoop 2 |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-3818](https://issues.apache.org/jira/browse/PIG-3818) | PIG-2499 is accidently reverted |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-3816](https://issues.apache.org/jira/browse/PIG-3816) | Incorrect Javadoc for launchPlan() method |  Trivial | documentation | Kyungho Jeon | Kyungho Jeon |
| [PIG-3815](https://issues.apache.org/jira/browse/PIG-3815) | Hadoop bug causes to pig to fail silently with jar cache |  Major | . | Aniket Mokashi | Aniket Mokashi |
| [PIG-3813](https://issues.apache.org/jira/browse/PIG-3813) | Rank column is assigned different uids everytime when schema is reset |  Critical | impl | Suhas Satish | Cheolsoo Park |
| [PIG-3812](https://issues.apache.org/jira/browse/PIG-3812) | Several clean-ups in PigStats and JobStats |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-3811](https://issues.apache.org/jira/browse/PIG-3811) | PigServer.registerScript() wraps exception incorrectly on parsing errors |  Major | . | Prashant Kommireddi | Prashant Kommireddi |
| [PIG-3809](https://issues.apache.org/jira/browse/PIG-3809) | AddForEach optimization doesn't set the alias of the added foreach |  Major | impl | Cheolsoo Park | Cheolsoo Park |
| [PIG-3807](https://issues.apache.org/jira/browse/PIG-3807) | Pig creates wrong schema after dereferencing nested tuple fields with sorts |  Major | parser | David Dreyfus | Daniel Dai |
| [PIG-3806](https://issues.apache.org/jira/browse/PIG-3806) | PigServer constructor throws NPE after PIG-3765 |  Major | . | Aniket Mokashi | Aniket Mokashi |
| [PIG-3805](https://issues.apache.org/jira/browse/PIG-3805) | ToString(datetime [, format string]) doesn't work without the second argument |  Minor | internal-udfs | Jenny Thompson | Jenny Thompson |
| [PIG-3802](https://issues.apache.org/jira/browse/PIG-3802) | Fix TestBlackAndWhitelistValidator failures |  Major | . | Prashant Kommireddi | Prashant Kommireddi |
| [PIG-3801](https://issues.apache.org/jira/browse/PIG-3801) | Auto local mode does not call storeSchema |  Major | . | Aniket Mokashi | Aniket Mokashi |
| [PIG-3798](https://issues.apache.org/jira/browse/PIG-3798) | registered jar in pig script are appended to the classpath multiple times |  Major | . | Dotan Patrich | Cheolsoo Park |
| [PIG-3796](https://issues.apache.org/jira/browse/PIG-3796) | PigStats output bytes written not collected for relative paths |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-3794](https://issues.apache.org/jira/browse/PIG-3794) | pig -useHCatalog fails using pig command line interface on HDInsight |  Major | . | Eric Hanson | Eric Hanson |
| [PIG-3782](https://issues.apache.org/jira/browse/PIG-3782) | PushDownForEachFlatten + ColumnMapKeyPrune with user defined schema failing due to incorrect UID assignment |  Major | . | Koji Noguchi | Daniel Dai |
| [PIG-3779](https://issues.apache.org/jira/browse/PIG-3779) | Assert constructs ConstantExpression with null when no comment is given |  Major | . | Cheolsoo Park | Jacob Perkins |
| [PIG-3776](https://issues.apache.org/jira/browse/PIG-3776) | Conflicting versions of jline is present in trunk |  Major | build | Cheolsoo Park | Cheolsoo Park |
| [PIG-3774](https://issues.apache.org/jira/browse/PIG-3774) | Piggybank Over UDF get wrong result |  Major | piggybank | Daniel Dai | Daniel Dai |
| [PIG-3771](https://issues.apache.org/jira/browse/PIG-3771) | Piggybank Avrostorage makes a lot of namenode calls in the backend |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-3755](https://issues.apache.org/jira/browse/PIG-3755) | auto local mode selection does not check lower bound for size |  Trivial | . | Aniket Mokashi | Aniket Mokashi |
| [PIG-3754](https://issues.apache.org/jira/browse/PIG-3754) | InputSizeReducerEstimator.getTotalInputFileSize reports incorrect size |  Trivial | . | Aniket Mokashi | Aniket Mokashi |
| [PIG-3753](https://issues.apache.org/jira/browse/PIG-3753) | LOGenerate generates null schema |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-3752](https://issues.apache.org/jira/browse/PIG-3752) | Fix e2e Parallel test for Windows |  Major | e2e harness | Daniel Dai | Daniel Dai |
| [PIG-3747](https://issues.apache.org/jira/browse/PIG-3747) | Update skewed join documentation |  Major | documentation | Cheolsoo Park | Cheolsoo Park |
| [PIG-3746](https://issues.apache.org/jira/browse/PIG-3746) | NPE is thrown if Pig fails before PigStats is intialized |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-3744](https://issues.apache.org/jira/browse/PIG-3744) | SequenceFileLoader does not support BytesWritable |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-3741](https://issues.apache.org/jira/browse/PIG-3741) | Utils.setTmpFileCompressionOnConf can cause side effect for SequenceFileInterStorage |  Major | . | Aniket Mokashi | Aniket Mokashi |
| [PIG-3739](https://issues.apache.org/jira/browse/PIG-3739) | The Warning\_4 e2e test is broken in trunk |  Major | . | Cheolsoo Park | Aniket Mokashi |
| [PIG-3737](https://issues.apache.org/jira/browse/PIG-3737) | Bundle dependent jars in distribution in %PIG\_HOME%/lib folder |  Major | . | Shuaishuai Nie | Daniel Dai |
| [PIG-3730](https://issues.apache.org/jira/browse/PIG-3730) | Performance issue in SelfSpillBag |  Major | impl | Rajesh Balamohan | Rajesh Balamohan |
| [PIG-3726](https://issues.apache.org/jira/browse/PIG-3726) | Ranking empty records leads to NullPointerException |  Major | . | Mykhaylo Telizhyn | Jarek Jarcec Cecho |
| [PIG-3722](https://issues.apache.org/jira/browse/PIG-3722) | Udf deserialization for registered classes fails in local\_mode |  Major | . | Aniket Mokashi | Aniket Mokashi |
| [PIG-3717](https://issues.apache.org/jira/browse/PIG-3717) | AvroStorage is not filtering hidden files on directory recursion |  Major | . | Jarek Jarcec Cecho | Jarek Jarcec Cecho |
| [PIG-3682](https://issues.apache.org/jira/browse/PIG-3682) | mvn-inst target does not install pig-h2.jar into local .m2 |  Major | build | Raja Aluri | Raja Aluri |
| [PIG-3679](https://issues.apache.org/jira/browse/PIG-3679) | e2e StreamingPythonUDFs\_10 fails in trunk |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-3677](https://issues.apache.org/jira/browse/PIG-3677) | ConfigurationUtil.getLocalFSProperties can return an inconsistent property set |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-3675](https://issues.apache.org/jira/browse/PIG-3675) | Documentation for AccumuloStorage |  Major | documentation | Daniel Dai | Josh Elser |
| [PIG-3674](https://issues.apache.org/jira/browse/PIG-3674) | Fix TestAccumuloPigCluster on Hadoop 2 |  Major | internal-udfs | Daniel Dai | Josh Elser |
| [PIG-3673](https://issues.apache.org/jira/browse/PIG-3673) | Divide by zero error in runpigmix.pl script |  Major | . | Suhas Satish | Suhas Satish |
| [PIG-3672](https://issues.apache.org/jira/browse/PIG-3672) | Pig should not check for hardcoded file system implementations |  Major | data, parser | Suhas Satish | Rohini Palaniswamy |
| [PIG-3670](https://issues.apache.org/jira/browse/PIG-3670) | Fix assert in Pig script |  Major | impl | Daniel Dai | Lorand Bendig |
| [PIG-3664](https://issues.apache.org/jira/browse/PIG-3664) | Piggy Bank XPath UDF can't be called |  Blocker | . | Nezih Yigitbasi | Nezih Yigitbasi |
| [PIG-3662](https://issues.apache.org/jira/browse/PIG-3662) | Static loadcaster in BinStorage can cause exception |  Major | . | Lorand Bendig | Lorand Bendig |
| [PIG-3661](https://issues.apache.org/jira/browse/PIG-3661) | Piggybank AvroStorage fails if used in more than one load or store statement |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-3657](https://issues.apache.org/jira/browse/PIG-3657) | New partition filter extractor fails with NPE |  Major | impl | Cheolsoo Park | Cheolsoo Park |
| [PIG-3652](https://issues.apache.org/jira/browse/PIG-3652) | Pigmix parser (PigPerformanceLoader) deletes chars during parsing |  Major | parser | Keren Ouaknine | Keren Ouaknine |
| [PIG-3650](https://issues.apache.org/jira/browse/PIG-3650) | Fix for PIG-3100 breaks column pruning |  Critical | . | Travis Woodruff | Travis Woodruff |
| [PIG-3649](https://issues.apache.org/jira/browse/PIG-3649) | POPartialAgg incorrectly calculates size reduction when multiple values aggregated |  Major | . | Travis Woodruff | Travis Woodruff |
| [PIG-3643](https://issues.apache.org/jira/browse/PIG-3643) | Nested Foreach with UDF and bincond is broken |  Major | . | Rohini Palaniswamy | Cheolsoo Park |
| [PIG-3640](https://issues.apache.org/jira/browse/PIG-3640) | Retain intermediate files for debugging purpose in batch mode |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-3639](https://issues.apache.org/jira/browse/PIG-3639) | TestRegisteredJarVisibility is broken in trunk |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-3637](https://issues.apache.org/jira/browse/PIG-3637) | PigCombiner creating log spam |  Minor | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-3633](https://issues.apache.org/jira/browse/PIG-3633) | AvroStorage tests are failing when running against Avro 1.7.5 |  Minor | . | Jarek Jarcec Cecho | Jarek Jarcec Cecho |
| [PIG-3632](https://issues.apache.org/jira/browse/PIG-3632) | Add option to configure cacheBlocks in HBaseStorage |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-3627](https://issues.apache.org/jira/browse/PIG-3627) | Json storage : Doesn't work in cases , where other Store Functions (like PigStorage / AvroStorage) do work. |  Major | . | jay vyas | Sergey Svinarchuk |
| [PIG-3623](https://issues.apache.org/jira/browse/PIG-3623) | HBaseStorage: setting loadKey and noWAL to false doesn't have any affect |  Major | . | Michael Stefaniak | Nezih Yigitbasi |
| [PIG-3621](https://issues.apache.org/jira/browse/PIG-3621) | Python Avro library can't read Avros made with builtin AvroStorage |  Major | internal-udfs | Russell Jurney | Russell Jurney |
| [PIG-3617](https://issues.apache.org/jira/browse/PIG-3617) | problem with temp file deletion in MAPREDUCE operator |  Major | . | Nezih Yigitbasi | Nezih Yigitbasi |
| [PIG-3616](https://issues.apache.org/jira/browse/PIG-3616) | TestBuiltIn.testURIwithCurlyBrace() silently fails |  Minor | . | Lorand Bendig | Lorand Bendig |
| [PIG-3612](https://issues.apache.org/jira/browse/PIG-3612) | Storing schema does not work cross cluster with PigStorage and JsonStorage |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-3609](https://issues.apache.org/jira/browse/PIG-3609) | ClassCastException when calling compareTo method on AvroBagWrapper  |  Minor | impl | Richard Ding | Richard Ding |
| [PIG-3608](https://issues.apache.org/jira/browse/PIG-3608) | ClassCastException when looking up a value from AvroMapWrapper using a Utf8 key |  Minor | impl | Richard Ding | Richard Ding |
| [PIG-3607](https://issues.apache.org/jira/browse/PIG-3607) | PigRecordReader should report progress for each inputsplit processed |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-3606](https://issues.apache.org/jira/browse/PIG-3606) | Pig script throws error when searching for hcatalog jars in latest hive |  Major | tools | Deepesh Khandelwal | Deepesh Khandelwal |
| [PIG-3592](https://issues.apache.org/jira/browse/PIG-3592) | Should not try to create success file for non-fs schemes like hbase |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-3591](https://issues.apache.org/jira/browse/PIG-3591) | Refactor POPackage to separate MR specific code from packaging |  Major | . | Mark Wagner | Mark Wagner |
| [PIG-3590](https://issues.apache.org/jira/browse/PIG-3590) | remove PartitionFilterOptimizer from trunk |  Major | . | Aniket Mokashi | Aniket Mokashi |
| [PIG-3584](https://issues.apache.org/jira/browse/PIG-3584) | AvroStorage does not correctly translate arrays of strings |  Major | . | Joseph Adler | Joseph Adler |
| [PIG-3582](https://issues.apache.org/jira/browse/PIG-3582) | Document SUM, MIN, MAX, and AVG functions for BigInteger and BigDecimal |  Major | documentation | Cheolsoo Park | Hariharasudhan Chinnan |
| [PIG-3581](https://issues.apache.org/jira/browse/PIG-3581) | Incorrect scope resolution with nested foreach |  Major | . | Venu Satuluri | Aniket Mokashi |
| [PIG-3576](https://issues.apache.org/jira/browse/PIG-3576) | NPE due to PIG-3549 when job never gets submitted |  Trivial | . | Aniket Mokashi | Lorand Bendig |
| [PIG-3568](https://issues.apache.org/jira/browse/PIG-3568) | Define the semantics of POStatus.STATUS\_NULL |  Major | . | Mark Wagner | Mark Wagner |
| [PIG-3567](https://issues.apache.org/jira/browse/PIG-3567) | LogicalPlanPrinter throws OOM for large scripts |  Major | . | Aniket Mokashi | Aniket Mokashi |
| [PIG-3566](https://issues.apache.org/jira/browse/PIG-3566) | Cannot set useMatches of REGEX\_EXTRACT\_ALL and REGEX\_EXTRACT |  Major | . | Nezih Yigitbasi | Nezih Yigitbasi |
| [PIG-3561](https://issues.apache.org/jira/browse/PIG-3561) | Clean up PigStats and JobStats after PIG-3419 |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-3559](https://issues.apache.org/jira/browse/PIG-3559) | Trunk is broken by PIG-3522 |  Blocker | build | Cheolsoo Park | Cheolsoo Park |
| [PIG-3553](https://issues.apache.org/jira/browse/PIG-3553) | HadoopJobHistoryLoader fails to load job history on hadoop v 1.2 |  Major | piggybank | Lohit Giri | Lohit Giri |
| [PIG-3545](https://issues.apache.org/jira/browse/PIG-3545) | Seperate validation rules from optimizer |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-3530](https://issues.apache.org/jira/browse/PIG-3530) | Some e2e tests is broken due to PIG-3480 |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-3526](https://issues.apache.org/jira/browse/PIG-3526) | Unions with Enums do not work with AvroStorage |  Major | internal-udfs | Joseph Adler | Joseph Adler |
| [PIG-3525](https://issues.apache.org/jira/browse/PIG-3525) | PigStats.get() and ScriptState.get() shouldn't return MR-specific objects |  Major | impl | Cheolsoo Park | Cheolsoo Park |
| [PIG-3524](https://issues.apache.org/jira/browse/PIG-3524) | Clean up Launcher and MapReduceLauncher after PIG-3419 |  Major | impl | Cheolsoo Park | Cheolsoo Park |
| [PIG-3520](https://issues.apache.org/jira/browse/PIG-3520) | Provide backward compatibility for PigRunner and PPNL after PIG-3419 |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-3518](https://issues.apache.org/jira/browse/PIG-3518) | Need to ship jruby.jar in the release |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-3516](https://issues.apache.org/jira/browse/PIG-3516) | pig does not bring in joda-time as dependency in its pig-template.xml |  Major | build | Daniel Dai | Daniel Dai |
| [PIG-3515](https://issues.apache.org/jira/browse/PIG-3515) | Shell commands are limited from OS buffer |  Major | parser | Anastasis Andronidis | Anastasis Andronidis |
| [PIG-3511](https://issues.apache.org/jira/browse/PIG-3511) | Security: Pig temporary directories might have world readable permissions |  Major | . | Aniket Mokashi | Rohini Palaniswamy |
| [PIG-3509](https://issues.apache.org/jira/browse/PIG-3509) | Exception swallowing in TOP |  Major | . | Vijay Rajaram | Vijay Rajaram |
| [PIG-3508](https://issues.apache.org/jira/browse/PIG-3508) | 'explain' now showing logical plan BEFORE the necessary optimization (ImplicitSplitInserter, DuplicateForEachColumnRewrite,etc) |  Minor | parser | Koji Noguchi |  |
| [PIG-3506](https://issues.apache.org/jira/browse/PIG-3506) | FLOOR documentation references CEIL function instead of FLOOR |  Trivial | documentation | Seshadri Mahalingam | Seshadri Mahalingam |
| [PIG-3496](https://issues.apache.org/jira/browse/PIG-3496) | Propagate HBase 0.95 jars to the backend |  Minor | . | Jarek Jarcec Cecho | Jarek Jarcec Cecho |
| [PIG-3469](https://issues.apache.org/jira/browse/PIG-3469) | Skewed join can cause unrecoverable NullPointerException when one of its inputs is missing. |  Major | . | Christon DeWan | Jarek Jarcec Cecho |
| [PIG-3464](https://issues.apache.org/jira/browse/PIG-3464) | Mark ExecType and ExecutionEngine interfaces as evolving |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-3451](https://issues.apache.org/jira/browse/PIG-3451) | EvalFunc\<T\> ctor reflection to determine value of type param T is brittle |  Major | impl | Andy Schlaikjer | Andy Schlaikjer |
| [PIG-3447](https://issues.apache.org/jira/browse/PIG-3447) | Compiler warning message dropped for CastLineageSetter and others with no enum kind |  Trivial | . | Koji Noguchi | Koji Noguchi |
| [PIG-3444](https://issues.apache.org/jira/browse/PIG-3444) | CONCAT with 2+ input parameters fail |  Major | impl | Daniel Dai | Lorand Bendig |
| [PIG-3377](https://issues.apache.org/jira/browse/PIG-3377) | New AvroStorage throws NPE when storing untyped map/array/bag |  Major | internal-udfs | Cheolsoo Park | Joseph Adler |
| [PIG-3373](https://issues.apache.org/jira/browse/PIG-3373) | XMLLoader returns non-matching nodes when a tag name spans through the block boundary |  Major | piggybank | Ahmed Eldawy | Ahmed Eldawy |
| [PIG-3295](https://issues.apache.org/jira/browse/PIG-3295) | Casting from bytearray failing after Union (even when each field is from a single Loader) |  Minor | parser | Koji Noguchi | Koji Noguchi |
| [PIG-3285](https://issues.apache.org/jira/browse/PIG-3285) | Jobs using HBaseStorage fail to ship dependency jars |  Major | . | Nick Dimiduk | Nick Dimiduk |
| [PIG-2629](https://issues.apache.org/jira/browse/PIG-2629) | Wrong Usage of Scalar which is null causes high namenode operation |  Major | . | Anitha Raju | Rohini Palaniswamy |
| [PIG-2132](https://issues.apache.org/jira/browse/PIG-2132) | Piggybank: MIN and MAX functions should ignore nulls |  Minor | tools | Jonathan Coveney | Rekha Joshi |
| [PIG-1577](https://issues.apache.org/jira/browse/PIG-1577) | support to variable number of arguments in UDF |  Major | . | Olga Natkovich |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-3942](https://issues.apache.org/jira/browse/PIG-3942) | Util.buildPp() is incompatible with Non-MR execution engine |  Major | tez | Cheolsoo Park | Cheolsoo Park |
| [PIG-3471](https://issues.apache.org/jira/browse/PIG-3471) | Add a base abstract class for ExecutionEngine |  Major | tez | Cheolsoo Park | Cheolsoo Park |
| [PIG-3449](https://issues.apache.org/jira/browse/PIG-3449) | Move JobCreationException to org.apache.pig.backend.hadoop.executionengine |  Major | tez | Cheolsoo Park | Cheolsoo Park |
| [PIG-259](https://issues.apache.org/jira/browse/PIG-259) | allow store to overwrite existing directroy |  Major | . | Olga Natkovich | Nezih Yigitbasi |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4005](https://issues.apache.org/jira/browse/PIG-4005) | depend on hbase-hadoop2-compat rather than hbase-hadoop1-compat when hbaseversion is 95 |  Major | . | Xiaoshuang LU | Daniel Dai |
| [PIG-3777](https://issues.apache.org/jira/browse/PIG-3777) | Pig 12.0 Documentation |  Trivial | documentation | Karina Hauser | Karina Hauser |
| [PIG-3117](https://issues.apache.org/jira/browse/PIG-3117) | A debug mode in which pig does not delete temporary files |  Major | . | Ido Hadanny | Ido Hadanny |
| [PIG-3954](https://issues.apache.org/jira/browse/PIG-3954) | Document use of user level jar cache |  Major | . | Aniket Mokashi | Aniket Mokashi |
| [PIG-3898](https://issues.apache.org/jira/browse/PIG-3898) | Refactor PPNL for non-MR execution engine |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-3740](https://issues.apache.org/jira/browse/PIG-3740) | Document direct fetch optimization |  Major | documentation | Cheolsoo Park | Lorand Bendig |
| [PIG-3572](https://issues.apache.org/jira/browse/PIG-3572) | Fix all unit test for during build pig with Hadoop 2.X on Windows. |  Major | . | Sergey Svinarchuk | Sergey Svinarchuk |
| [PIG-3529](https://issues.apache.org/jira/browse/PIG-3529) | Upgrade HBase dependency from 0.95-SNAPSHOT to 0.96 |  Major | . | Jarek Jarcec Cecho | Jarek Jarcec Cecho |
| [PIG-3519](https://issues.apache.org/jira/browse/PIG-3519) | Remove dependency on uber avro-tools jar |  Major | . | Jarek Jarcec Cecho | Jarek Jarcec Cecho |
| [PIG-3485](https://issues.apache.org/jira/browse/PIG-3485) | Remove CastUtils.bytesToMap(byte[] b) method from LoadCaster interface |  Major | impl | Cheolsoo Park | Cheolsoo Park |


