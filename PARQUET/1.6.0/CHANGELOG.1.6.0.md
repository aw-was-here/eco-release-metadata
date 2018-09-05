
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
# Apache Parquet Changelog

## Release 1.6.0 - 2015-04-15



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-22](https://issues.apache.org/jira/browse/PARQUET-22) | Parquet #13: Backport of HIVE-6938 |  Major | . | Daniel Weeks | Daniel Weeks |
| [PARQUET-49](https://issues.apache.org/jira/browse/PARQUET-49) | Create a new filter API that supports filtering groups of records based on their statistics |  Major | parquet-mr | Alex Levenson | Alex Levenson |
| [PARQUET-64](https://issues.apache.org/jira/browse/PARQUET-64) | Add new logical types to parquet-column |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-123](https://issues.apache.org/jira/browse/PARQUET-123) | Add dictionary support to AvroIndexedRecordReader |  Major | parquet-mr | Matt Massie | Matt Massie |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-2](https://issues.apache.org/jira/browse/PARQUET-2) | Adding Type Persuasion for Primitive Types |  Major | parquet-mr | Daniel Weeks | Daniel Weeks |
| [PARQUET-25](https://issues.apache.org/jira/browse/PARQUET-25) | Pushdown predicates only work with hardcoded arguments |  Major | parquet-mr | Sandy Ryza | Sandy Ryza |
| [PARQUET-57](https://issues.apache.org/jira/browse/PARQUET-57) | Make dev commit script easier to use |  Major | . | Brock Noland | Brock Noland |
| [PARQUET-79](https://issues.apache.org/jira/browse/PARQUET-79) | Add thrift streaming API to read metadata |  Major | parquet-format | Julien Le Dem | Julien Le Dem |
| [PARQUET-61](https://issues.apache.org/jira/browse/PARQUET-61) | Avoid fixing protocol events when there is not required field missing |  Major | . | Tianshuo Deng | Tianshuo Deng |
| [PARQUET-87](https://issues.apache.org/jira/browse/PARQUET-87) | Better and unified API for projection pushdown on cascading scheme |  Minor | . | Tianshuo Deng | Tianshuo Deng |
| [PARQUET-92](https://issues.apache.org/jira/browse/PARQUET-92) | Parallel Footer Read Control |  Minor | . | Daniel Weeks | Daniel Weeks |
| [PARQUET-89](https://issues.apache.org/jira/browse/PARQUET-89) | All Parquet CI tests should be run against hadoop-2 |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-105](https://issues.apache.org/jira/browse/PARQUET-105) | Refactor and Document Parquet Tools |  Major | . | Tianshuo Deng | Tianshuo Deng |
| [PARQUET-119](https://issues.apache.org/jira/browse/PARQUET-119) | add data\_encodings to ColumnMetaData to enable dictionary based predicate push down |  Major | parquet-format | Julien Le Dem | Julien Le Dem |
| [PARQUET-84](https://issues.apache.org/jira/browse/PARQUET-84) | Add an option to read the rowgroup metadata on the task side. |  Major | parquet-mr | Julien Le Dem | Julien Le Dem |
| [PARQUET-121](https://issues.apache.org/jira/browse/PARQUET-121) | Allow Parquet to build with Java 8 |  Major | parquet-mr | Tom White | Tom White |
| [PARQUET-52](https://issues.apache.org/jira/browse/PARQUET-52) | Improve the encoding fall back mechanism for Parquet 2.0 |  Major | parquet-mr | Julien Le Dem | Julien Le Dem |
| [PARQUET-140](https://issues.apache.org/jira/browse/PARQUET-140) | Allow clients to control the GenericData object that is used to read Avro records |  Major | parquet-mr | Josh Wills | Josh Wills |
| [PARQUET-117](https://issues.apache.org/jira/browse/PARQUET-117) | implement the new page format for Parquet 2.0 |  Major | parquet-mr | Julien Le Dem | Julien Le Dem |
| [PARQUET-108](https://issues.apache.org/jira/browse/PARQUET-108) | Parquet Memory Management in Java |  Major | . | Brock Noland | Dong Chen |
| [PARQUET-141](https://issues.apache.org/jira/browse/PARQUET-141) | improve parquet scrooge integration |  Major | . | Tianshuo Deng | Tianshuo Deng |
| [PARQUET-133](https://issues.apache.org/jira/browse/PARQUET-133) | Upgrade snappy-java to 1.1.1.6 |  Minor | parquet-format | Taro L. Saito | Taro L. Saito |
| [PARQUET-181](https://issues.apache.org/jira/browse/PARQUET-181) | Scrooge Write Support |  Major | parquet-mr | Colin Marc | Colin Marc |
| [PARQUET-177](https://issues.apache.org/jira/browse/PARQUET-177) | MemoryManager ensure minimum Column Chunk size |  Minor | parquet-mr | Daniel Weeks | Daniel Weeks |
| [PARQUET-116](https://issues.apache.org/jira/browse/PARQUET-116) | Pass a filter object to user defined predicate in filter2 api |  Minor | parquet-mr | Yash Datta |  |
| [PARQUET-191](https://issues.apache.org/jira/browse/PARQUET-191) | Avro schema conversion incorrectly converts maps with nullable values. |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-192](https://issues.apache.org/jira/browse/PARQUET-192) | Avro maps drop null values |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-160](https://issues.apache.org/jira/browse/PARQUET-160) | Simplify CapacityByteArrayOutputStream |  Minor | . | Alex Levenson |  |
| [PARQUET-134](https://issues.apache.org/jira/browse/PARQUET-134) | Enhance ParquetWriter with file creation flag |  Major | . | Mariappan Asokan | Mariappan Asokan |
| [PARQUET-193](https://issues.apache.org/jira/browse/PARQUET-193) | Avro: Implement read compatibility rules for nested types |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-204](https://issues.apache.org/jira/browse/PARQUET-204) | Directory support for parquet-schema |  Trivial | parquet-mr | Neville Li | Neville Li |
| [PARQUET-203](https://issues.apache.org/jira/browse/PARQUET-203) | Consolidate PathFilter for hidden files |  Trivial | parquet-mr | Neville Li | Neville Li |
| [PARQUET-165](https://issues.apache.org/jira/browse/PARQUET-165) | A benchmark module for Parquet would be nice |  Minor | . | Nezih Yigitbasi | Daniel Weeks |
| [PARQUET-210](https://issues.apache.org/jira/browse/PARQUET-210) | JSON output for parquet-cat |  Trivial | parquet-mr | Neville Li | Neville Li |
| [PARQUET-39](https://issues.apache.org/jira/browse/PARQUET-39) | Simplify ParquetReader's constructors |  Minor | parquet-mr | Alex Levenson | Alex Levenson |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-3](https://issues.apache.org/jira/browse/PARQUET-3) | tool to merge pull requests based on Spark |  Major | . | Julien Le Dem | Julien Le Dem |
| [PARQUET-9](https://issues.apache.org/jira/browse/PARQUET-9) | InternalParquetRecordReader will not read multiple blocks when filtering |  Major | parquet-mr | Ryan Blue | Tom White |
| [PARQUET-4](https://issues.apache.org/jira/browse/PARQUET-4) | Use LRU caching for footers in ParquetInputFormat. |  Major | parquet-mr | Matt Martin | Matt Martin |
| [PARQUET-21](https://issues.apache.org/jira/browse/PARQUET-21) | Fix reference to 'github-apache' in dev docs |  Major | parquet-mr | Tom White | Tom White |
| [PARQUET-18](https://issues.apache.org/jira/browse/PARQUET-18) | Cannot read dictionary-encoded pages with all null values |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-19](https://issues.apache.org/jira/browse/PARQUET-19) | NPE when an empty file is included in a Hive query that uses CombineHiveInputFormat |  Major | . | Matt Martin | Matt Martin |
| [PARQUET-56](https://issues.apache.org/jira/browse/PARQUET-56) | Added an accessor for the Long column type in example Group |  Major | . | James Scott | James Scott |
| [PARQUET-70](https://issues.apache.org/jira/browse/PARQUET-70) | PARQUET #36: Pig Schema Storage to UDFContext |  Critical | . | Daniel Weeks |  |
| [PARQUET-62](https://issues.apache.org/jira/browse/PARQUET-62) | DictionaryValuesWriter dictionaries are corrupted by user changes. |  Blocker | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-66](https://issues.apache.org/jira/browse/PARQUET-66) | InternalParquetRecordWriter int overflow causes unnecessary memory check warning |  Minor | parquet-mr | Eric Snyder |  |
| [PARQUET-80](https://issues.apache.org/jira/browse/PARQUET-80) | upgrade semver plugin version to 0.9.27 |  Major | parquet-mr | Julien Le Dem | Julien Le Dem |
| [PARQUET-75](https://issues.apache.org/jira/browse/PARQUET-75) | String decode using 'new String' is slow |  Major | parquet-mr | Daniel Weeks | Daniel Weeks |
| [PARQUET-8](https://issues.apache.org/jira/browse/PARQUET-8) | [parquet-scrooge] mvn eclipse:eclipse fails on parquet-scrooge |  Minor | . | Dmitriy V. Ryaboy | Dmitriy V. Ryaboy |
| [PARQUET-69](https://issues.apache.org/jira/browse/PARQUET-69) | Add committer doc and REVIEWERS files |  Major | parquet-mr | Julien Le Dem | Julien Le Dem |
| [PARQUET-72](https://issues.apache.org/jira/browse/PARQUET-72) | Prepare parquet-format for Apache release |  Major | parquet-format | Ryan Blue | Ryan Blue |
| [PARQUET-63](https://issues.apache.org/jira/browse/PARQUET-63) | Fixed-length columns cannot be dictionary encoded. |  Major | . | Ryan Blue | Ryan Blue |
| [PARQUET-88](https://issues.apache.org/jira/browse/PARQUET-88) | Fix pre-version enforcement. |  Major | parquet-mr | Julien Le Dem |  |
| [PARQUET-94](https://issues.apache.org/jira/browse/PARQUET-94) | ParquetScroogeScheme constructor ignores klass argument |  Minor | parquet-mr | Alex Levenson | Alex Levenson |
| [PARQUET-82](https://issues.apache.org/jira/browse/PARQUET-82) | ColumnChunkPageWriteStore assumes pages are smaller than Integer.MAX\_VALUE |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-101](https://issues.apache.org/jira/browse/PARQUET-101) | Exception when reading data with parquet.task.side.metadata=false |  Major | . | Julien Le Dem | Julien Le Dem |
| [PARQUET-96](https://issues.apache.org/jira/browse/PARQUET-96) | parquet.example.data.Group is missing some methods |  Trivial | parquet-mr | Colin Marc | Colin Marc |
| [PARQUET-104](https://issues.apache.org/jira/browse/PARQUET-104) | Parquet writes empty Rowgroup at the end of the file |  Major | . | Tianshuo Deng | Tianshuo Deng |
| [PARQUET-107](https://issues.apache.org/jira/browse/PARQUET-107) | Add option to disable summary metadata aggregation after MR jobs |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-109](https://issues.apache.org/jira/browse/PARQUET-109) | Fix LICENSE and NOTICE files for parquet-format release |  Major | parquet-format | Ryan Blue | Ryan Blue |
| [PARQUET-106](https://issues.apache.org/jira/browse/PARQUET-106) | Relax InputSplit Protections |  Minor | . | Daniel Weeks | Daniel Weeks |
| [PARQUET-122](https://issues.apache.org/jira/browse/PARQUET-122) | make parquet.task.side.metadata=true by default |  Major | . | Julien Le Dem | Julien Le Dem |
| [PARQUET-135](https://issues.apache.org/jira/browse/PARQUET-135) |  Input location is not getting set for the getStatistics in ParquetLoader when using two different loaders  within a Pig script. |  Major | . | elif dede | elif dede |
| [PARQUET-132](https://issues.apache.org/jira/browse/PARQUET-132) | AvroParquetInputFormat should use a parameterized type |  Major | . | Ryan Blue |  |
| [PARQUET-114](https://issues.apache.org/jira/browse/PARQUET-114) | Sample NanoTime class serializes and deserializes Timestamp incorrectly |  Major | . | Brock Noland | Brock Noland |
| [PARQUET-145](https://issues.apache.org/jira/browse/PARQUET-145) | InternalParquetRecordReader.close() should not throw an exception if initialization has failed |  Major | parquet-mr | wolfgang hoschek | wolfgang hoschek |
| [PARQUET-150](https://issues.apache.org/jira/browse/PARQUET-150) | Merge script requires ':' in PR names |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-168](https://issues.apache.org/jira/browse/PARQUET-168) | Wrong command line option description in parquet-tools |  Minor | parquet-mr | Cheng Lian | Cheng Lian |
| [PARQUET-136](https://issues.apache.org/jira/browse/PARQUET-136) | NPE thrown in StatisticsFilter when all values in a string/binary column trunk are null |  Major | parquet-mr | Cheng Lian |  |
| [PARQUET-174](https://issues.apache.org/jira/browse/PARQUET-174) | Fix Java6 compatibility |  Minor | parquet-mr | Laurent Goujon | Laurent Goujon |
| [PARQUET-124](https://issues.apache.org/jira/browse/PARQUET-124) | parquet.hadoop.ParquetOutputCommitter.commitJob() throws parquet.io.ParquetEncodingException |  Minor | parquet-mr | Chris Albright |  |
| [PARQUET-142](https://issues.apache.org/jira/browse/PARQUET-142) | parquet-tools doesn't filter \_SUCCESS file |  Minor | parquet-mr | Neville Li |  |
| [PARQUET-157](https://issues.apache.org/jira/browse/PARQUET-157) | Divide by zero in logging code |  Major | parquet-mr | Jim Carroll | Jim Carroll |
| [PARQUET-173](https://issues.apache.org/jira/browse/PARQUET-173) | StatisticsFilter doesn't handle And properly |  Blocker | parquet-mr | Cheng Lian | Cheng Lian |
| [PARQUET-184](https://issues.apache.org/jira/browse/PARQUET-184) | Add release scripts and documentation |  Major | parquet-format, parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-113](https://issues.apache.org/jira/browse/PARQUET-113) | Clarify parquet-format specification for LIST and MAP structures. |  Major | parquet-format, parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-187](https://issues.apache.org/jira/browse/PARQUET-187) | parquet-scrooge doesn't compile under 2.11 |  Minor | parquet-mr | Colin Marc | Colin Marc |
| [PARQUET-186](https://issues.apache.org/jira/browse/PARQUET-186) | Poor performance in SnappyCodec because of string concat in tight loop |  Major | parquet-mr | Cristian Opris | Ryan Blue |
| [PARQUET-162](https://issues.apache.org/jira/browse/PARQUET-162) | ParquetThrift should throw when unrecognized columns are passed to the column projection API |  Major | parquet-mr | Alex Levenson | Tianshuo Deng |
| [PARQUET-202](https://issues.apache.org/jira/browse/PARQUET-202) | Typo in the connection info in the pom prevents publishing an RC |  Major | . | Alex Levenson | Alex Levenson |
| [PARQUET-208](https://issues.apache.org/jira/browse/PARQUET-208) | revert PARQUET-197 |  Major | . | Tianshuo Deng | Tianshuo Deng |
| [PARQUET-188](https://issues.apache.org/jira/browse/PARQUET-188) | Parquet writes columns out of order (compared to the schema) |  Major | parquet-mr | Colin Marc | Ryan Blue |
| [PARQUET-97](https://issues.apache.org/jira/browse/PARQUET-97) | ProtoParquetReader builder factory method not static |  Minor | . | Viktor Szathmáry | Viktor Szathmáry |
| [PARQUET-180](https://issues.apache.org/jira/browse/PARQUET-180) | Parquet-thrift compile issue with 0.9.2. |  Major | . | Ryan Blue |  |
| [PARQUET-215](https://issues.apache.org/jira/browse/PARQUET-215) | Parquet Thrift should discard records with unrecognized union members |  Major | parquet-mr | Alex Levenson |  |
| [PARQUET-217](https://issues.apache.org/jira/browse/PARQUET-217) | Memory Manager's min allocation heuristic is not valid for schemas with many columns |  Major | . | Alex Levenson | Alex Levenson |
| [PARQUET-197](https://issues.apache.org/jira/browse/PARQUET-197) | parquet-cascading and the mapred API does not create metadata file |  Major | . | Tianshuo Deng | Tianshuo Deng |
| [PARQUET-189](https://issues.apache.org/jira/browse/PARQUET-189) | Support building parquet with thrift 0.9.0 |  Minor | . | Ferdinand Xu | ferdinand xu |
| [PARQUET-214](https://issues.apache.org/jira/browse/PARQUET-214) | Avro: Regression caused by schema handling |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-232](https://issues.apache.org/jira/browse/PARQUET-232) | minor compilation issue |  Trivial | parquet-cpp | Fabrizio Fabbri | Fabrizio Fabbri |
| [PARQUET-242](https://issues.apache.org/jira/browse/PARQUET-242) | AvroReadSupport.setAvroDataSupplier is broken |  Blocker | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-235](https://issues.apache.org/jira/browse/PARQUET-235) | Fix compatibility of parquet.metadata with 1.5.0 |  Blocker | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-234](https://issues.apache.org/jira/browse/PARQUET-234) | Restore ParquetInputSplit methods from 1.5.0 |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-239](https://issues.apache.org/jira/browse/PARQUET-239) | Make AvroParquetReader#builder() static |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-211](https://issues.apache.org/jira/browse/PARQUET-211) | Release parquet-mr 1.6.0 |  Major | parquet-mr | Ryan Blue | Ryan Blue |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-58](https://issues.apache.org/jira/browse/PARQUET-58) | Add PR merge tool to incubator-parquet-format |  Major | parquet-format | Ryan Blue | Ryan Blue |
| [PARQUET-50](https://issues.apache.org/jira/browse/PARQUET-50) | Remove items from semver blacklist |  Major | parquet-mr | Alex Levenson | Alex Levenson |
| [PARQUET-139](https://issues.apache.org/jira/browse/PARQUET-139) | Avoid reading file footers in parquet-avro InputFormat |  Major | . | Ryan Blue | Ryan Blue |
| [PARQUET-190](https://issues.apache.org/jira/browse/PARQUET-190) | Fix an inconsistent Javadoc comment of ReadSupport.prepareForRead |  Trivial | . | Akihiro Okuno |  |
| [PARQUET-230](https://issues.apache.org/jira/browse/PARQUET-230) | Add build instructions to the README |  Major | parquet-mr | Ryan Blue | Ryan Blue |


