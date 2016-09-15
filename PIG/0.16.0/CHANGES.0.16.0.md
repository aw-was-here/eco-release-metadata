
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

## Release 0.16.0 - 2016-06-08



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4570](https://issues.apache.org/jira/browse/PIG-4570) | Allow AvroStorage to use a class for the schema |  Minor | . | Paul Mazak | Paul Mazak |
| [PIG-4639](https://issues.apache.org/jira/browse/PIG-4639) | Add better parser for Apache HTTPD access log. |  Major | piggybank | Niels Basjes | Niels Basjes |
| [PIG-4673](https://issues.apache.org/jira/browse/PIG-4673) | Built In UDF - REPLACE\_MULTI : For a given string, search and replace all occurrences of search keys with replacement values. |  Minor | piggybank | Murali Rao | Murali Rao |
| [PIG-4796](https://issues.apache.org/jira/browse/PIG-4796) | Authenticate with Kerberos using a keytab file |  Major | . | Niels Basjes | Niels Basjes |
| [PIG-4526](https://issues.apache.org/jira/browse/PIG-4526) | Make setting up the build environment easier |  Major | . | Niels Basjes | Niels Basjes |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4578](https://issues.apache.org/jira/browse/PIG-4578) | ToDateISO should support optional \' \' space variant used by JDBC |  Minor | internal-udfs | Michael Howard | Michael Howard |
| [PIG-3622](https://issues.apache.org/jira/browse/PIG-3622) | Allow casting bytearray fields to bytearray type |  Minor | . | Redis Liu | Redis Liu |
| [PIG-4405](https://issues.apache.org/jira/browse/PIG-4405) | Adding \'map[]\' support to mock/Storage |  Major | . | Niels Basjes | Niels Basjes |
| [PIG-4638](https://issues.apache.org/jira/browse/PIG-4638) | Allow TOMAP to accept dynamically sized input |  Major | . | Niels Basjes | Niels Basjes |
| [PIG-4651](https://issues.apache.org/jira/browse/PIG-4651) | Optimize NullablePartitionWritable serialization for skewed join |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4676](https://issues.apache.org/jira/browse/PIG-4676) | Upgrade Hive to 1.2.1 |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4663](https://issues.apache.org/jira/browse/PIG-4663) | HBaseStorage should allow the MaxResultsPerColumnFamily limit to avoid memory or scan timeout issues |  Major | . | Paul Mazak | Paul Mazak |
| [PIG-3957](https://issues.apache.org/jira/browse/PIG-3957) | Refactor out resetting input key in TezDagBuilder |  Major | tez | Daniel Dai | Rohini Palaniswamy |
| [PIG-4554](https://issues.apache.org/jira/browse/PIG-4554) | Compress pig.script before encoding |  Major | . | Rohini Palaniswamy | Sandeep Samdaria |
| [PIG-4699](https://issues.apache.org/jira/browse/PIG-4699) | Print Job stats information in Tez like mapreduce |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4702](https://issues.apache.org/jira/browse/PIG-4702) | Load once for sampling and partitioning in order by for certain LoadFuncs |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4697](https://issues.apache.org/jira/browse/PIG-4697) | Serialize relevant part of the udfcontext per vertex to reduce payload size |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4708](https://issues.apache.org/jira/browse/PIG-4708) | Upgrade joda-time to 2.8 |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4717](https://issues.apache.org/jira/browse/PIG-4717) | Update Apache HTTPD LogParser to latest version |  Major | . | Niels Basjes | Niels Basjes |
| [PIG-4704](https://issues.apache.org/jira/browse/PIG-4704) | Customizable Error Handling for Storers in Pig |  Major | . | Siddhi Mehta | Siddhi Mehta |
| [PIG-3251](https://issues.apache.org/jira/browse/PIG-3251) | Bzip2TextInputFormat requires double the memory of maximum record size |  Major | . | Koji Noguchi | Koji Noguchi |
| [PIG-4417](https://issues.apache.org/jira/browse/PIG-4417) | Pig\'s register command should support automatic fetching of jars from repo. |  Major | . | Akshay Rai | Akshay Rai |
| [PIG-4744](https://issues.apache.org/jira/browse/PIG-4744) | Honor tez.staging-dir setting in tez-site.xml |  Major | tez | Daniel Dai | Rohini Palaniswamy |
| [PIG-4411](https://issues.apache.org/jira/browse/PIG-4411) | Support for vertex level configuration like speculative execution |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4787](https://issues.apache.org/jira/browse/PIG-4787) | Log JSONLoader exception while parsing records |  Minor | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4792](https://issues.apache.org/jira/browse/PIG-4792) | Do not add java and sun system properties to jobconf |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4761](https://issues.apache.org/jira/browse/PIG-4761) | Add more information to front end error messages |  Major | . | Eyal Allweil | Eyal Allweil |
| [PIG-4802](https://issues.apache.org/jira/browse/PIG-4802) | Autoparallelism should estimate less when there is combiner |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4803](https://issues.apache.org/jira/browse/PIG-4803) | Improve performance of regex-based builtin functions |  Major | . | Eyal Allweil | Eyal Allweil |
| [PIG-4817](https://issues.apache.org/jira/browse/PIG-4817) | Bump HTTP Logparser to version 2.4 |  Major | . | Niels Basjes | Niels Basjes |
| [PIG-4843](https://issues.apache.org/jira/browse/PIG-4843) | Turn off combiner in reducer vertex for Tez if bags are in combine plan |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4840](https://issues.apache.org/jira/browse/PIG-4840) | Do not turn off UnionOptimizer for unsupported storefuncs in case of no vertex groups |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4847](https://issues.apache.org/jira/browse/PIG-4847) | POPartialAgg processing and spill improvements |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4853](https://issues.apache.org/jira/browse/PIG-4853) | Fetch inputs before starting outputs |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4844](https://issues.apache.org/jira/browse/PIG-4844) | Tez AM runs out of memory when vertex has high number of outputs |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4862](https://issues.apache.org/jira/browse/PIG-4862) | POProject slow by creating StackTrace repeatedly |  Minor | . | Koji Noguchi | Koji Noguchi |
| [PIG-4547](https://issues.apache.org/jira/browse/PIG-4547) | Update Jython version to 2.7.0 |  Major | . | Neerja Khattar | Anthony Hsu |
| [PIG-4866](https://issues.apache.org/jira/browse/PIG-4866) | Do not serialize PigContext in configuration to the backend |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4455](https://issues.apache.org/jira/browse/PIG-4455) | Should use DependencyOrderWalker instead of DepthFirstWalker in MRPrinter |  Major | . | Jeff Zhang | Jeff Zhang |
| [PIG-4882](https://issues.apache.org/jira/browse/PIG-4882) | Remove hardcoded groovy.grape.report.downloads=true from DownloadResolver |  Major | . | Anthony Hsu | Anthony Hsu |
| [PIG-4879](https://issues.apache.org/jira/browse/PIG-4879) | Pull latest version of joda-time |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4874](https://issues.apache.org/jira/browse/PIG-4874) | Remove schema tuple reference overhead for replicate join hashmap |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4884](https://issues.apache.org/jira/browse/PIG-4884) | Tez needs to use DistinctCombiner.Combine |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4894](https://issues.apache.org/jira/browse/PIG-4894) | Add API for StoreFunc to specify if they are write safe from two different vertices |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4885](https://issues.apache.org/jira/browse/PIG-4885) | Turn off union optimizer if there is PARALLEL clause in union in Tez |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4905](https://issues.apache.org/jira/browse/PIG-4905) | Input of empty dir does not produce empty output part file in Tez |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4714](https://issues.apache.org/jira/browse/PIG-4714) | Improve logging across multiple components with callerId |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4719](https://issues.apache.org/jira/browse/PIG-4719) | Documentation for PIG-4704: Customizable Error Handling for Storers in Pig |  Major | documentation | Daniel Dai | Daniel Dai |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4533](https://issues.apache.org/jira/browse/PIG-4533) | Document error: Pig does support concatenated gz file |  Major | documentation, parser | Tomas Hudik | Daniel Dai |
| [PIG-4618](https://issues.apache.org/jira/browse/PIG-4618) | When use tez as the engine , set pig.user.cache.enabled=true  do  not take effect |  Major | tez | Xiaowei Wang | Xiaowei Wang |
| [PIG-4624](https://issues.apache.org/jira/browse/PIG-4624) | Error on ORC empty file without schema |  Major | . | Thejas M Nair | Daniel Dai |
| [PIG-4636](https://issues.apache.org/jira/browse/PIG-4636) | Occurred spelled incorrectly in error message for Launcher and POMergeCogroup |  Trivial | . | Steven Magana-Zook | Steven Magana-Zook |
| [PIG-4649](https://issues.apache.org/jira/browse/PIG-4649) | [Pig on Tez] Union followed by HCatStorer misses some data |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4650](https://issues.apache.org/jira/browse/PIG-4650) | ant mvn-deploy target is broken |  Major | build | Daniel Dai | Daniel Dai |
| [PIG-4627](https://issues.apache.org/jira/browse/PIG-4627) | [Pig on Tez] Self join does not handle null values correctly |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4315](https://issues.apache.org/jira/browse/PIG-4315) | MergeJoin or Split followed by order by gives NPE in Tez |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4679](https://issues.apache.org/jira/browse/PIG-4679) | Performance degradation due to InputSizeReducerEstimator since PIG-3754 |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4674](https://issues.apache.org/jira/browse/PIG-4674) | TOMAP should infer schema |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4644](https://issues.apache.org/jira/browse/PIG-4644) | PORelationToExprProject.clone() is broken |  Major | . | Ratandeep Ratti | Anthony Hsu |
| [PIG-4683](https://issues.apache.org/jira/browse/PIG-4683) | Nested order is broken after PIG-3591 in some cases |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4635](https://issues.apache.org/jira/browse/PIG-4635) | NPE while running pig script in tez mode( pig 0.15 with tez 0.7) |  Major | . | Sachin Sabbarwal | Daniel Dai |
| [PIG-4670](https://issues.apache.org/jira/browse/PIG-4670) | Embedded Python scripts still parse line by line |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4688](https://issues.apache.org/jira/browse/PIG-4688) | Limit followed by POPartialAgg can give empty or partial results in Tez |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4691](https://issues.apache.org/jira/browse/PIG-4691) | [Pig on Tez] Support for whitelisting storefuncs for union optimization |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4696](https://issues.apache.org/jira/browse/PIG-4696) | Empty map returned by a streaming\_python udf wrongly contains a null key |  Minor | impl | Cheolsoo Park | Cheolsoo Park |
| [PIG-4703](https://issues.apache.org/jira/browse/PIG-4703) | TezOperator.stores shall not ship to backend |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4707](https://issues.apache.org/jira/browse/PIG-4707) | [Pig on Tez] Streaming job hangs with pig.exec.mapPartAgg=true |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4712](https://issues.apache.org/jira/browse/PIG-4712) | [Pig on Tez] NPE in Bloom UDF after Union |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4468](https://issues.apache.org/jira/browse/PIG-4468) | Pig\'s jackson version conflicts with that of hadoop 2.6.0 or newer |  Major | . | Jeff Zhang | Jeff Zhang |
| [PIG-4721](https://issues.apache.org/jira/browse/PIG-4721) | IsEmpty documentation error |  Trivial | documentation | Nathan Smith | Nathan Smith |
| [PIG-4725](https://issues.apache.org/jira/browse/PIG-4725) | Typo in FrontendException messages "Incompatable" |  Trivial | . | Nathan Smith | Nathan Smith |
| [PIG-4727](https://issues.apache.org/jira/browse/PIG-4727) | Incorrect types table for AVG in docs |  Trivial | documentation | Nathan Smith | Nathan Smith |
| [PIG-4689](https://issues.apache.org/jira/browse/PIG-4689) | CSV Writes incorrect header if two CSV files are created in one script |  Major | . | Niels Basjes | Niels Basjes |
| [PIG-4730](https://issues.apache.org/jira/browse/PIG-4730) | [Pig on Tez] Total parallelism estimation does not account load parallelism |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4722](https://issues.apache.org/jira/browse/PIG-4722) | [Pig on Tez] NPE while running Combiner |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4733](https://issues.apache.org/jira/browse/PIG-4733) | Avoid NullPointerException in JVMReuseImpl for builtin classes |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4736](https://issues.apache.org/jira/browse/PIG-4736) | Removing empty keys in UDFContext broke one LoadFunc |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4755](https://issues.apache.org/jira/browse/PIG-4755) | Typo in runpigmix script |  Major | . | Mit Desai | Mit Desai |
| [PIG-4760](https://issues.apache.org/jira/browse/PIG-4760) | TezDAGStats.convertToHadoopCounters is not used, but impose MR counter limit |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4768](https://issues.apache.org/jira/browse/PIG-4768) | EvalFunc reporter is null in Tez |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4769](https://issues.apache.org/jira/browse/PIG-4769) | UnionOptimizer hits errors when merging vertex group into split |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4757](https://issues.apache.org/jira/browse/PIG-4757) | Job stats on successfully read/output records wrong with multiple inputs/outputs |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4774](https://issues.apache.org/jira/browse/PIG-4774) | Fix NPE in SUM,AVG,MIN,MAX UDFs for null bag input |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4775](https://issues.apache.org/jira/browse/PIG-4775) | Better default values for shuffle bytes per reducer |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4773](https://issues.apache.org/jira/browse/PIG-4773) | [Pig on Tez] Secondary key descending sort in nested foreach after union does ascending instead |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4770](https://issues.apache.org/jira/browse/PIG-4770) | OOM with POPartialAgg in some cases |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4737](https://issues.apache.org/jira/browse/PIG-4737) | Check and fix clone implementation for all classes extending PhysicalOperator |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4782](https://issues.apache.org/jira/browse/PIG-4782) | OutOfMemoryError: GC overhead limit exceeded with POPartialAgg |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4587](https://issues.apache.org/jira/browse/PIG-4587) | Applying isFirstReduceOfKey for Skewed left outer join skips records |  Critical | . | Rohini Palaniswamy | Daniel Dai |
| [PIG-4763](https://issues.apache.org/jira/browse/PIG-4763) | Insufficient check for the number of arguments in runpigmix.pl |  Trivial | . | Kengo Seki | Kengo Seki |
| [PIG-4779](https://issues.apache.org/jira/browse/PIG-4779) | testBZ2Concatenation[pig.bzip.use.hadoop.inputformat = true] failing due to successful read |  Minor | . | Koji Noguchi | Koji Noguchi |
| [PIG-4791](https://issues.apache.org/jira/browse/PIG-4791) | PORelationToExprProject filters records instead of returning emptybag in nested foreach after union |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4795](https://issues.apache.org/jira/browse/PIG-4795) | Flushing ObjectOutputStream before calling toByteArray on the underlying ByteArrayOutputStream |  Minor | . | emopers | emopers |
| [PIG-4790](https://issues.apache.org/jira/browse/PIG-4790) | Join after union fail due to UnionOptimizer |  Major | tez | Daniel Dai | Rohini Palaniswamy |
| [PIG-4800](https://issues.apache.org/jira/browse/PIG-4800) | EvalFunc.getCacheFiles() fails for different namenode |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4690](https://issues.apache.org/jira/browse/PIG-4690) | Union with self replicate join will fail in Tez |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4759](https://issues.apache.org/jira/browse/PIG-4759) | Fix Classresolution\_1 e2e failure |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4801](https://issues.apache.org/jira/browse/PIG-4801) | Provide backward compatibility with mapreduce mapred.task settings |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4808](https://issues.apache.org/jira/browse/PIG-4808) | PluckTuple overwrites regex if used more than once in the same script |  Major | . | Eyal Allweil | Eyal Allweil |
| [PIG-4806](https://issues.apache.org/jira/browse/PIG-4806) | UDFContext can be reset in the middle during Tez input and output initialization |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4812](https://issues.apache.org/jira/browse/PIG-4812) | Register Groovy UDF with relative path does not work |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-4811](https://issues.apache.org/jira/browse/PIG-4811) | Upgrade groovy library to address MethodClosure vulnerability |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-4814](https://issues.apache.org/jira/browse/PIG-4814) | AvroStorage does not take namenode HA as part of schema file url |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-4818](https://issues.apache.org/jira/browse/PIG-4818) | Single quote inside comment in GENERATE is not being ignored |  Minor | . | Koji Noguchi | Koji Noguchi |
| [PIG-4816](https://issues.apache.org/jira/browse/PIG-4816) | Read a null scalar causing a Tez failure |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-4819](https://issues.apache.org/jira/browse/PIG-4819) | RANDOM() udf can lead to missing or redundant records |  Major | . | Koji Noguchi | Koji Noguchi |
| [PIG-4833](https://issues.apache.org/jira/browse/PIG-4833) | TestBuiltin.testURIWithCurlyBrace in TEZ failing after PIG-4819 |  Minor | . | Koji Noguchi | Koji Noguchi |
| [PIG-4832](https://issues.apache.org/jira/browse/PIG-4832) | Fix TestPrumeColumn NPE failure |  Major | . | liyunzhang\_intel | liyunzhang\_intel |
| [PIG-4841](https://issues.apache.org/jira/browse/PIG-4841) | Inline-op with schema declaration fails with syntax error |  Minor | parser | Koji Noguchi | Koji Noguchi |
| [PIG-4845](https://issues.apache.org/jira/browse/PIG-4845) | Parallel instantiation of classes in Tez cause tasks to fail |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4850](https://issues.apache.org/jira/browse/PIG-4850) | Registered jars do not use submit replication |  Major | impl | Ryan Blue | Ryan Blue |
| [PIG-4851](https://issues.apache.org/jira/browse/PIG-4851) | Null not padded when input has less fields than declared schema for some loader |  Major | . | Koji Noguchi | Rohini Palaniswamy |
| [PIG-3906](https://issues.apache.org/jira/browse/PIG-3906) | ant site errors out |  Major | build, site | Konstantin Boudnik | Niels Basjes |
| [PIG-4867](https://issues.apache.org/jira/browse/PIG-4867) | -stop\_on\_failure does not work with Tez |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4869](https://issues.apache.org/jira/browse/PIG-4869) | Removing unwanted configuration in Tez broke ConfiguredFailoverProxyProvider |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4868](https://issues.apache.org/jira/browse/PIG-4868) | Low values for bytes.per.reducer configured by user not honored in Tez for inputs |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4860](https://issues.apache.org/jira/browse/PIG-4860) | Loading data using OrcStorage() accepts only default FileSystem path |  Major | . | Anirudh Beria | Anirudh Beria |
| [PIG-4877](https://issues.apache.org/jira/browse/PIG-4877) | LogFormat parser fails test |  Major | piggybank | Niels Basjes | Niels Basjes |
| [PIG-4878](https://issues.apache.org/jira/browse/PIG-4878) | Fix issues from PIG-4847 |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4641](https://issues.apache.org/jira/browse/PIG-4641) | Print the instance of Object without using toString() |  Minor | . | songwanging | Sandeep Samdaria |
| [PIG-4581](https://issues.apache.org/jira/browse/PIG-4581) | thread safe issue in NodeIdGenerator |  Trivial | impl | Remi Catherinot | Remi Catherinot |
| [PIG-4892](https://issues.apache.org/jira/browse/PIG-4892) | removing /tmp/output before UT |  Major | build | Daniel Dai | Daniel Dai |
| [PIG-3772](https://issues.apache.org/jira/browse/PIG-3772) | Syntax error when casting an inner schema of a bag and line break involved |  Major | . | Haishan Liu | Sergey Svinarchuk |
| [PIG-4888](https://issues.apache.org/jira/browse/PIG-4888) | Line number off when reporting syntax error inside a macro |  Trivial | parser | Koji Noguchi | Koji Noguchi |
| [PIG-4881](https://issues.apache.org/jira/browse/PIG-4881) | TestBuiltin.testUniqueID failing on hadoop-1.x |  Minor | . | Koji Noguchi | Koji Noguchi |
| [PIG-4880](https://issues.apache.org/jira/browse/PIG-4880) | Overlapping of parameter substitution names inside&outside a macro fails with NPE |  Major | parser | Koji Noguchi | Koji Noguchi |
| [PIG-4889](https://issues.apache.org/jira/browse/PIG-4889) | Replacing backslash fails as lexical error |  Minor | parser | Koji Noguchi | Koji Noguchi |
| [PIG-4887](https://issues.apache.org/jira/browse/PIG-4887) | Parameter substitution skipped with glob on register |  Major | . | Koji Noguchi | Koji Noguchi |
| [PIG-4895](https://issues.apache.org/jira/browse/PIG-4895) | User UDFs relying on mapreduce.job.maps broken in Tez |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4873](https://issues.apache.org/jira/browse/PIG-4873) | InputSplit.getLocations return null and result a NPE in Pig |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-4576](https://issues.apache.org/jira/browse/PIG-4576) | Nightly test HCat\_DDL\_2 fails with TDE ON |  Major | . | Namit Maheshwari | Namit Maheshwari |
| [PIG-4908](https://issues.apache.org/jira/browse/PIG-4908) | JythonFunction refers to Oozie launcher script absolute path |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4909](https://issues.apache.org/jira/browse/PIG-4909) | PigStorage incompatible with commons-cli-1.3 |  Trivial | impl | Koji Noguchi | Koji Noguchi |
| [PIG-4902](https://issues.apache.org/jira/browse/PIG-4902) | Fix UT failures on 0.16 branch: TestTezGraceParallelism, TestPigScriptParser |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-3227](https://issues.apache.org/jira/browse/PIG-3227) | SearchEngineExtractor does not work for bing |  Minor | piggybank | Danny Antonetti | Danny Antonetti |
| [PIG-4786](https://issues.apache.org/jira/browse/PIG-4786) | CROSS will not work correctly with Grace Parallelism |  Major | tez | Rohini Palaniswamy | Daniel Dai |
| [PIG-4734](https://issues.apache.org/jira/browse/PIG-4734) | TOMAP schema inferring breaks some scripts in type checking for bincond |  Major | . | Rohini Palaniswamy | Daniel Dai |
| [PIG-4821](https://issues.apache.org/jira/browse/PIG-4821) | Pig chararray field with special UTF-8 chars as part of tuple join key produces wrong results in Tez |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4789](https://issues.apache.org/jira/browse/PIG-4789) | Pig on TEZ creates wrong result with replicated join |  Critical | tez | Michael Prim |  |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4574](https://issues.apache.org/jira/browse/PIG-4574) | Eliminate identity vertex for order by and skewed join right after LOAD |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4654](https://issues.apache.org/jira/browse/PIG-4654) | Reduce tez memory.reserve-fraction and clear spillables for better memory utilization |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4657](https://issues.apache.org/jira/browse/PIG-4657) | [Pig on Tez] Optimize GroupBy and Distinct key comparison |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4365](https://issues.apache.org/jira/browse/PIG-4365) | TOP udf should implement Accumulator interface |  Major | . | Rohini Palaniswamy | Eyal Allweil |
| [PIG-4713](https://issues.apache.org/jira/browse/PIG-4713) | Document Bloom UDF |  Major | . | Rohini Palaniswamy | Gabor Liptak |
| [PIG-4742](https://issues.apache.org/jira/browse/PIG-4742) | Document Pig\'s Register Artifact Command added in PIG-4417 |  Major | . | Akshay Rai | Akshay Rai |


