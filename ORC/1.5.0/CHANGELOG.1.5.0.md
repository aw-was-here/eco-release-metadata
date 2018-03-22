
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

## Release 1.5.0 - Unreleased (as of 2018-03-22)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-199](https://issues.apache.org/jira/browse/ORC-199) | Include a CSV to ORC converter |  Major | . | Carter Shanklin | Owen O'Malley |
| [ORC-308](https://issues.apache.org/jira/browse/ORC-308) | Add function to get subtypes by name |  Major | . | Owen O'Malley | Owen O'Malley |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-173](https://issues.apache.org/jira/browse/ORC-173) | [C++] Expose Indexes as API |  Major | . | Deepak Majeti | Deepak Majeti |
| [ORC-193](https://issues.apache.org/jira/browse/ORC-193) | Refactor WriterImp to clean up TreeWriter API |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-194](https://issues.apache.org/jira/browse/ORC-194) | Split TreeWriters out of WriterImpl |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-211](https://issues.apache.org/jira/browse/ORC-211) | Remove some unused imports. |  Major | . | Guodong Jin | Guodong Jin |
| [ORC-214](https://issues.apache.org/jira/browse/ORC-214) | Upgrade Aircompressor to 0.8 |  Trivial | compression | Gopal V | Gopal V |
| [ORC-212](https://issues.apache.org/jira/browse/ORC-212) | JSON convert should properly convert Timestamp string to java.sql.Timestamp |  Major | . | Seshu Pasam | Seshu Pasam |
| [ORC-221](https://issues.apache.org/jira/browse/ORC-221) | RecordReaderImpl::evaluatePredicateMinMax should check whether predicate.getLiteralList() is empty |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [ORC-215](https://issues.apache.org/jira/browse/ORC-215) | [C++] Remove gmock and protobuf libraries from source and use ExternalProject instead |  Major | . | Deepak Majeti | Deepak Majeti |
| [ORC-219](https://issues.apache.org/jira/browse/ORC-219) | Boolean and timestamp converter for CSV |  Major | Java, tools | Seshu Pasam | Seshu Pasam |
| [ORC-230](https://issues.apache.org/jira/browse/ORC-230) | Add OSX os to travis testing |  Major | . | Deepak Majeti | Deepak Majeti |
| [ORC-223](https://issues.apache.org/jira/browse/ORC-223) | FileDump utility should print user metadata |  Major | . | Eugene Koifman | Eugene Koifman |
| [ORC-228](https://issues.apache.org/jira/browse/ORC-228) | Make MemoryManagerImpl.ROWS\_BETWEEN\_CHECKS configurable |  Major | . | Eugene Koifman | Eugene Koifman |
| [ORC-231](https://issues.apache.org/jira/browse/ORC-231) | Having configurable capability to overwrite the file with the same name already exists |  Major | . | piyush mukati | Ajay Yadava |
| [ORC-91](https://issues.apache.org/jira/browse/ORC-91) | Use hdfs v-blocks instead of zero-padding stripes |  Major | . | Gopal V | Gopal V |
| [ORC-235](https://issues.apache.org/jira/browse/ORC-235) | Update the exclusions of the recursive dependencies |  Major | Java | Owen O'Malley | Owen O'Malley |
| [ORC-238](https://issues.apache.org/jira/browse/ORC-238) | Make OrcFile's "enforceBufferSize" user-settable. |  Major | . | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [ORC-17](https://issues.apache.org/jira/browse/ORC-17) | Support HDFS as a C++ plug-in module |  Major | C++ | Charles Pritchard | Anatoli Shein |
| [ORC-272](https://issues.apache.org/jira/browse/ORC-272) | Minor porting changes. |  Minor | C++ | rip.nsk | rip.nsk |
| [ORC-280](https://issues.apache.org/jira/browse/ORC-280) | use Z\_PREFIX if zlib requires it |  Major | C++ | rip.nsk | rip.nsk |
| [ORC-271](https://issues.apache.org/jira/browse/ORC-271) | Improve HAS\_PRE\_1970 |  Minor | C++ | rip.nsk | rip.nsk |
| [ORC-290](https://issues.apache.org/jira/browse/ORC-290) | [C++] Update Readme to include C++ writer info |  Major | . | Xiening Dai | Xiening Dai |
| [ORC-300](https://issues.apache.org/jira/browse/ORC-300) | Permit use of external transformation during JSON import step |  Minor | Java, tools | Thomas Krüger | Thomas Krüger |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-188](https://issues.apache.org/jira/browse/ORC-188) | Fix RAT problems |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-185](https://issues.apache.org/jira/browse/ORC-185) | [C++] Simplify Statististics Implementation |  Major | . | Deepak Majeti | Deepak Majeti |
| [ORC-198](https://issues.apache.org/jira/browse/ORC-198) | Decimal types created with convert command generates IllegalArgumentException for valid documents |  Major | Java | Shawn Hooton | Shawn Hooton |
| [ORC-202](https://issues.apache.org/jira/browse/ORC-202) | Add enum that encodes which writer wrote a file |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-204](https://issues.apache.org/jira/browse/ORC-204) | Upgrade c++ libraries for compression |  Major | . | Owen O'Malley | Deepak Majeti |
| [ORC-160](https://issues.apache.org/jira/browse/ORC-160) | expose index read planning in RecordReaderUtils |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [ORC-217](https://issues.apache.org/jira/browse/ORC-217) | Duplicate rat plugins in pom.xml |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [ORC-225](https://issues.apache.org/jira/browse/ORC-225) | CsvReader.java fails if long value exceeds 32 bits |  Trivial | tools | Pawel Dabrowski | Pawel Dabrowski |
| [ORC-227](https://issues.apache.org/jira/browse/ORC-227) | [C++] Fix docker failure due to ExternalProject\_Add |  Major | . | Deepak Majeti | Deepak Majeti |
| [ORC-229](https://issues.apache.org/jira/browse/ORC-229) | Add a new OrcFile.Version for marking the development pre-2.0 format. |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-195](https://issues.apache.org/jira/browse/ORC-195) | FileFormatException should include file name in the message |  Major | . | Eugene Koifman | Eugene Koifman |
| [ORC-233](https://issues.apache.org/jira/browse/ORC-233) | Allow \`orc.include.columns\` to be empty |  Major | Java | Dongjoon Hyun | Ajay Yadava |
| [ORC-162](https://issues.apache.org/jira/browse/ORC-162) | Handle 0 byte files as empty ORC files |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-234](https://issues.apache.org/jira/browse/ORC-234) | Create a shims module |  Major | Java | Owen O'Malley | Owen O'Malley |
| [ORC-239](https://issues.apache.org/jira/browse/ORC-239) | Add Statistics.hh to tarball. |  Major | . | Owen O'Malley |  |
| [ORC-240](https://issues.apache.org/jira/browse/ORC-240) | fix warnings from Maven |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-246](https://issues.apache.org/jira/browse/ORC-246) | fix dockerfile for ubuntu 16 to install tzdata |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-249](https://issues.apache.org/jira/browse/ORC-249) | Add WriterId for Go ORC writer |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-254](https://issues.apache.org/jira/browse/ORC-254) | Add badge for latest released version to README.md |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [ORC-257](https://issues.apache.org/jira/browse/ORC-257) | Enable building under java 9 |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-259](https://issues.apache.org/jira/browse/ORC-259) | Remove RAT from default java build |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-253](https://issues.apache.org/jira/browse/ORC-253) | CSVReader is missing license header |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [ORC-261](https://issues.apache.org/jira/browse/ORC-261) | All necessary c++ headers not included in install |  Major | C++ | Jim Crist | Jim Crist |
| [ORC-187](https://issues.apache.org/jira/browse/ORC-187) | Simplify BitFieldReader to only support single bits |  Major | Java, Reader | Gopal V | Rajesh Balamohan |
| [ORC-258](https://issues.apache.org/jira/browse/ORC-258) | [C++] Incorrect Decimal constructor |  Major | C++ | Gang Wu | Gang Wu |
| [ORC-266](https://issues.apache.org/jira/browse/ORC-266) | [C++] A few issues with cmake scripts and non-vendored third party libraries |  Major | C++ | Jim Crist | Jim Crist |
| [ORC-265](https://issues.apache.org/jira/browse/ORC-265) | [C++] Add documentation for C++ build support |  Major | . | Deepak Majeti | Deepak Majeti |
| [ORC-268](https://issues.apache.org/jira/browse/ORC-268) | Enable the cmake build to use apt-get installed components |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-269](https://issues.apache.org/jira/browse/ORC-269) | cmake fails when PROTOBUF\_HOME set and libhdfs is built |  Major | . | Owen O'Malley | Deepak Majeti |
| [ORC-270](https://issues.apache.org/jira/browse/ORC-270) | simple build failed |  Trivial | C++ | rip.nsk | rip.nsk |
| [ORC-277](https://issues.apache.org/jira/browse/ORC-277) | centos6 build (pre 4.7 gcc) is broken |  Major | C++ | rip.nsk | rip.nsk |
| [ORC-281](https://issues.apache.org/jira/browse/ORC-281) | Fix compiler warnings from clang 5.0 |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-264](https://issues.apache.org/jira/browse/ORC-264) | column name matching while schema evolution should be case unaware. |  Minor | evolution | piyush mukati | piyush mukati |
| [ORC-288](https://issues.apache.org/jira/browse/ORC-288) | Move location of NOTICE and LICENSE in binary install/tarball |  Major | . | Owen O'Malley | Jim Crist |
| [ORC-286](https://issues.apache.org/jira/browse/ORC-286) | setting default value for isSchemaEvolutionCaseAware |  Major | . | piyush mukati | piyush mukati |
| [ORC-289](https://issues.apache.org/jira/browse/ORC-289) | Adaptor.hh is not installed |  Blocker | C++ | rip.nsk | rip.nsk |
| [ORC-285](https://issues.apache.org/jira/browse/ORC-285) | Empty vector batches of floats or doubles get  java.io.EOFException |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-296](https://issues.apache.org/jira/browse/ORC-296) | work around HADOOP-15171; also fix stream contract |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [ORC-301](https://issues.apache.org/jira/browse/ORC-301) | \`extractFileTail\` should open a file in \`try\` statement |  Major | Java | Dongjoon Hyun | Dongjoon Hyun |
| [ORC-293](https://issues.apache.org/jira/browse/ORC-293) | RleEncoderV1::writeVulong works incorrectly if (sizeof(long) \< sizeof(int64\_t)) |  Blocker | C++ | rip.nsk | rip.nsk |
| [ORC-310](https://issues.apache.org/jira/browse/ORC-310) | better error handling and lifecycle management for codecs |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [ORC-321](https://issues.apache.org/jira/browse/ORC-321) | Add a pretty print option to the JSON schema finder. |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-324](https://issues.apache.org/jira/browse/ORC-324) | Add support for ARM and PPC arch |  Major | build | Vi On | Vi On |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-304](https://issues.apache.org/jira/browse/ORC-304) | Fix TestRecordReaderImpl to not fail with new storage-api |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-306](https://issues.apache.org/jira/browse/ORC-306) | Fix incorrect workaround for bug in java.sql.Timestamp |  Major | . | Owen O'Malley | Owen O'Malley |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-183](https://issues.apache.org/jira/browse/ORC-183) | [C++] Add a method in Type to build type from string |  Major | C++ | Gang Wu | Gang Wu |
| [ORC-176](https://issues.apache.org/jira/browse/ORC-176) | Refactor common classes for writer and reader |  Major | C++ | Gang Wu | Gang Wu |
| [ORC-177](https://issues.apache.org/jira/browse/ORC-177) | OutputStream interface and implementation for C++ writer |  Major | C++ | Gang Wu | Xiening Dai |
| [ORC-184](https://issues.apache.org/jira/browse/ORC-184) | [C++] Refactor ColumnStatistics classes for writer |  Major | C++ | Gang Wu | Gang Wu |
| [ORC-191](https://issues.apache.org/jira/browse/ORC-191) | RLE v1 encoder |  Major | C++ | Xiening Dai | Xiening Dai |
| [ORC-192](https://issues.apache.org/jira/browse/ORC-192) | Zlib compression stream |  Major | C++ | Xiening Dai | Xiening Dai |
| [ORC-226](https://issues.apache.org/jira/browse/ORC-226) | Support getWriterId in c++ reader interface |  Major | C++ | Xiening Dai | Xiening Dai |
| [ORC-245](https://issues.apache.org/jira/browse/ORC-245) | Create framework for data masking. |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-252](https://issues.apache.org/jira/browse/ORC-252) | Add support for Key Management Servers (kms) to HadoopShims |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-178](https://issues.apache.org/jira/browse/ORC-178) | Implement Basic C++ Writer and Writer Option |  Major | C++ | Gang Wu | Xiening Dai |
| [ORC-224](https://issues.apache.org/jira/browse/ORC-224) | Implement column writers of primitive types |  Major | C++ | Gang Wu | Gang Wu |
| [ORC-263](https://issues.apache.org/jira/browse/ORC-263) | Implement column writers of compound types |  Major | C++ | Gang Wu | Gang Wu |
| [ORC-256](https://issues.apache.org/jira/browse/ORC-256) | Add unmasked ranges option for redact mask |  Major | . | Owen O'Malley | Sandeep More |
| [ORC-276](https://issues.apache.org/jira/browse/ORC-276) | [C++] Create a simple tool to import CSV files |  Major | C++, tools | Gang Wu | Gang Wu |
| [ORC-250](https://issues.apache.org/jira/browse/ORC-250) | Create sha256 mask |  Major | . | Owen O'Malley | Sandeep More |
| [ORC-278](https://issues.apache.org/jira/browse/ORC-278) | Create in memory KeyProvider class |  Major | . | Owen O'Malley | Sandeep More |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-267](https://issues.apache.org/jira/browse/ORC-267) | Restore NOTICES and LICENSE to binary tarball |  Major | . | Owen O'Malley | Deepak Majeti |
| [ORC-298](https://issues.apache.org/jira/browse/ORC-298) | Move the benchmark code base to non-Apache repository |  Blocker | . | Owen O'Malley | Owen O'Malley |


