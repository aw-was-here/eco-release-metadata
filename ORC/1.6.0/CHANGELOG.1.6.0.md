
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
# Apache Orc Changelog

## Release 1.6.0 - 2019-09-03



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-383](https://issues.apache.org/jira/browse/ORC-383) | Parallel builds fails with ConcurrentModificationException |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [ORC-397](https://issues.apache.org/jira/browse/ORC-397) | ORC should allow selectively disabling dictionary-encoding on specified columns |  Major | . | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [ORC-452](https://issues.apache.org/jira/browse/ORC-452) | Support converting MAP column from JSON to ORC |  Major | Java, tools | Quanlong Huang | Quanlong Huang |
| [ORC-395](https://issues.apache.org/jira/browse/ORC-395) | [C++] Support ZSTD compression & decompression |  Major | C++ | Gang Wu | Gang Wu |
| [ORC-189](https://issues.apache.org/jira/browse/ORC-189) | Add timestamp with local timezone |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-14](https://issues.apache.org/jira/browse/ORC-14) | Add column level encryption to ORC files |  Major | . | Owen O'Malley | Owen O'Malley |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-364](https://issues.apache.org/jira/browse/ORC-364) | Minor fixups on javadoc. |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-116](https://issues.apache.org/jira/browse/ORC-116) | Create submodule with example java code from documentation |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-334](https://issues.apache.org/jira/browse/ORC-334) | Add AppVeyor support for integration on windows |  Major | . | Deepak Majeti | Renat Valiullin |
| [ORC-366](https://issues.apache.org/jira/browse/ORC-366) | Improve TZDIR setup for WIN32 |  Major | . | Renat Valiullin | Renat Valiullin |
| [ORC-372](https://issues.apache.org/jira/browse/ORC-372) | Enable valgrind for C++ travis-ci tests |  Major | . | Deepak Majeti | Deepak Majeti |
| [ORC-376](https://issues.apache.org/jira/browse/ORC-376) | Add Ubuntu18 docker file |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-386](https://issues.apache.org/jira/browse/ORC-386) | Add new spark file format benchmark |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-393](https://issues.apache.org/jira/browse/ORC-393) | Add ORC snapcraft definition |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-399](https://issues.apache.org/jira/browse/ORC-399) | Move Java compiler to version 8. |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-385](https://issues.apache.org/jira/browse/ORC-385) | Change RecordReader from AutoCloseable to Closeable |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-418](https://issues.apache.org/jira/browse/ORC-418) | Fix broken docker build script |  Major | C++ | Owen O'Malley | Owen O'Malley |
| [ORC-429](https://issues.apache.org/jira/browse/ORC-429) | Refactor code in TypeImpl.cc |  Minor | C++ | Fang Zheng | Fang Zheng |
| [ORC-431](https://issues.apache.org/jira/browse/ORC-431) | Fix typo in exception message and simplify code logic |  Minor | C++ | Fang Zheng | Fang Zheng |
| [ORC-447](https://issues.apache.org/jira/browse/ORC-447) | Change the docker scripts to keep a persistent m2 cache |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-448](https://issues.apache.org/jira/browse/ORC-448) | Fix centos6 compilation "error: converting ‘false’ to pointer type" |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-454](https://issues.apache.org/jira/browse/ORC-454) | Use Spark 2.4.0 in benchmark |  Major | Java | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-466](https://issues.apache.org/jira/browse/ORC-466) | Show \`mode\` for \`NoSuchPaddingException\` |  Minor | Java | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-463](https://issues.apache.org/jira/browse/ORC-463) | Add \`version\` command |  Minor | tools | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-475](https://issues.apache.org/jira/browse/ORC-475) | ORC reader should lazily get filesystem |  Minor | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [ORC-478](https://issues.apache.org/jira/browse/ORC-478) | [C++] Add move constructor for DataBuffer to enable memory ownership transfer |  Minor | C++ | Yurui Zhou | Yurui Zhou |
| [ORC-446](https://issues.apache.org/jira/browse/ORC-446) | [C++] Add possibility to use prebuilt (windows) zstd lib |  Major | . | Renat Valiullin | Renat Valiullin |
| [ORC-506](https://issues.apache.org/jira/browse/ORC-506) | [C++] fix compiler warnings |  Trivial | C++ | Renat Valiullin | Renat Valiullin |
| [ORC-476](https://issues.apache.org/jira/browse/ORC-476) | Make SearchAgument kryo buffer size configurable |  Major | MapReduce | Dhruve Ashar | Dhruve Ashar |
| [ORC-411](https://issues.apache.org/jira/browse/ORC-411) | Update build to work with Java 10. |  Major | . | Owen O'Malley | Owen O'Malley |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-367](https://issues.apache.org/jira/browse/ORC-367) | Boolean columns are read incorrectly when using seek. |  Major | . | Jesus Camacho Rodriguez | Owen O'Malley |
| [ORC-373](https://issues.apache.org/jira/browse/ORC-373) | If "orc.dictionary.key.threshold" is set to 0, don't try dictionary encoding. |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [ORC-379](https://issues.apache.org/jira/browse/ORC-379) | ConversionTreeReaders should handle Decimal64 |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [ORC-380](https://issues.apache.org/jira/browse/ORC-380) | Add isOnlyImplicitConversion boolean function to SchemaEvolution |  Critical | ORCv2 | Matt McCline | Matt McCline |
| [ORC-365](https://issues.apache.org/jira/browse/ORC-365) | Only print min and max for timestamp stats once |  Minor | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [ORC-382](https://issues.apache.org/jira/browse/ORC-382) | Apache rat exclusions + add rat check to travis |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [ORC-371](https://issues.apache.org/jira/browse/ORC-371) | [C++] Disable Libhdfspp build when Cyrus SASL is not found |  Major | . | Deepak Majeti | Anatoli Shein |
| [ORC-384](https://issues.apache.org/jira/browse/ORC-384) | C++ Reader leaks memory when reading a non-ORC file |  Minor | C++ | Martin Rupp | Martin Rupp |
| [ORC-396](https://issues.apache.org/jira/browse/ORC-396) | ORC build fails to find LZ4 lib directory on some platforms |  Major | C++ | Tim Armstrong | Tim Armstrong |
| [ORC-203](https://issues.apache.org/jira/browse/ORC-203) | Modify the StringStatistics to trim minimum and maximum values |  Major | . | Owen O'Malley | Sandeep More |
| [ORC-401](https://issues.apache.org/jira/browse/ORC-401) | Typing error found in document and site |  Trivial | documentation, site | Chuanyin Xu | Chuanyin Xu |
| [ORC-375](https://issues.apache.org/jira/browse/ORC-375) | v1.5.1 install from source fails under GCC 7.3.0 |  Major | build, C++ | Serge Fein | James Clampffer |
| [ORC-403](https://issues.apache.org/jira/browse/ORC-403) | Should check offsets got from protobuf Objects |  Major | C++ | Quanlong Huang | Quanlong Huang |
| [ORC-406](https://issues.apache.org/jira/browse/ORC-406) | ORC: Char(n) and Varchar(n) writers truncate to n bytes & corrupts multi-byte data |  Major | . | Gopal Vijayaraghavan | Gopal Vijayaraghavan |
| [ORC-391](https://issues.apache.org/jira/browse/ORC-391) | [C++]  parseType does not accept underscore in the field name |  Minor | . | Zherui Cao | Zherui Cao |
| [ORC-410](https://issues.apache.org/jira/browse/ORC-410) | Fix a locale-dependent test in TestCsvReader |  Major | . | Kotaro Terada | Kotaro Terada |
| [ORC-409](https://issues.apache.org/jira/browse/ORC-409) | Changes for extending MemoryManagerImpl |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [ORC-237](https://issues.apache.org/jira/browse/ORC-237) | OrcFile.mergeFiles Specified block size is less than configured minimum value |  Major | . | eBerh |  |
| [ORC-407](https://issues.apache.org/jira/browse/ORC-407) | JsonFileDump class needs to be updated to take into account string truncations |  Major | . | Sandeep More | Sandeep More |
| [ORC-416](https://issues.apache.org/jira/browse/ORC-416) | Avoid opening data reader when there is no stripe |  Major | Java | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-419](https://issues.apache.org/jira/browse/ORC-419) | Ensure to call \`close\` at RecordReaderImpl constructor exception |  Critical | Java | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-417](https://issues.apache.org/jira/browse/ORC-417) | Use dynamic Apache Maven mirror link |  Minor | build | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-413](https://issues.apache.org/jira/browse/ORC-413) | Missing Javadoc for a param in CsvReader |  Major | . | Kotaro Terada | Kotaro Terada |
| [ORC-426](https://issues.apache.org/jira/browse/ORC-426) | Errors in ORC Specification |  Minor | documentation | Fang Zheng | Fang Zheng |
| [ORC-427](https://issues.apache.org/jira/browse/ORC-427) | Fix errors in ORC C++ public API Doxygen documentation |  Minor | C++, documentation | Fang Zheng | Fang Zheng |
| [ORC-423](https://issues.apache.org/jira/browse/ORC-423) | Add docker scripts and update website for debian 9 and ubuntu 18 |  Major | build, site | Owen O'Malley | Owen O'Malley |
| [ORC-432](https://issues.apache.org/jira/browse/ORC-432) | openjdk 8 has a bug that prevents surefire from working |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-433](https://issues.apache.org/jira/browse/ORC-433) | Suppress the downloading messages from Maven that make travis CI crash |  Major | build | Owen O'Malley | Owen O'Malley |
| [ORC-412](https://issues.apache.org/jira/browse/ORC-412) | [C++] ORC: Char(n) and Varchar(n) writers truncate to n bytes & corrupts multi-byte data |  Major | . | Gang Wu | Gang Wu |
| [ORC-438](https://issues.apache.org/jira/browse/ORC-438) | NPE in StringStatisticsImpl.merge() |  Major | . | Sandeep More | Sandeep More |
| [ORC-435](https://issues.apache.org/jira/browse/ORC-435) | Ability to read stripes that are greater than 2GB |  Major | Reader | Prasanth Jayachandran | Prasanth Jayachandran |
| [ORC-477](https://issues.apache.org/jira/browse/ORC-477) | BloomFilter for ACID table does not get created |  Major | . | Denys Kuzmenko | Denys Kuzmenko |
| [ORC-422](https://issues.apache.org/jira/browse/ORC-422) | Predicate push down can return incorrect value when lower/upper bounds are set |  Major | . | Sandeep More | Sandeep More |
| [ORC-490](https://issues.apache.org/jira/browse/ORC-490) | Refactor SARG applier to make code simpler |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-491](https://issues.apache.org/jira/browse/ORC-491) | PPD: Column name lookups need to look a struct deeper for ACID |  Major | . | Gopal Vijayaraghavan | Vineet Garg |
| [ORC-497](https://issues.apache.org/jira/browse/ORC-497) | Build failure with Maven 3.6.X |  Major | build | Sandeep More | Sandeep More |
| [ORC-498](https://issues.apache.org/jira/browse/ORC-498) | ReaderImpl and RecordReaderImpl open separate file handles |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-511](https://issues.apache.org/jira/browse/ORC-511) | Fix debian 8 docker file |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-512](https://issues.apache.org/jira/browse/ORC-512) | Fix c++ build on centos6. |  Major | C++ | Owen O'Malley | Owen O'Malley |
| [ORC-514](https://issues.apache.org/jira/browse/ORC-514) | Malformed RowIndex stream meta exception when read statistics from stripe with bloom filter |  Blocker | C++ | Renat Valiullin | Renat Valiullin |
| [ORC-518](https://issues.apache.org/jira/browse/ORC-518) | Fix false positives from findbugs with jdk11. |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-517](https://issues.apache.org/jira/browse/ORC-517) | Incorrect statistics written for decimal values |  Major | Java | Nándor Kollár | Owen O'Malley |
| [ORC-513](https://issues.apache.org/jira/browse/ORC-513) | [C++] Improve RowReaderImpl::seekToRow performance |  Major | C++ | Gang Wu | Gang Wu |
| [ORC-522](https://issues.apache.org/jira/browse/ORC-522) | Add type annotations |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-538](https://issues.apache.org/jira/browse/ORC-538) | Fix a few missing things from type attributes. |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-536](https://issues.apache.org/jira/browse/ORC-536) | "expectedEntries should be \> 0" error when bloom filters enabled but rowIndexStride set to 0 |  Major | Java | Jason Dere | Jason Dere |
| [ORC-540](https://issues.apache.org/jira/browse/ORC-540) | PPD: Positional lookups for columns with Options.forcePositionalEvolution(true) |  Major | Java | Gopal Vijayaraghavan | László Bodor |
| [ORC-542](https://issues.apache.org/jira/browse/ORC-542) | The pom files are pulling in old versions of Hadoop. |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-548](https://issues.apache.org/jira/browse/ORC-548) | Fix Java InStream for BufferChunks that have extra data |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-455](https://issues.apache.org/jira/browse/ORC-455) | Fail to convert output of data |  Major | . | Tomas Zulberti | Yukihiro Okada |
| [ORC-549](https://issues.apache.org/jira/browse/ORC-549) | C++ add include for unordered\_map |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-363](https://issues.apache.org/jira/browse/ORC-363) | Enable zstd decompression in ORC Java reader |  Major | . | Xiening Dai | Xiening Dai |
| [ORC-546](https://issues.apache.org/jira/browse/ORC-546) | The timestamps are getting duplicated millis after ORC-306. |  Major | Java | Owen O'Malley | Owen O'Malley |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-251](https://issues.apache.org/jira/browse/ORC-251) | Modify InStream and OutStream to optionally encrypt data |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-421](https://issues.apache.org/jira/browse/ORC-421) | Separate the compression options from the CompressionCodec |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-483](https://issues.apache.org/jira/browse/ORC-483) | Extend specification and protobuf definition with column encryption |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-485](https://issues.apache.org/jira/browse/ORC-485) | Add the API changes for getting column encryption |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-510](https://issues.apache.org/jira/browse/ORC-510) | Cleanup API for StreamOptions and CompressionCodec.Options |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-509](https://issues.apache.org/jira/browse/ORC-509) | Update the KeyProvider to match spec |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-484](https://issues.apache.org/jira/browse/ORC-484) | Extend physicalwriter for encryption |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-486](https://issues.apache.org/jira/browse/ORC-486) | Refactor the TreeWriter and WriterContext APIs so that TreeWriters can deal with encryption |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-516](https://issues.apache.org/jira/browse/ORC-516) | Modify InStream for column encryption |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-523](https://issues.apache.org/jira/browse/ORC-523) | Update ReaderImpl to support column encryption |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-487](https://issues.apache.org/jira/browse/ORC-487) | Extend the stripe read planner to understand encryption |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-529](https://issues.apache.org/jira/browse/ORC-529) | Add support for table properties to control column encryption |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-520](https://issues.apache.org/jira/browse/ORC-520) | Fix file merging for column encryption. |  Major | . | Owen O'Malley | Owen O'Malley |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-440](https://issues.apache.org/jira/browse/ORC-440) | Fix deserialization of the StringStatisticsImpl when truncated |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-461](https://issues.apache.org/jira/browse/ORC-461) | Replace \`git-wip-us\` with \`gitbox\` |  Trivial | site | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-462](https://issues.apache.org/jira/browse/ORC-462) | Add \`Dongjoon Hyun\` to the committers page |  Minor | site | Dongjoon Hyun | Dongjoon Hyun |


