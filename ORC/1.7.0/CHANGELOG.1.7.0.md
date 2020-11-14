
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

## Release 1.7.0 - Unreleased (as of 2020-11-14)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-595](https://issues.apache.org/jira/browse/ORC-595) | Optimize Decimal64 scale calculation |  Critical | encoding | Panagiotis Garefalakis | Panagiotis Garefalakis |
| [ORC-606](https://issues.apache.org/jira/browse/ORC-606) | Optimize Timestamp parseNanos calculation |  Major | encoding | Panagiotis Garefalakis | Panagiotis Garefalakis |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-602](https://issues.apache.org/jira/browse/ORC-602) | Create adaptor for using FSDataInputStream for Java ORC reader |  Major | Java | Owen O'Malley | Owen O'Malley |
| [ORC-40](https://issues.apache.org/jira/browse/ORC-40) | C++ Reader does not support predicate pushdown. |  Major | C++ | Owen O'Malley | Gang Wu |
| [ORC-577](https://issues.apache.org/jira/browse/ORC-577) | Allow row-level filtering |  Major | . | Owen O'Malley | Panagiotis Garefalakis |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-566](https://issues.apache.org/jira/browse/ORC-566) | Add docker file for building site |  Major | site | Owen O'Malley | Owen O'Malley |
| [ORC-568](https://issues.apache.org/jira/browse/ORC-568) | Make the convert tool sort the old \_col\<number\> column names by number |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-574](https://issues.apache.org/jira/browse/ORC-574) | Performance: Use const references for string statistics min and max to avoid copy construction |  Major | C++ | David Zanter | David Zanter |
| [ORC-480](https://issues.apache.org/jira/browse/ORC-480) | [C++] Deactivate WARN\_FLAGS in release build |  Major | C++ | Uwe Korn | Uwe Korn |
| [ORC-588](https://issues.apache.org/jira/browse/ORC-588) | Static field or method should be directly referred by its class |  Critical | Java | lamber-ken | lamber-ken |
| [ORC-599](https://issues.apache.org/jira/browse/ORC-599) | Bump guava version to 28.1-jre |  Major | . | Panagiotis Garefalakis | Panagiotis Garefalakis |
| [ORC-608](https://issues.apache.org/jira/browse/ORC-608) | Fix DecimalBench reader options |  Major | . | Panagiotis Garefalakis | Panagiotis Garefalakis |
| [ORC-609](https://issues.apache.org/jira/browse/ORC-609) | Upgrade aircompressor to 0.16 |  Major | Java | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-607](https://issues.apache.org/jira/browse/ORC-607) | Sync orc-benchmarks module to the others |  Major | Java | Panagiotis Garefalakis | Panagiotis Garefalakis |
| [ORC-615](https://issues.apache.org/jira/browse/ORC-615) | Refactor decompression streams into common base class |  Major | . | Norbert Luksa | Norbert Luksa |
| [ORC-622](https://issues.apache.org/jira/browse/ORC-622) | Refactoring of TreeReader into TypeReader and BatchReader |  Minor | Java, Reader | Pavan Lanka | Pavan Lanka |
| [ORC-638](https://issues.apache.org/jira/browse/ORC-638) | ORCMapredRecordWriter enlarge columnVector with factors when child array size is not large enough |  Major | . | Lei Sun | Lei Sun |
| [ORC-646](https://issues.apache.org/jira/browse/ORC-646) | Add Ubuntu 20.04 docker file |  Major | . | William Hyun | William Hyun |
| [ORC-652](https://issues.apache.org/jira/browse/ORC-652) | Upgrade ZSTD to 1.4.5 |  Major | C++ | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-597](https://issues.apache.org/jira/browse/ORC-597) | Row-level filtering bench |  Major | . | Panagiotis Garefalakis | Panagiotis Garefalakis |
| [ORC-655](https://issues.apache.org/jira/browse/ORC-655) | Update bench to use Spark 2.4.6 |  Major | tools | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-656](https://issues.apache.org/jira/browse/ORC-656) | Use gharchive.org instead of githubarchive.org |  Major | tools | William Hyun | William Hyun |
| [ORC-657](https://issues.apache.org/jira/browse/ORC-657) | Remove com.netflix.iceberg dependency in java/bench module |  Major | build | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-639](https://issues.apache.org/jira/browse/ORC-639) | Improve zstd compression performance |  Minor | C++, compression | Ion Gaztañaga | Ion Gaztañaga |
| [ORC-651](https://issues.apache.org/jira/browse/ORC-651) | Use GitHub Pull Request Template |  Minor | documentation | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-684](https://issues.apache.org/jira/browse/ORC-684) | [C++] Make Floating point NaN check more strict |  Minor | . | Panagiotis Garefalakis | Panagiotis Garefalakis |
| [ORC-683](https://issues.apache.org/jira/browse/ORC-683) | PPD: Make Floating point NaN check more strict |  Minor | . | Panagiotis Garefalakis | Panagiotis Garefalakis |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-555](https://issues.apache.org/jira/browse/ORC-555) | IllegalArgumentException when reading files with compressed footers bigger than 16k |  Major | . | Shardul Mahadik | Owen O'Malley |
| [ORC-504](https://issues.apache.org/jira/browse/ORC-504) | Create a reproducible java build |  Major | . | Owen O'Malley | Yukihiro Okada |
| [ORC-424](https://issues.apache.org/jira/browse/ORC-424) | Add findbugs checks for test classes |  Major | . | Owen O'Malley | Yukihiro Okada |
| [ORC-554](https://issues.apache.org/jira/browse/ORC-554) | Float to timestamp schema evolution handles time/nanoseconds incorrectly |  Major | . | László Bodor | László Bodor |
| [ORC-526](https://issues.apache.org/jira/browse/ORC-526) | orc-tools convert does not respect second fractions |  Trivial | tools | Fabian Groffen | Yukihiro Okada |
| [ORC-361](https://issues.apache.org/jira/browse/ORC-361) |  org.apache.orc.impl.MemoryManagerImpl    : Owner thread expected Thread[main,5,main], got Thread[pool-15-thread-1,5,main] |  Major | Java | wxmimperio | Owen O'Malley |
| [ORC-528](https://issues.apache.org/jira/browse/ORC-528) | orc-tools timestamps off by one? |  Minor | tools | Fabian Groffen | Yukihiro Okada |
| [ORC-414](https://issues.apache.org/jira/browse/ORC-414) | [C++] ORC files with malformed protobuf objects can crash a release build |  Major | C++ | Quanlong Huang | Quanlong Huang |
| [ORC-557](https://issues.apache.org/jira/browse/ORC-557) | Large ORC file parsing failed |  Major | Reader, tools | 周娜 | 周娜 |
| [ORC-565](https://issues.apache.org/jira/browse/ORC-565) | Fix a couple c++ tests when building out of tree |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-562](https://issues.apache.org/jira/browse/ORC-562) | Don't wrap readerSchema in acidSchema, if readerSchema is already acid |  Major | Java | László Pintér | László Pintér |
| [ORC-567](https://issues.apache.org/jira/browse/ORC-567) | [C++] Fix integer overflow in RowReader::seekToRow |  Major | C++ | Gang Wu | Gang Wu |
| [ORC-569](https://issues.apache.org/jira/browse/ORC-569) | Empty positions list in first row index entry |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-563](https://issues.apache.org/jira/browse/ORC-563) | ORC-540 could break schema evolution on PPD codepaths |  Major | . | László Bodor | László Bodor |
| [ORC-571](https://issues.apache.org/jira/browse/ORC-571) | ArrayIndexOutOfBoundsException in StripePlanner.readRowIndex |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-570](https://issues.apache.org/jira/browse/ORC-570) | FS: ReaderOptions.filesystem should also accept a lazy Supplier |  Major | . | Gopal Vijayaraghavan | Mustafa İman |
| [ORC-27](https://issues.apache.org/jira/browse/ORC-27) | C++ reader does not read dates correctly prior to 1583 |  Minor | . | Aliaksei Sandryhaila | Owen O'Malley |
| [ORC-552](https://issues.apache.org/jira/browse/ORC-552) | Fix compilation of C++ Reader.cc on centos 6. |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-556](https://issues.apache.org/jira/browse/ORC-556) | ConvertTreeReader can incorrectly be applied on columns of the same primitive type |  Major | . | Ratandeep Ratti | Shardul Mahadik |
| [ORC-581](https://issues.apache.org/jira/browse/ORC-581) | C++ library could crash in orc::TypeImpl::addStructField |  Major | . | Quanlong Huang | Quanlong Huang |
| [ORC-580](https://issues.apache.org/jira/browse/ORC-580) | Crash in StripeStreamsImpl::getEncoding |  Major | C++ | Quanlong Huang | Quanlong Huang |
| [ORC-584](https://issues.apache.org/jira/browse/ORC-584) | TypeDescription toJson() returns invalid json |  Major | Java | akın tekeoğlu | akın tekeoğlu |
| [ORC-586](https://issues.apache.org/jira/browse/ORC-586) | [C++] Memory leak in StructColumnReader |  Major | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [ORC-589](https://issues.apache.org/jira/browse/ORC-589) | [C++] ORC doesn't check for negative dictionary entry lengths anymore |  Major | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [ORC-564](https://issues.apache.org/jira/browse/ORC-564) | fix Docker scripts so that their command is bash |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-591](https://issues.apache.org/jira/browse/ORC-591) | orc::readFully crash due to null pointer variable |  Major | C++ | Quanlong Huang | Quanlong Huang |
| [ORC-590](https://issues.apache.org/jira/browse/ORC-590) | Crash in orc::RleDecoderV2::readByte |  Major | C++ | Quanlong Huang | Zoltán Borók-Nagy |
| [ORC-578](https://issues.apache.org/jira/browse/ORC-578) | IllegalArgumentException: Can't use LongColumnVector to read proleptic Gregorian dates. |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-598](https://issues.apache.org/jira/browse/ORC-598) | Unable to read ORC file with struct and array.length \> 1024 |  Major | Java | Krisztian Kasa | Krisztian Kasa |
| [ORC-600](https://issues.apache.org/jira/browse/ORC-600) | StringDictionaryColumnReader does not update index buffer correctly |  Major | . | Norbert Luksa | Norbert Luksa |
| [ORC-610](https://issues.apache.org/jira/browse/ORC-610) | Updated Copyright year in the NOTICE file |  Minor | documentation | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-604](https://issues.apache.org/jira/browse/ORC-604) | Check in StringDictionary.getValueByIndex is too permissive |  Major | C++ | Norbert Luksa | Norbert Luksa |
| [ORC-519](https://issues.apache.org/jira/browse/ORC-519) | Incorrect ORC v1 specification of Decimal encoding |  Minor | documentation | Brent Kerby | Norbert Luksa |
| [ORC-621](https://issues.apache.org/jira/browse/ORC-621) | Need reader fix for ORC-569 |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-630](https://issues.apache.org/jira/browse/ORC-630) | Fix orc-tools uber jar by adding guava dependency back |  Major | tools | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-628](https://issues.apache.org/jira/browse/ORC-628) | Add a new java tool to count rows from ORC files under a directory |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-631](https://issues.apache.org/jira/browse/ORC-631) | Add guava dependency to tools jar |  Major | . | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-629](https://issues.apache.org/jira/browse/ORC-629) | PPD: Floating point NaN is not transitive across comparisons |  Major | Java, Reader | Gopal Vijayaraghavan | Panagiotis Garefalakis |
| [ORC-641](https://issues.apache.org/jira/browse/ORC-641) | orc-core includes packages from io.airlift.slice |  Major | . | David Phillips | David Phillips |
| [ORC-643](https://issues.apache.org/jira/browse/ORC-643) | Change logging of codec creation to debug |  Major | . | Owen O'Malley |  |
| [ORC-649](https://issues.apache.org/jira/browse/ORC-649) | duplicate method invocation (buildConversion) in SchemaEvolution |  Minor | . | Arvin Zheng | Arvin Zheng |
| [ORC-650](https://issues.apache.org/jira/browse/ORC-650) | Fix argument to find\_package() for ZSTD |  Major | C++ | Dongjoon Hyun | Nehal Jagdish Wani |
| [ORC-654](https://issues.apache.org/jira/browse/ORC-654) | Fix build with clang-10 and ubuntu-20 |  Major | C++ | Dongjoon Hyun | Nikita Mikhaylov |
| [ORC-636](https://issues.apache.org/jira/browse/ORC-636) | [C++] PPD Floating point stats with NaN should be ignored |  Major | C++, Reader | Panagiotis Garefalakis | Panagiotis Garefalakis |
| [ORC-659](https://issues.apache.org/jira/browse/ORC-659) | Initialize "next\_in" before calling DeflateInit2 |  Major | C++ | Dongjoon Hyun | Ion Gaztañaga |
| [ORC-626](https://issues.apache.org/jira/browse/ORC-626) | Reading Struct Column Having Multiple Fields With Same Name Causes java.io.EOFException |  Major | . | Syed Shameerur Rahman | Syed Shameerur Rahman |
| [ORC-644](https://issues.apache.org/jira/browse/ORC-644) | nested struct evolution does not respect to orc.force.positional.evolution |  Major | Java | Arvin Zheng | Arvin Zheng |
| [ORC-661](https://issues.apache.org/jira/browse/ORC-661) | DateColumnStatistics uses Date, which is not timezone agnostic. |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-611](https://issues.apache.org/jira/browse/ORC-611) | Incorrect min-max stats for sub-millisecond timestamps |  Major | C++, Java | Csaba Ringhofer | Panagiotis Garefalakis |
| [ORC-623](https://issues.apache.org/jira/browse/ORC-623) | Potentially incorrect Sarg evaluation for not(in) and not(isNull) |  Major | . | Shardul Mahadik | Owen O'Malley |
| [ORC-658](https://issues.apache.org/jira/browse/ORC-658) | Fix NoClassDefFoundError during benchmark data generation |  Major | tools | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-668](https://issues.apache.org/jira/browse/ORC-668) | Use \`TestSchemaEvolution\` as a test file prefix to prevent test failure |  Major | Java | William Hyun | William Hyun |
| [ORC-667](https://issues.apache.org/jira/browse/ORC-667) | Positional mapping for nested struct types should not applied by default |  Blocker | Java | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-669](https://issues.apache.org/jira/browse/ORC-669) | Reduce breaking changes in ReaderImpl.java |  Major | Java | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-670](https://issues.apache.org/jira/browse/ORC-670) | RecordReaderImpl.findColumns should respect orc.schema.evolution.case.sensitive |  Critical | Java | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-671](https://issues.apache.org/jira/browse/ORC-671) | Add OrcTail.getStripeStatistics back for backward compatiblility |  Major | Java | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-673](https://issues.apache.org/jira/browse/ORC-673) | PPD: LTE Point equality comparison is wrong when RG MIN==MAX |  Major | . | Panagiotis Garefalakis | Panagiotis Garefalakis |
| [ORC-676](https://issues.apache.org/jira/browse/ORC-676) | Add getRawDataSizeFromColIndices back |  Major | Java | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-680](https://issues.apache.org/jira/browse/ORC-680) | Upgrade Travis CI linux os from Ubuntu 14.04 to Ubuntu 16.04 |  Major | C++, Java | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-677](https://issues.apache.org/jira/browse/ORC-677) | Fix SargApplier compilation error |  Major | Java | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-681](https://issues.apache.org/jira/browse/ORC-681) | Upgrade commons-codec to 1.15 |  Major | Java | William Hyun | William Hyun |
| [ORC-682](https://issues.apache.org/jira/browse/ORC-682) | Upgrade to commons-lang3 |  Major | Java | William Hyun | William Hyun |
| [ORC-503](https://issues.apache.org/jira/browse/ORC-503) | Add Maven Wrapper |  Major | . | Owen O'Malley | Dongjoon Hyun |
| [ORC-672](https://issues.apache.org/jira/browse/ORC-672) | Fix made in ORC-598 need to be extended to other readers like DecimalFromFloatTreeReader |  Major | Java | Taraka Rama Rao Lethavadla | Panagiotis Garefalakis |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-647](https://issues.apache.org/jira/browse/ORC-647) | Add macOS 10.15 test to Travis CI |  Major | build | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-648](https://issues.apache.org/jira/browse/ORC-648) | Add GitHub Action for Java8/Java11 test coverage |  Major | build | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-679](https://issues.apache.org/jira/browse/ORC-679) | Update tzdata to recover Win32 build in AppVeyor |  Major | C++ | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-678](https://issues.apache.org/jira/browse/ORC-678) | Upgrade JUnit to 4.13.1 |  Minor | Java | Dongjoon Hyun | Dongjoon Hyun |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-663](https://issues.apache.org/jira/browse/ORC-663) | [C++] Support nanosecond in timestamp column statistics |  Major | C++ | Gang Wu | Gang Wu |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-553](https://issues.apache.org/jira/browse/ORC-553) | Add test case to check that SchemaEvolution checkAcidSchema works well |  Minor | . | Aron Hamvas | Aron Hamvas |
| [ORC-560](https://issues.apache.org/jira/browse/ORC-560) | Improve docker tests and include centos 8 and debian 10 |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-576](https://issues.apache.org/jira/browse/ORC-576) | Improve LICENSE file |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-664](https://issues.apache.org/jira/browse/ORC-664) | docker image for centos7 fails to build zstd |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-674](https://issues.apache.org/jira/browse/ORC-674) | Update docker files adding Ubuntu 20 and removing Debian 8 and Ubuntu 14 |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-675](https://issues.apache.org/jira/browse/ORC-675) | Remove debian8/ubuntu14 docker directories |  Minor | . | Dongjoon Hyun | Dongjoon Hyun |


