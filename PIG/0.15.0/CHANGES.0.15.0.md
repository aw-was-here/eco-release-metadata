
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


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4563](https://issues.apache.org/jira/browse/PIG-4563) | Upgrade to released Tez 0.7.0 |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4560](https://issues.apache.org/jira/browse/PIG-4560) | Pig 0.15.0 Documentation |  Major | documentation | Daniel Dai | Daniel Dai |
| [PIG-4454](https://issues.apache.org/jira/browse/PIG-4454) | Upgrade tez to 0.6.0 |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4434](https://issues.apache.org/jira/browse/PIG-4434) | Improve auto-parallelism for tez |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4401](https://issues.apache.org/jira/browse/PIG-4401) | Add pattern matching to PluckTuple |  Minor | internal-udfs | Cheolsoo Park | Cheolsoo Park |
| [PIG-4389](https://issues.apache.org/jira/browse/PIG-4389) | Flag to run selected test suites in e2e tests |  Major | e2e harness | Daniel Dai | Daniel Dai |
| [PIG-4379](https://issues.apache.org/jira/browse/PIG-4379) | Make RoundRobinPartitioner public |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4213](https://issues.apache.org/jira/browse/PIG-4213) | CSVExcelStorage not quoting texts containing \r (CR) when storing |  Trivial | piggybank | Alfonso Nishikawa | Alfonso Nishikawa |
| [PIG-4210](https://issues.apache.org/jira/browse/PIG-4210) | Drop support for JDK 6 from Pig 0.14 |  Major | build | Rohini Palaniswamy | Daniel Dai |
| [PIG-3994](https://issues.apache.org/jira/browse/PIG-3994) | Implement getting backend exception for Tez |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4592](https://issues.apache.org/jira/browse/PIG-4592) | Pig 0.15 stopped working with Hadoop 1.x |  Blocker | build | Costin Leau | Daniel Dai |
| [PIG-4580](https://issues.apache.org/jira/browse/PIG-4580) | Fix TestTezAutoParallelism.testSkewedJoinIncreaseParallelism test failure |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4559](https://issues.apache.org/jira/browse/PIG-4559) | Fix several new tez e2e test failures |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4541](https://issues.apache.org/jira/browse/PIG-4541) | Skewed full outer join does not return records if any relation is empty. Outer join does not return any record if left relation is empty |  Major | build | Dipankar | Daniel Dai |
| [PIG-4538](https://issues.apache.org/jira/browse/PIG-4538) | Pig script fail with CNF in follow up MR job |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4537](https://issues.apache.org/jira/browse/PIG-4537) | Fix unit test failure introduced by TEZ-2392: TestCollectedGroup, TestLimitVariable, TestMapSideCogroup, etc |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4532](https://issues.apache.org/jira/browse/PIG-4532) | Pig Documentation contains typo for AvroStorage |  Trivial | documentation | Frederic Schmaljohann | Frederic Schmaljohann |
| [PIG-4529](https://issues.apache.org/jira/browse/PIG-4529) | Pig on tez hit counter limit imposed by MR |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4528](https://issues.apache.org/jira/browse/PIG-4528) | Fix a typo in src/docs/src/documentation/content/xdocs/basic.xml |  Minor | documentation | namusyaka | namusyaka |
| [PIG-4524](https://issues.apache.org/jira/browse/PIG-4524) | Pig Minicluster unit tests broken by TEZ-2333 |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4523](https://issues.apache.org/jira/browse/PIG-4523) | Tez engine should use tez config rather than mr config whenever possible |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4519](https://issues.apache.org/jira/browse/PIG-4519) | Correct link to Contribute page |  Minor | documentation | Gabor Liptak | Gabor Liptak |
| [PIG-4506](https://issues.apache.org/jira/browse/PIG-4506) | binstorage fails to write biginteger |  Major | data, impl | Savvas Savvides | Savvas Savvides |
| [PIG-4499](https://issues.apache.org/jira/browse/PIG-4499) | mvn-build miss tez classes in pig-h2.jar |  Major | build | Daniel Dai | Daniel Dai |
| [PIG-4498](https://issues.apache.org/jira/browse/PIG-4498) | AvroStorage in Piggbank does not handle bad records and fails |  Major | piggybank | Viraj Bhat | Viraj Bhat |
| [PIG-4490](https://issues.apache.org/jira/browse/PIG-4490) | MIN/MAX builtin UDFs return wrong results when accumulating for strings |  Major | internal-udfs | xplenty | xplenty |
| [PIG-4484](https://issues.apache.org/jira/browse/PIG-4484) | Ant pull jetty-6.1.26.zip on some platform |  Major | build | Daniel Dai | Daniel Dai |
| [PIG-4452](https://issues.apache.org/jira/browse/PIG-4452) | Embedded SQL using "SQL" instead of "sql" fails with string index out of range: -1 error |  Minor | grunt, parser | Brian Kessler | Daniel Dai |
| [PIG-4444](https://issues.apache.org/jira/browse/PIG-4444) | Fix unit test failure TestTezAutoParallelism |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4440](https://issues.apache.org/jira/browse/PIG-4440) | Some code samples in documentation use Unicode left/right single quotes, which cause a parse failure. |  Minor | documentation | Chris Nauroth | Chris Nauroth |
| [PIG-4437](https://issues.apache.org/jira/browse/PIG-4437) | Fix tez unit test failure TestJoinSmoke, TestSkewedJoin |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4410](https://issues.apache.org/jira/browse/PIG-4410) | Fix testRankWithEmptyReduce in tez mode |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4409](https://issues.apache.org/jira/browse/PIG-4409) | fs.defaultFS is overwritten in JobConf by replicated join at runtime |  Critical | impl | Cheolsoo Park | Cheolsoo Park |
| [PIG-4404](https://issues.apache.org/jira/browse/PIG-4404) | LOAD with HBaseStorage on secure cluster is broken in Tez |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4402](https://issues.apache.org/jira/browse/PIG-4402) | JavaScript UDF example in the doc is broken |  Minor | documentation | Cheolsoo Park | Cheolsoo Park |
| [PIG-4384](https://issues.apache.org/jira/browse/PIG-4384) | TezLauncher thread should be deamon thread |  Major | tez | Jeff Zhang | Jeff Zhang |
| [PIG-4381](https://issues.apache.org/jira/browse/PIG-4381) |  PIG grunt shell DEFINE commands fails when it spans multiple lines |  Major | grunt | Daniel Dai | Daniel Dai |
| [PIG-4377](https://issues.apache.org/jira/browse/PIG-4377) | Skewed outer join produce wrong result if a key is oversampled |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4376](https://issues.apache.org/jira/browse/PIG-4376) | NullPointerException accessing a field of an invalid bag from a nested foreach |  Minor | parser | Kevin Springborn | Kevin Springborn |
| [PIG-4371](https://issues.apache.org/jira/browse/PIG-4371) | Duplicate snappy.version in libraries.properties |  Major | build | Daniel Dai | Daniel Dai |
| [PIG-4355](https://issues.apache.org/jira/browse/PIG-4355) | Piggybank:  XPath cant handle namespace in xpath, nor can it return more than one match |  Major | piggybank | John Cavanaugh | John Cavanaugh |
| [PIG-4351](https://issues.apache.org/jira/browse/PIG-4351) | TestPigRunner.simpleTest2 fail on trunk |  Major | impl | Daniel Dai | Daniel Dai |
| [PIG-4340](https://issues.apache.org/jira/browse/PIG-4340) | PigStorage fails parsing empty map. |  Minor | impl | Akira Murashita | Daniel Dai |
| [PIG-4327](https://issues.apache.org/jira/browse/PIG-4327) | Schema of map with value that has an alias can't be parsed again |  Major | parser | Michael Prim | Michael Prim |
| [PIG-4326](https://issues.apache.org/jira/browse/PIG-4326) | AvroStorageSchemaConversionUtilities does not properly convert schema for maps of arrays of records |  Major | impl | Michael Prim | Michael Prim |
| [PIG-4242](https://issues.apache.org/jira/browse/PIG-4242) | For indented xmls with multiline content (e.g. wikipedia) XMLLoader cuts out the begining of every line |  Major | piggybank | Geza Radics | Geza Radics |
| [PIG-4012](https://issues.apache.org/jira/browse/PIG-4012) | java.lang.IllegalArgumentException: Comparison method violates its general contract! SpillableMemoryManager |  Major | impl | David Dreyfus | Rohini Palaniswamy |
| [PIG-2647](https://issues.apache.org/jira/browse/PIG-2647) | Split Combining drops splits with empty getLocations() |  Major | impl | Alex Levenson | Travis Woodruff |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-4495](https://issues.apache.org/jira/browse/PIG-4495) | Better multi-query planning in case of multiple edges |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4453](https://issues.apache.org/jira/browse/PIG-4453) | Remove test-tez-local target |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4391](https://issues.apache.org/jira/browse/PIG-4391) | Fix TestPigStats test failure |  Major | tez | Rohini Palaniswamy | Rohini Palaniswamy |
| [PIG-4378](https://issues.apache.org/jira/browse/PIG-4378) | Better way to fix tez local mode test hanging |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4368](https://issues.apache.org/jira/browse/PIG-4368) |  Port local mode tests to Tez - TestLoadStoreFuncLifeCycle |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4367](https://issues.apache.org/jira/browse/PIG-4367) | Port local mode tests to Tez - TestMultiQueryBasic |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4366](https://issues.apache.org/jira/browse/PIG-4366) | Port local mode tests to Tez - part5 |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4359](https://issues.apache.org/jira/browse/PIG-4359) | Port local mode tests to Tez - part4 |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4354](https://issues.apache.org/jira/browse/PIG-4354) | Port local mode tests to Tez - part3 |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4352](https://issues.apache.org/jira/browse/PIG-4352) | Port local mode tests to Tez - TestUnionOnSchema |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4350](https://issues.apache.org/jira/browse/PIG-4350) | Port local mode tests to Tez - part2 |  Major | tez | Daniel Dai | Daniel Dai |
| [PIG-4264](https://issues.apache.org/jira/browse/PIG-4264) | Port TestAvroStorage to tez local mode |  Major | tez | Daniel Dai | Daniel Dai |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PIG-3840](https://issues.apache.org/jira/browse/PIG-3840) | Umbrella jira for Pig on Tez Unit Test porting |  Major | tez | Rohini Palaniswamy | Daniel Dai |


