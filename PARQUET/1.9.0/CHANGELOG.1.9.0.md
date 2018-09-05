
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

## Release 1.9.0 - 2016-10-23



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-382](https://issues.apache.org/jira/browse/PARQUET-382) | Add a way to append encoded blocks in ParquetFileWriter |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-225](https://issues.apache.org/jira/browse/PARQUET-225) | INT64 support for Delta Encoding |  Major | . | Vassil Lunchev | Vassil Lunchev |
| [PARQUET-548](https://issues.apache.org/jira/browse/PARQUET-548) | Add Java metadata for PageEncodingStats |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-669](https://issues.apache.org/jira/browse/PARQUET-669) | Allow reading file footers from input streams when writing metadata files |  Major | . | Robert Kruszewski | Robert Kruszewski |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-361](https://issues.apache.org/jira/browse/PARQUET-361) | Add prerelease logic to semantic versions |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-77](https://issues.apache.org/jira/browse/PARQUET-77) | Improvements in ByteBuffer read path |  Major | parquet-mr | Parth Chandra | Jason Altekruse |
| [PARQUET-343](https://issues.apache.org/jira/browse/PARQUET-343) | Caching nulls on group node to improve write performance on wide schema sparse data |  Major | . | Tianshuo Deng | Tianshuo Deng |
| [PARQUET-341](https://issues.apache.org/jira/browse/PARQUET-341) | Improve write performance with wide schema sparse data |  Major | . | Tianshuo Deng | Tianshuo Deng |
| [PARQUET-99](https://issues.apache.org/jira/browse/PARQUET-99) | Large rows cause unnecessary OOM exceptions |  Major | parquet-mr | Tongjie Chen | Daniel Weeks |
| [PARQUET-318](https://issues.apache.org/jira/browse/PARQUET-318) | Remove unnecessary objectmapper from ParquetMetadata |  Trivial | . | Nezih Yigitbasi | Nezih Yigitbasi |
| [PARQUET-421](https://issues.apache.org/jira/browse/PARQUET-421) | Fix mismatch of javadoc names and method parameters in module encoding, column, and hadoop |  Minor | parquet-mr | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [PARQUET-432](https://issues.apache.org/jira/browse/PARQUET-432) | Complete a todo for method ColumnDescriptor.compareTo() |  Minor | parquet-mr | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [PARQUET-480](https://issues.apache.org/jira/browse/PARQUET-480) | Update for Cascading 3.0 |  Minor | parquet-mr | Cyrille Chépélov | Cyrille Chépélov |
| [PARQUET-397](https://issues.apache.org/jira/browse/PARQUET-397) | Pig Predicate Pushdown using Filter2 API |  Major | parquet-pig | Daniel Weeks | Daniel Weeks |
| [PARQUET-384](https://issues.apache.org/jira/browse/PARQUET-384) | Add Dictionary Based Filtering to Filter2 API |  Major | parquet-mr | Daniel Weeks | Daniel Weeks |
| [PARQUET-484](https://issues.apache.org/jira/browse/PARQUET-484) | Warn when Decimal is stored as INT64 while could be stored as INT32 |  Major | parquet-mr | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [PARQUET-358](https://issues.apache.org/jira/browse/PARQUET-358) | Add support for temporal logical types to AVRO/Parquet conversion |  Major | parquet-avro | Konstantin Shaposhnikov | Ryan Blue |
| [PARQUET-585](https://issues.apache.org/jira/browse/PARQUET-585) | Slowly ramp up sizes of int[]s in IntList to keep sizes small when data sets are small |  Minor | . | Piyush Narang | Piyush Narang |
| [PARQUET-327](https://issues.apache.org/jira/browse/PARQUET-327) | Show statistics in the dump output |  Major | parquet-mr | Tom White | Tom White |
| [PARQUET-654](https://issues.apache.org/jira/browse/PARQUET-654) | Make record-level filtering optional |  Major | parquet-mr | Cheng Lian | Ryan Blue |
| [PARQUET-543](https://issues.apache.org/jira/browse/PARQUET-543) | Remove BoundedInt encodings |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-668](https://issues.apache.org/jira/browse/PARQUET-668) | Provide option to disable auto crop feature in DumpCommand output |  Trivial | parquet-mr | Daniel Harper |  |
| [PARQUET-146](https://issues.apache.org/jira/browse/PARQUET-146) | make Parquet compile with java 7 instead of java 6 |  Major | . | Julien Le Dem |  |
| [PARQUET-460](https://issues.apache.org/jira/browse/PARQUET-460) | Parquet files concat tool |  Major | parquet-mr | flykobe cheng | flykobe cheng |
| [PARQUET-727](https://issues.apache.org/jira/browse/PARQUET-727) | Ensure correct version of thrift is used |  Major | . | Niels Basjes | Niels Basjes |
| [PARQUET-740](https://issues.apache.org/jira/browse/PARQUET-740) | Introduce editorconfig |  Major | . | Niels Basjes | Niels Basjes |
| [PARQUET-822](https://issues.apache.org/jira/browse/PARQUET-822) | Upgrade java dependencies |  Major | . | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-665](https://issues.apache.org/jira/browse/PARQUET-665) | Parquet-mr: Protobuf 3 support |  Major | parquet-mr | Wael Nasreddine | Wael Nasreddine |
| [PARQUET-1012](https://issues.apache.org/jira/browse/PARQUET-1012) | parquet-cpp and parquet-mr version parse inconsistent |  Major | parquet-cpp | Xianjin YE | Deepak Majeti |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-340](https://issues.apache.org/jira/browse/PARQUET-340) | totalMemoryPool is truncated to 32 bits |  Major | . | Chris Bannister | Chris Bannister |
| [PARQUET-346](https://issues.apache.org/jira/browse/PARQUET-346) | ThriftSchemaConverter throws for unknown struct or union type |  Major | parquet-mr | Alex Levenson | Alex Levenson |
| [PARQUET-363](https://issues.apache.org/jira/browse/PARQUET-363) | Cannot construct empty MessageType for ReadContext.requestedSchema |  Major | parquet-mr | Cheng Lian | Ryan Blue |
| [PARQUET-335](https://issues.apache.org/jira/browse/PARQUET-335) | Avro object model should not require MAP\_KEY\_VALUE |  Major | parquet-avro | Ryan Blue | Ryan Blue |
| [PARQUET-360](https://issues.apache.org/jira/browse/PARQUET-360) | parquet-cat json dump is broken for maps |  Major | . | Nezih Yigitbasi | Nezih Yigitbasi |
| [PARQUET-373](https://issues.apache.org/jira/browse/PARQUET-373) | MemoryManager tests are flaky |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-241](https://issues.apache.org/jira/browse/PARQUET-241) | ParquetInputFormat.getFooters() should return in the same order as what listStatus() returns |  Major | . | Mingyu Kim | Mingyu Kim |
| [PARQUET-380](https://issues.apache.org/jira/browse/PARQUET-380) | Cascading and scrooge builds fail when using thrift 0.9.0 |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-396](https://issues.apache.org/jira/browse/PARQUET-396) | The builder for AvroParquetReader loses the record type |  Minor | parquet-avro | Chris Bannister | Chris Bannister |
| [PARQUET-387](https://issues.apache.org/jira/browse/PARQUET-387) | TwoLevelListWriter does not handle null values in array |  Major | . | Taras Bobrovytsky | Ryan Blue |
| [PARQUET-349](https://issues.apache.org/jira/browse/PARQUET-349) | VersionParser does not handle versions like "parquet-mr 1.6.0rc4" |  Minor | parquet-mr | Alex Levenson | Reuben Kuhnert |
| [PARQUET-352](https://issues.apache.org/jira/browse/PARQUET-352) | Add tags to "created by" metadata in the file footer |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-305](https://issues.apache.org/jira/browse/PARQUET-305) | Logger instantiated for package org.apache.parquet may be GC-ed |  Minor | parquet-mr | Cheng Lian | Ryan Blue |
| [PARQUET-395](https://issues.apache.org/jira/browse/PARQUET-395) | System.out is used as logger in org.apache.parquet.Log |  Major | . | Henrik Baastrup | Ryan Blue |
| [PARQUET-353](https://issues.apache.org/jira/browse/PARQUET-353) | Compressors not getting recycled while writing parquet files, causing memory leak |  Major | parquet-mr | Nitin Goyal | Nitin Goyal |
| [PARQUET-413](https://issues.apache.org/jira/browse/PARQUET-413) | Test failures for Java 8 |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-212](https://issues.apache.org/jira/browse/PARQUET-212) | Implement nested type read rules in parquet-thrift |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-422](https://issues.apache.org/jira/browse/PARQUET-422) | Fix a potential bug in MessageTypeParser where we ignore and overwrite the initial value of a method parameter |  Minor | parquet-mr | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [PARQUET-495](https://issues.apache.org/jira/browse/PARQUET-495) | Fix mismatches in Types class comments |  Trivial | parquet-mr | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [PARQUET-410](https://issues.apache.org/jira/browse/PARQUET-410) | Fix subprocess hang in merge\_parquet\_pr.py |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-415](https://issues.apache.org/jira/browse/PARQUET-415) | ByteBufferBackedBinary serialization is broken |  Blocker | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-509](https://issues.apache.org/jira/browse/PARQUET-509) | Incorrect number of args passed to string.format calls |  Minor | parquet-mr | Nezih Yigitbasi | Nezih Yigitbasi |
| [PARQUET-385](https://issues.apache.org/jira/browse/PARQUET-385) | PrimitiveType.union accepts fixed\_len\_byte\_array fields with different lengths when strict mode is on |  Major | parquet-mr | Cheng Lian | Cheng Lian |
| [PARQUET-379](https://issues.apache.org/jira/browse/PARQUET-379) | PrimitiveType.union erases original type |  Major | parquet-mr | Cheng Lian | Cheng Lian |
| [PARQUET-430](https://issues.apache.org/jira/browse/PARQUET-430) | Change to use Locale parameterized version of String.toUpperCase()/toLowerCase |  Minor | parquet-mr | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [PARQUET-431](https://issues.apache.org/jira/browse/PARQUET-431) | Make ParquetOutputFormat.memoryManager volatile |  Major | parquet-mr | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [PARQUET-529](https://issues.apache.org/jira/browse/PARQUET-529) | Avoid evoking job.toString() in ParquetLoader |  Major | parquet-pig | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [PARQUET-528](https://issues.apache.org/jira/browse/PARQUET-528) | Fix flush() for RecordConsumer and implementations |  Major | parquet-mr | Liwei Lin(Inactive) | Liwei Lin(Inactive) |
| [PARQUET-571](https://issues.apache.org/jira/browse/PARQUET-571) | Fix potential leak in ParquetFileReader.close() |  Major | parquet-mr | Nezih Yigitbasi | Nezih Yigitbasi |
| [PARQUET-581](https://issues.apache.org/jira/browse/PARQUET-581) | Min/max row count for page size check are conflated in some places |  Minor | parquet-mr | Michael Allman | Michael Allman |
| [PARQUET-580](https://issues.apache.org/jira/browse/PARQUET-580) | Potentially unnecessary creation of large int[] in IntList for columns that aren't used |  Minor | . | Piyush Narang | Piyush Narang |
| [PARQUET-584](https://issues.apache.org/jira/browse/PARQUET-584) | show proper command usage when there's no arguments |  Minor | parquet-mr | Kaufman Ng | Kaufman Ng |
| [PARQUET-569](https://issues.apache.org/jira/browse/PARQUET-569) | ParquetMetadataConverter offset filter is broken |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-560](https://issues.apache.org/jira/browse/PARQUET-560) | Incorrect synchronization in SnappyCompressor |  Major | . | Nezih Yigitbasi | Nezih Yigitbasi |
| [PARQUET-372](https://issues.apache.org/jira/browse/PARQUET-372) | Parquet stats can have awkwardly large values |  Major | parquet-format, parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-367](https://issues.apache.org/jira/browse/PARQUET-367) | "parquet-cat -j" doesn't show all records |  Major | parquet-mr | Cheng Lian | Reuben Kuhnert |
| [PARQUET-544](https://issues.apache.org/jira/browse/PARQUET-544) | ParquetWriter.close() throws NullPointerException on second call, improper implementation of Closeable contract |  Minor | parquet-mr | Michal Turek | Michal Turek |
| [PARQUET-645](https://issues.apache.org/jira/browse/PARQUET-645) | DictionaryFilter incorrectly handles null |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-642](https://issues.apache.org/jira/browse/PARQUET-642) | Improve performance of ByteBuffer based read / write paths |  Major | . | Piyush Narang | Piyush Narang |
| [PARQUET-612](https://issues.apache.org/jira/browse/PARQUET-612) | Add compression to FileEncodingIT tests |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-663](https://issues.apache.org/jira/browse/PARQUET-663) | Link are Broken in README.md |  Trivial | . | nihed mbarek | nihed mbarek |
| [PARQUET-389](https://issues.apache.org/jira/browse/PARQUET-389) | Filter predicates should work with missing columns |  Major | parquet-mr | Cheng Lian | Ryan Blue |
| [PARQUET-540](https://issues.apache.org/jira/browse/PARQUET-540) | Cascading3 module doesn't build when using thrift 0.9.0 |  Major | parquet-cascading | Ryan Blue | Ryan Blue |
| [PARQUET-651](https://issues.apache.org/jira/browse/PARQUET-651) | Parquet-avro fails to decode array of record with a single field name "element" correctly |  Major | parquet-avro | Cheng Lian | Ryan Blue |
| [PARQUET-511](https://issues.apache.org/jira/browse/PARQUET-511) | Integer overflow on counting values in column |  Critical | parquet-mr | Michal Gorecki | Michal Gorecki |
| [PARQUET-400](https://issues.apache.org/jira/browse/PARQUET-400) | Error reading some files after PARQUET-77 bytebuffer read path |  Major | . | Jason Altekruse | Jason Altekruse |
| [PARQUET-623](https://issues.apache.org/jira/browse/PARQUET-623) | DeltaByteArrayReader has incorrect skip behaviour |  Major | . | Johannes Zillmann | Ryan Blue |
| [PARQUET-660](https://issues.apache.org/jira/browse/PARQUET-660) | Writing Protobuf messages with extensions results in an error or data corruption. |  Major | parquet-mr | Jakub Kukul | Jakub Kukul |
| [PARQUET-674](https://issues.apache.org/jira/browse/PARQUET-674) | Add an abstraction to get the length of a stream |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-726](https://issues.apache.org/jira/browse/PARQUET-726) | TestMemoryManager consistently fails |  Major | . | Niels Basjes | Niels Basjes |
| [PARQUET-685](https://issues.apache.org/jira/browse/PARQUET-685) | Deprecated ParquetInputSplit constructor passes parameters in the wrong order. |  Major | . | Julien Le Dem | Gabor Szadovszky |
| [PARQUET-743](https://issues.apache.org/jira/browse/PARQUET-743) | DictionaryFilters can re-use StreamBytesInput when compressed |  Major | parquet-mr | Patrick Woody | Ryan Blue |
| [PARQUET-751](https://issues.apache.org/jira/browse/PARQUET-751) | DictionaryFilter patch broke column projection |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-825](https://issues.apache.org/jira/browse/PARQUET-825) | Static analyzer findings (NPEs, resource leaks) |  Major | . | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-806](https://issues.apache.org/jira/browse/PARQUET-806) | Parquet-tools silently suppresses error messages |  Major | parquet-mr | Zoltan Ivanfi | Zoltan Ivanfi |
| [PARQUET-772](https://issues.apache.org/jira/browse/PARQUET-772) | Test fails if current locale has decimal mark other than . |  Trivial | parquet-mr | Zoltan Ivanfi | Zoltan Ivanfi |
| [PARQUET-686](https://issues.apache.org/jira/browse/PARQUET-686) | Allow for Unsigned Statistics in Binary Type |  Major | parquet-format | Andrew Duffy | Ryan Blue |
| [PARQUET-826](https://issues.apache.org/jira/browse/PARQUET-826) | parquet.thrift comments for Statistics are not consistent with parquet-mr and Hive implementations |  Major | parquet-format | Lars Volker | Lars Volker |
| [PARQUET-1133](https://issues.apache.org/jira/browse/PARQUET-1133) | INT96 types and Maps without OriginalType cause exceptions in PigSchemaConverter |  Major | parquet-pig | Addisu Feyissa | Addisu Feyissa |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-355](https://issues.apache.org/jira/browse/PARQUET-355) | Create Integration tests to validate statistics |  Minor | parquet-mr | Reuben Kuhnert | Reuben Kuhnert |
| [PARQUET-378](https://issues.apache.org/jira/browse/PARQUET-378) | Add thoroughly parquet test encodings |  Major | parquet-mr | Sergio Peña | Sergio Peña |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-404](https://issues.apache.org/jira/browse/PARQUET-404) | Replace git@github.com.apache for HTTPS URL on dev/README.md to avoid permission issues |  Trivial | parquet-mr | Sergio Peña | Sergio Peña |
| [PARQUET-696](https://issues.apache.org/jira/browse/PARQUET-696) | Move travis download from google code (defunct) to github |  Major | parquet-mr | Julien Le Dem | Julien Le Dem |


