
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

## Release 0.15.0 - 2015-06-06

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4458](https://issues.apache.org/jira/browse/PIG-4458) | Support UDFs in a FOREACH Before a Merge Join |  Major | . | William Watson | William Watson |
| [PIG-4408](https://issues.apache.org/jira/browse/PIG-4408) | Merge join should support replicated join as a predecessor |  Major | . | Brian Johnson | Brian Johnson |
| [PIG-4370](https://issues.apache.org/jira/browse/PIG-4370) | HBaseStorage should support delete markers |  Major | . | Brian Johnson | Brian Johnson |
| [PIG-4360](https://issues.apache.org/jira/browse/PIG-4360) | HBaseStorage should support setting the timestamp field |  Major | . | Brian Johnson | Brian Johnson |
| [PIG-4358](https://issues.apache.org/jira/browse/PIG-4358) | Add test cases for utf8 chinese in Pig |  Major | . | Namit Maheshwari | Namit Maheshwari |
| [PIG-3760](https://issues.apache.org/jira/browse/PIG-3760) | Predicate pushdown for columnar file formats |  Major | . | Andrew Musselman | Rohini Palaniswamy |
| [PIG-3294](https://issues.apache.org/jira/browse/PIG-3294) | Allow Pig use Hive UDFs |  Major | . | Daniel Dai | Daniel Dai |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4563](https://issues.apache.org/jira/browse/PIG-4563) | Upgrade to released Tez 0.7.0 |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4560](https://issues.apache.org/jira/browse/PIG-4560) | Pig 0.15.0 Documentation |  Major | documentation | Daniel Dai | Daniel Dai |
| [PIG-4544](https://issues.apache.org/jira/browse/PIG-4544) | Upgrade Hbase to 0.98.12 |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-4525](https://issues.apache.org/jira/browse/PIG-4525) | Clarify "Scalar has more than one row in the output." |  Trivial | . | Niels Basjes | Niels Basjes |
| [PIG-4511](https://issues.apache.org/jira/browse/PIG-4511) | Add columns to prune from PluckTuple |  Minor | . | Joseph Babcock | Joseph Babcock |
| [PIG-4483](https://issues.apache.org/jira/browse/PIG-4483) | Pig on Tez output statistics shows storing to same directory twice for union |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4454](https://issues.apache.org/jira/browse/PIG-4454) | Upgrade tez to 0.6.0 |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4451](https://issues.apache.org/jira/browse/PIG-4451) | Log partition and predicate filter pushdown information and fix optimizer looping |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4442](https://issues.apache.org/jira/browse/PIG-4442) | Eliminate redundant RPC call to get file information in HPath. |  Minor | . | Chris Nauroth | Chris Nauroth |
| [PIG-4434](https://issues.apache.org/jira/browse/PIG-4434) | Improve auto-parallelism for tez |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4430](https://issues.apache.org/jira/browse/PIG-4430) | Pig should support reading log4j.properties file from classpath as well |  Major | . | Ratandeep Ratti | Ratandeep Ratti |
| [PIG-4429](https://issues.apache.org/jira/browse/PIG-4429) | Add Pig alias information and Pig script to the DAG view in Tez UI |  Major | . | Rohini Palaniswamy | Daniel Dai |
| [PIG-4407](https://issues.apache.org/jira/browse/PIG-4407) | Allow specifying a replication factor for jarcache |  Major | . | Gera Shegalov | Gera Shegalov |
| [PIG-4401](https://issues.apache.org/jira/browse/PIG-4401) | Add pattern matching to PluckTuple |  Minor | internal-udfs | Cheolsoo Park | Cheolsoo Park |
| [PIG-4389](https://issues.apache.org/jira/browse/PIG-4389) | Flag to run selected test suites in e2e tests |  Major | e2e harness | Daniel Dai | Daniel Dai |
| [PIG-4379](https://issues.apache.org/jira/browse/PIG-4379) | Make RoundRobinPartitioner public |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4337](https://issues.apache.org/jira/browse/PIG-4337) | Split Types and MultiQuery e2e tests into multiple groups |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4333](https://issues.apache.org/jira/browse/PIG-4333) | Split BigData tests into multiple groups |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4332](https://issues.apache.org/jira/browse/PIG-4332) | Remove redundant jars packaged into pig-withouthadoop.jar for hadoop 2 |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4213](https://issues.apache.org/jira/browse/PIG-4213) | CSVExcelStorage not quoting texts containing \r (CR) when storing |  Trivial | piggybank | Alfonso Nishikawa | Alfonso Nishikawa |
| [PIG-4210](https://issues.apache.org/jira/browse/PIG-4210) | Drop support for JDK 6 from Pig 0.14 |  Major | build | Rohini Palaniswamy | Daniel Dai |
| [PIG-4066](https://issues.apache.org/jira/browse/PIG-4066) | An optimization for ROLLUP operation in Pig |  Major | . | Quang-Nhat HOANG-XUAN | Quang-Nhat HOANG-XUAN |
| [PIG-3994](https://issues.apache.org/jira/browse/PIG-3994) | Implement getting backend exception for Tez |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-3232](https://issues.apache.org/jira/browse/PIG-3232) | Refactor Pig so that configurations use PigConfiguration wherever possible |  Major | . | Jonathan Coveney | Rohini Palaniswamy |
| [PIG-2692](https://issues.apache.org/jira/browse/PIG-2692) | Make the Pig unit faciliities more generalizable and update javadocs |  Minor | . | Jeremy Hanna | Richard So |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4602](https://issues.apache.org/jira/browse/PIG-4602) | The test org.apache.pig.builtin.TestOrcStoragePushdown.testPredicatePushdownTimestamp  is failing |  Major | . | Gaurav Pande |  |
| [PIG-4592](https://issues.apache.org/jira/browse/PIG-4592) | Pig 0.15 stopped working with Hadoop 1.x |  Blocker | build | Costin Leau | Daniel Dai |
| [PIG-4580](https://issues.apache.org/jira/browse/PIG-4580) | Fix TestTezAutoParallelism.testSkewedJoinIncreaseParallelism test failure |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4571](https://issues.apache.org/jira/browse/PIG-4571) | TestPigRunner.testGetHadoopCounters fail on Windows |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-4569](https://issues.apache.org/jira/browse/PIG-4569) | Fix e2e test Rank\_1 failure |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-4564](https://issues.apache.org/jira/browse/PIG-4564) | Pig can deadlock in POPartialAgg if there is a bag |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4562](https://issues.apache.org/jira/browse/PIG-4562) | Typo in DataType.toDateTime |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-4559](https://issues.apache.org/jira/browse/PIG-4559) | Fix several new tez e2e test failures |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4556](https://issues.apache.org/jira/browse/PIG-4556) | Local mode is broken in some case by PIG-4247 |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-4545](https://issues.apache.org/jira/browse/PIG-4545) | Fix Unit test TestJobSubmissionMR |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-4543](https://issues.apache.org/jira/browse/PIG-4543) | TestEvalPipelineLocal.testRankWithEmptyReduce fail on Hadoop 1 |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-4541](https://issues.apache.org/jira/browse/PIG-4541) | Skewed full outer join does not return records if any relation is empty. Outer join does not return any record if left relation is empty |  Major | build | Dipankar | Daniel Dai |
| [PIG-4538](https://issues.apache.org/jira/browse/PIG-4538) | Pig script fail with CNF in follow up MR job |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4537](https://issues.apache.org/jira/browse/PIG-4537) | Fix unit test failure introduced by TEZ-2392: TestCollectedGroup, TestLimitVariable, TestMapSideCogroup, etc |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4532](https://issues.apache.org/jira/browse/PIG-4532) | Pig Documentation contains typo for AvroStorage |  Trivial | documentation | Frederic Schmaljohann | Frederic Schmaljohann |
| [PIG-4530](https://issues.apache.org/jira/browse/PIG-4530) | StackOverflow in TestMultiQueryLocal running under hadoop20 |  Major | . | Niels Basjes | Niels Basjes |
| [PIG-4529](https://issues.apache.org/jira/browse/PIG-4529) | Pig on tez hit counter limit imposed by MR |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4528](https://issues.apache.org/jira/browse/PIG-4528) | Fix a typo in src/docs/src/documentation/content/xdocs/basic.xml |  Minor | documentation | namusyaka | namusyaka |
| [PIG-4527](https://issues.apache.org/jira/browse/PIG-4527) | NON-ASCII Characters in Javadoc break 'ant docs' |  Major | . | Niels Basjes | Niels Basjes |
| [PIG-4524](https://issues.apache.org/jira/browse/PIG-4524) | Pig Minicluster unit tests broken by TEZ-2333 |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4523](https://issues.apache.org/jira/browse/PIG-4523) | Tez engine should use tez config rather than mr config whenever possible |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4519](https://issues.apache.org/jira/browse/PIG-4519) | Correct link to Contribute page |  Minor | documentation | Gabor Liptak | Gabor Liptak |
| [PIG-4514](https://issues.apache.org/jira/browse/PIG-4514) | pig trunk compilation is broken - VertexManagerPluginContext.reconfigureVertex change |  Major | . | Thejas M Nair | Thejas M Nair |
| [PIG-4509](https://issues.apache.org/jira/browse/PIG-4509) | [Pig on Tez] Unassigned applications not killed on shutdown |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4508](https://issues.apache.org/jira/browse/PIG-4508) | [Pig on Tez] PigProcessor check for commit only on MROutput |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4506](https://issues.apache.org/jira/browse/PIG-4506) | binstorage fails to write biginteger |  Major | data, impl | Savvas Savvides | Savvas Savvides |
| [PIG-4505](https://issues.apache.org/jira/browse/PIG-4505) | [Pig on Tez] Auto adjust AM memory can hit OOM with 3.5GXmx |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4503](https://issues.apache.org/jira/browse/PIG-4503) | [Pig on Tez] NPE in UnionOptimizer with multiple levels of union |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4502](https://issues.apache.org/jira/browse/PIG-4502) | E2E tests build fail with udfs compile |  Major | . | Namit Maheshwari | Namit Maheshwari |
| [PIG-4499](https://issues.apache.org/jira/browse/PIG-4499) | mvn-build miss tez classes in pig-h2.jar |  Major | build | Daniel Dai | Daniel Dai |
| [PIG-4498](https://issues.apache.org/jira/browse/PIG-4498) | AvroStorage in Piggbank does not handle bad records and fails |  Major | piggybank | Viraj Bhat | Viraj Bhat |
| [PIG-4497](https://issues.apache.org/jira/browse/PIG-4497) | [Pig on Tez] NPE for null scalar |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4494](https://issues.apache.org/jira/browse/PIG-4494) | Pig's htrace version conflicts with that of hadoop 2.6.0 |  Major | . | Jeff Zhang | Daniel Dai |
| [PIG-4493](https://issues.apache.org/jira/browse/PIG-4493) | Pig on Tez gives wrong results if Union is followed by Split |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4491](https://issues.apache.org/jira/browse/PIG-4491) | Streaming Python Bytearray Bugs |  Major | . | Jeremy Karn | Jeremy Karn |
| [PIG-4490](https://issues.apache.org/jira/browse/PIG-4490) | MIN/MAX builtin UDFs return wrong results when accumulating for strings |  Major | internal-udfs | xplenty | xplenty |
| [PIG-4488](https://issues.apache.org/jira/browse/PIG-4488) | Pig on tez mask tez.queue.name |  Major | . | Daniel Dai | Daniel Dai |
| [PIG-4487](https://issues.apache.org/jira/browse/PIG-4487) | Pig on Tez gives wrong success message on failure in case of multiple outputs |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4484](https://issues.apache.org/jira/browse/PIG-4484) | Ant pull jetty-6.1.26.zip on some platform |  Major | build | Daniel Dai | Daniel Dai |
| [PIG-4480](https://issues.apache.org/jira/browse/PIG-4480) | Pig script failure on Tez with split and order by due to missing sample collection |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4479](https://issues.apache.org/jira/browse/PIG-4479) | Pig script with union within nested splits followed by join failed on Tez |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4478](https://issues.apache.org/jira/browse/PIG-4478) | TestCSVExcelStorage fails with jdk8 |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4476](https://issues.apache.org/jira/browse/PIG-4476) | Fix logging in AvroStorage\* classes and SchemaTuple class |  Major | . | Ratandeep Ratti | Ratandeep Ratti |
| [PIG-4475](https://issues.apache.org/jira/browse/PIG-4475) | Keys in AvroMapWrapper are not proper Pig types |  Major | . | Ratandeep Ratti | Ratandeep Ratti |
| [PIG-4474](https://issues.apache.org/jira/browse/PIG-4474) | Increasing intermediate parallelism has issue with default parallelism |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4465](https://issues.apache.org/jira/browse/PIG-4465) | Pig streaming ship fails for relative paths on Tez |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4463](https://issues.apache.org/jira/browse/PIG-4463) | AvroMapWrapper still leaks Avro data types and AvroStorageDataConversionUtilities do not handle Pig maps |  Major | . | Ratandeep Ratti | Ratandeep Ratti |
| [PIG-4461](https://issues.apache.org/jira/browse/PIG-4461) | Use benchmarks for Windows Pig e2e tests |  Critical | . | Namit Maheshwari | Namit Maheshwari |
| [PIG-4460](https://issues.apache.org/jira/browse/PIG-4460) | TestBuiltIn testValueListOutputSchemaComplexType and testValueSetOutputSchemaComplexType tests create bags whose inner schema is not a tuple |  Major | . | Anthony Hsu | Anthony Hsu |
| [PIG-4457](https://issues.apache.org/jira/browse/PIG-4457) | Error is thrown by JobStats.getOutputSize() when storing to a MySql table |  Major | . | Kunal Kumar | Rohini Palaniswamy |
| [PIG-4452](https://issues.apache.org/jira/browse/PIG-4452) | Embedded SQL using "SQL" instead of "sql" fails with string index out of range: -1 error |  Minor | grunt, parser | Brian Kessler | Daniel Dai |
| [PIG-4448](https://issues.apache.org/jira/browse/PIG-4448) | AvroMapWrapper leaks Avro data types when the map values are complex avro records |  Major | . | Ratandeep Ratti | Ratandeep Ratti |
| [PIG-4447](https://issues.apache.org/jira/browse/PIG-4447) | Pig Cannot handle nullable values (arrays and records) in avro records |  Major | . | Ratandeep Ratti | Ratandeep Ratti |
| [PIG-4445](https://issues.apache.org/jira/browse/PIG-4445) | VALUELIST and VALUESET outputSchema does not match actual schema of data returned when map value schema is complex |  Major | . | Anthony Hsu | Anthony Hsu |
| [PIG-4444](https://issues.apache.org/jira/browse/PIG-4444) | Fix unit test failure TestTezAutoParallelism |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4443](https://issues.apache.org/jira/browse/PIG-4443) | Write inputsplits in Tez to disk if the size is huge and option to compress pig input splits |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4440](https://issues.apache.org/jira/browse/PIG-4440) | Some code samples in documentation use Unicode left/right single quotes, which cause a parse failure. |  Minor | documentation | Chris Nauroth | Chris Nauroth |
| [PIG-4437](https://issues.apache.org/jira/browse/PIG-4437) | Fix tez unit test failure TestJoinSmoke, TestSkewedJoin |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4433](https://issues.apache.org/jira/browse/PIG-4433) | Loading bigdecimal in nested tuple does not work |  Major | . | Kevin J. Price | Kevin J. Price |
| [PIG-4432](https://issues.apache.org/jira/browse/PIG-4432) | Built-in VALUELIST and VALUESET UDFs do not preserve the schema when the map value type is a complex type |  Major | . | Anthony Hsu | Anthony Hsu |
| [PIG-4431](https://issues.apache.org/jira/browse/PIG-4431) | ReadToEndLoader does not close the record reader for the last input split |  Major | . | Ratandeep Ratti | Ratandeep Ratti |
| [PIG-4426](https://issues.apache.org/jira/browse/PIG-4426) | RowNumber(simple) Rank not producing correct results |  Major | . | Koji Noguchi | Koji Noguchi |
| [PIG-4418](https://issues.apache.org/jira/browse/PIG-4418) | NullPointerException in JVMReuseImpl |  Critical | . | Jeff Zhang | Rohini Palaniswamy |
| [PIG-4410](https://issues.apache.org/jira/browse/PIG-4410) | Fix testRankWithEmptyReduce in tez mode |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4409](https://issues.apache.org/jira/browse/PIG-4409) | fs.defaultFS is overwritten in JobConf by replicated join at runtime |  Critical | impl | Cheolsoo Park | Cheolsoo Park |
| [PIG-4404](https://issues.apache.org/jira/browse/PIG-4404) | LOAD with HBaseStorage on secure cluster is broken in Tez |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4403](https://issues.apache.org/jira/browse/PIG-4403) | Combining -Dpig.additional.jars.uris with -useHCatalog breaks due to combination with colon instead of comma |  Major | . | Olivier Van Laere | Olivier Van Laere |
| [PIG-4402](https://issues.apache.org/jira/browse/PIG-4402) | JavaScript UDF example in the doc is broken |  Minor | documentation | Cheolsoo Park | Cheolsoo Park |
| [PIG-4397](https://issues.apache.org/jira/browse/PIG-4397) | CSVExcelStorage incorrect output if last field value is null |  Critical | . | Niels Basjes | Daniel Dai |
| [PIG-4394](https://issues.apache.org/jira/browse/PIG-4394) | Fix Split\_9 and Union\_5 e2e failures |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4392](https://issues.apache.org/jira/browse/PIG-4392) | RANK BY fails when default\_parallel is greater than cardinality of field being ranked by |  Major | . | Anthony Hsu | Daniel Dai |
| [PIG-4387](https://issues.apache.org/jira/browse/PIG-4387) | Honor yarn settings in tez-site.xml and optimize dag status fetch |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4384](https://issues.apache.org/jira/browse/PIG-4384) | TezLauncher thread should be deamon thread |  Major | tez | Jeff Zhang | Jeff Zhang |
| [PIG-4381](https://issues.apache.org/jira/browse/PIG-4381) |  PIG grunt shell DEFINE commands fails when it spans multiple lines |  Major | grunt | Daniel Dai | Daniel Dai |
| [PIG-4377](https://issues.apache.org/jira/browse/PIG-4377) | Skewed outer join produce wrong result if a key is oversampled |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4376](https://issues.apache.org/jira/browse/PIG-4376) | NullPointerException accessing a field of an invalid bag from a nested foreach |  Minor | parser | Kevin Springborn | Kevin Springborn |
| [PIG-4371](https://issues.apache.org/jira/browse/PIG-4371) | Duplicate snappy.version in libraries.properties |  Major | build | Daniel Dai | Daniel Dai |
| [PIG-4361](https://issues.apache.org/jira/browse/PIG-4361) | Fix perl script problem in TestStreaming.java |  Major | . | liyunzhang\_intel | liyunzhang\_intel |
| [PIG-4355](https://issues.apache.org/jira/browse/PIG-4355) | Piggybank:  XPath cant handle namespace in xpath, nor can it return more than one match |  Major | piggybank | John Cavanaugh | John Cavanaugh |
| [PIG-4351](https://issues.apache.org/jira/browse/PIG-4351) | TestPigRunner.simpleTest2 fail on trunk |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4345](https://issues.apache.org/jira/browse/PIG-4345) | e2e test "RubyUDFs\_13" fails because of the different result of "group a all" in different engines like "spark", "mapreduce" |  Major | . | liyunzhang\_intel | liyunzhang\_intel |
| [PIG-4340](https://issues.apache.org/jira/browse/PIG-4340) | PigStorage fails parsing empty map. |  Minor | impl | Akira Murashita | Daniel Dai |
| [PIG-4339](https://issues.apache.org/jira/browse/PIG-4339) | e2e test framework assumes default exectype as mapred |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4338](https://issues.apache.org/jira/browse/PIG-4338) | Fix test failures with JDK8 |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4331](https://issues.apache.org/jira/browse/PIG-4331) | update README, '-x' option in usage to include tez |  Major | . | Thejas M Nair | Thejas M Nair |
| [PIG-4330](https://issues.apache.org/jira/browse/PIG-4330) | Regression test for PIG-3584 - AvroStorage does not correctly translate arrays of strings |  Major | . | Brock Noland | Brock Noland |
| [PIG-4329](https://issues.apache.org/jira/browse/PIG-4329) | Fetch optimization should be disabled when limit is not pushed up |  Major | . | Cheolsoo Park | Lorand Bendig |
| [PIG-4327](https://issues.apache.org/jira/browse/PIG-4327) | Schema of map with value that has an alias can't be parsed again |  Major | parser | Michael Prim | Michael Prim |
| [PIG-4326](https://issues.apache.org/jira/browse/PIG-4326) | AvroStorageSchemaConversionUtilities does not properly convert schema for maps of arrays of records |  Major | impl | Michael Prim | Michael Prim |
| [PIG-4265](https://issues.apache.org/jira/browse/PIG-4265) | SUM functions returns different value in spark and mapreduce engine |  Major | . | liyunzhang\_intel | liyunzhang\_intel |
| [PIG-4247](https://issues.apache.org/jira/browse/PIG-4247) | S3 properties are not picked up from core-site.xml in local mode |  Major | . | Cheolsoo Park | Cheolsoo Park |
| [PIG-4242](https://issues.apache.org/jira/browse/PIG-4242) | For indented xmls with multiline content (e.g. wikipedia) XMLLoader cuts out the begining of every line |  Major | piggybank | Geza Radics | Geza Radics |
| [PIG-4012](https://issues.apache.org/jira/browse/PIG-4012) | java.lang.IllegalArgumentException: Comparison method violates its general contract! SpillableMemoryManager |  Major | impl | David Dreyfus | Rohini Palaniswamy |
| [PIG-3413](https://issues.apache.org/jira/browse/PIG-3413) | JsonLoader fails the pig job in case of malformed json input |  Minor | . | Demeter Sztanko | Eyal Allweil |
| [PIG-2949](https://issues.apache.org/jira/browse/PIG-2949) | JsonLoader only reads arrays of objects |  Minor | . | David LaBarbera | Eyal Allweil |
| [PIG-2647](https://issues.apache.org/jira/browse/PIG-2647) | Split Combining drops splits with empty getLocations() |  Major | impl | Alex Levenson | Travis Woodruff |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4385](https://issues.apache.org/jira/browse/PIG-4385) | testDefaultBootup fails because it cannot find "pig.properties" |  Major | . | Martin Kudlej | Martin Kudlej |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4495](https://issues.apache.org/jira/browse/PIG-4495) | Better multi-query planning in case of multiple edges |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4453](https://issues.apache.org/jira/browse/PIG-4453) | Remove test-tez-local target |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4391](https://issues.apache.org/jira/browse/PIG-4391) | Fix TestPigStats test failure |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4378](https://issues.apache.org/jira/browse/PIG-4378) | Better way to fix tez local mode test hanging |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4375](https://issues.apache.org/jira/browse/PIG-4375) | ObjectCache should use ProcessorContext.getObjectRegistry() |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4368](https://issues.apache.org/jira/browse/PIG-4368) |  Port local mode tests to Tez - TestLoadStoreFuncLifeCycle |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4367](https://issues.apache.org/jira/browse/PIG-4367) | Port local mode tests to Tez - TestMultiQueryBasic |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4366](https://issues.apache.org/jira/browse/PIG-4366) | Port local mode tests to Tez - part5 |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4359](https://issues.apache.org/jira/browse/PIG-4359) | Port local mode tests to Tez - part4 |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4354](https://issues.apache.org/jira/browse/PIG-4354) | Port local mode tests to Tez - part3 |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4352](https://issues.apache.org/jira/browse/PIG-4352) | Port local mode tests to Tez - TestUnionOnSchema |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4350](https://issues.apache.org/jira/browse/PIG-4350) | Port local mode tests to Tez - part2 |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4334](https://issues.apache.org/jira/browse/PIG-4334) | PigProcessor does not set pig.datetime.default.tz |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4264](https://issues.apache.org/jira/browse/PIG-4264) | Port TestAvroStorage to tez local mode |  Major | tez | Daniel Dai | Daniel Dai |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-3840](https://issues.apache.org/jira/browse/PIG-3840) | Umbrella jira for Pig on Tez Unit Test porting |  Major | tez | Rohini Palaniswamy | Daniel Dai |


