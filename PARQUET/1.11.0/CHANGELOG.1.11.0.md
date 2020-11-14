
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

## Release 1.11.0 - 2019-12-06



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-1485](https://issues.apache.org/jira/browse/PARQUET-1485) | Snappy Decompressor/Compressor may cause direct memory leak |  Major | parquet-mr | liupengcheng | liupengcheng |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-1253](https://issues.apache.org/jira/browse/PARQUET-1253) | Support for new logical type representation |  Major | parquet-mr | Nándor Kollár | Nándor Kollár |
| [PARQUET-1388](https://issues.apache.org/jira/browse/PARQUET-1388) | Nanosecond precision time and timestamp - parquet-mr |  Major | parquet-mr | Nándor Kollár | Nándor Kollár |
| [PARQUET-1201](https://issues.apache.org/jira/browse/PARQUET-1201) | Column indexes |  Major | . | Gabor Szadovszky | Gabor Szadovszky |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-1135](https://issues.apache.org/jira/browse/PARQUET-1135) | upgrade thrift and protobuf dependencies |  Major | parquet-mr | Julien Le Dem | Julien Le Dem |
| [PARQUET-1321](https://issues.apache.org/jira/browse/PARQUET-1321) | LogicalTypeAnnotation.LogicalTypeAnnotationVisitor#visit methods should have a return value |  Major | parquet-mr | Nándor Kollár | Nándor Kollár |
| [PARQUET-1335](https://issues.apache.org/jira/browse/PARQUET-1335) | Logical type names in parquet-mr are not consistent with parquet-format |  Minor | parquet-mr | Nándor Kollár | Nándor Kollár |
| [PARQUET-1336](https://issues.apache.org/jira/browse/PARQUET-1336) | PrimitiveComparator should implements Serializable |  Major | parquet-mr | Yuming Wang | Yuming Wang |
| [PARQUET-1390](https://issues.apache.org/jira/browse/PARQUET-1390) | [Java] Upgrade to Arrow 0.10.0 |  Minor | parquet-mr | Andy Grove | Andy Grove |
| [PARQUET-1418](https://issues.apache.org/jira/browse/PARQUET-1418) | Run integration tests in Travis |  Major | parquet-mr | Zoltan Ivanfi | Zoltan Ivanfi |
| [PARQUET-1410](https://issues.apache.org/jira/browse/PARQUET-1410) | Refactor modules to use the new logical type API |  Major | parquet-mr | Nándor Kollár | Nándor Kollár |
| [PARQUET-1399](https://issues.apache.org/jira/browse/PARQUET-1399) | Move parquet-mr related code from parquet-format |  Major | parquet-mr | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-1383](https://issues.apache.org/jira/browse/PARQUET-1383) | Parquet tools should indicate UTC parameter for time/timestamp types |  Minor | parquet-mr | Nándor Kollár | Nándor Kollár |
| [PARQUET-1414](https://issues.apache.org/jira/browse/PARQUET-1414) | Limit page size based on maximum row count |  Major | . | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-1435](https://issues.apache.org/jira/browse/PARQUET-1435) | Benchmark filtering column-indexes |  Major | parquet-mr | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-1365](https://issues.apache.org/jira/browse/PARQUET-1365) | Don't write page level statistics |  Major | parquet-mr | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-1462](https://issues.apache.org/jira/browse/PARQUET-1462) | Allow specifying new development version in prepare-release.sh |  Major | parquet-format, parquet-mr | Zoltan Ivanfi | Zoltan Ivanfi |
| [PARQUET-1474](https://issues.apache.org/jira/browse/PARQUET-1474) | Less verbose and lower level logging for missing column/offset indexes |  Major | . | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-1489](https://issues.apache.org/jira/browse/PARQUET-1489) | Insufficient documentation for UserDefinedPredicate.keep(T) |  Major | parquet-mr | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-1487](https://issues.apache.org/jira/browse/PARQUET-1487) | Do not write original type for timezone-agnostic timestamps |  Major | parquet-mr | Zoltan Ivanfi | Nándor Kollár |
| [PARQUET-1280](https://issues.apache.org/jira/browse/PARQUET-1280) | [parquet-protobuf] Use maven protoc plugin |  Minor | . | Qinghui Xu | Nándor Kollár |
| [PARQUET-1466](https://issues.apache.org/jira/browse/PARQUET-1466) | Upgrade to the latest guava 27.0-jre |  Minor | . | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-1492](https://issues.apache.org/jira/browse/PARQUET-1492) | Remove protobuf install in travis build |  Minor | . | Qinghui Xu | Qinghui Xu |
| [PARQUET-1506](https://issues.apache.org/jira/browse/PARQUET-1506) | Migrate from maven-thrift-plugin to thrift-maven-plugin |  Major | parquet-mr | Fokko Driesprong | Fokko Driesprong |
| [PARQUET-1500](https://issues.apache.org/jira/browse/PARQUET-1500) | Remove the Closables |  Major | parquet-mr | Fokko Driesprong | Fokko Driesprong |
| [PARQUET-1503](https://issues.apache.org/jira/browse/PARQUET-1503) | Remove Ints Utility Class |  Minor | . | David Mollitor | David Mollitor |
| [PARQUET-1513](https://issues.apache.org/jira/browse/PARQUET-1513) | HiddenFileFilter Streamline |  Trivial | parquet-mr | David Mollitor | David Mollitor |
| [PARQUET-1504](https://issues.apache.org/jira/browse/PARQUET-1504) | Add an option to convert Parquet Int96 to Arrow Timestamp |  Minor | parquet-mr | Yongyan Wang | Yongyan Wang |
| [PARQUET-1509](https://issues.apache.org/jira/browse/PARQUET-1509) | Update Docs for Hive Deprecation |  Minor | . | David Mollitor | David Mollitor |
| [PARQUET-1507](https://issues.apache.org/jira/browse/PARQUET-1507) | Bump Apache Thrift to 0.12.0 |  Blocker | parquet-thrift | Fokko Driesprong | Fokko Driesprong |
| [PARQUET-1518](https://issues.apache.org/jira/browse/PARQUET-1518) | Bump Jackson2 version of parquet-cli |  Major | parquet-cli | Fokko Driesprong | Fokko Driesprong |
| [PARQUET-1505](https://issues.apache.org/jira/browse/PARQUET-1505) | Use Java 7 NIO StandardCharsets |  Major | . | David Mollitor | David Mollitor |
| [PARQUET-1490](https://issues.apache.org/jira/browse/PARQUET-1490) | Add branch-specific Travis steps |  Major | . | Zoltan Ivanfi | Zoltan Ivanfi |
| [PARQUET-1476](https://issues.apache.org/jira/browse/PARQUET-1476) | Don't emit a warning message for files without new logical type |  Minor | parquet-mr | Nándor Kollár | Nándor Kollár |
| [PARQUET-1577](https://issues.apache.org/jira/browse/PARQUET-1577) | Remove duplicate license |  Major | parquet-mr | Fokko Driesprong | Fokko Driesprong |
| [PARQUET-1576](https://issues.apache.org/jira/browse/PARQUET-1576) | Upgrade to Avro 1.9.0 |  Major | parquet-avro, parquet-mr | Fokko Driesprong | Fokko Driesprong |
| [PARQUET-1558](https://issues.apache.org/jira/browse/PARQUET-1558) | Use try-with-resource in Apache Avro tests |  Major | parquet-mr | Fokko Driesprong | Fokko Driesprong |
| [PARQUET-1557](https://issues.apache.org/jira/browse/PARQUET-1557) | Replace deprecated Apache Avro methods |  Major | parquet-mr | Fokko Driesprong | Fokko Driesprong |
| [PARQUET-1375](https://issues.apache.org/jira/browse/PARQUET-1375) | Upgrade to supported version of Jackson |  Major | parquet-mr | Matt Darwin | Fokko Driesprong |
| [PARQUET-1579](https://issues.apache.org/jira/browse/PARQUET-1579) | Add Github PR template |  Major | . | Fokko Driesprong | Fokko Driesprong |
| [PARQUET-1604](https://issues.apache.org/jira/browse/PARQUET-1604) | Bump fastutil from 7.0.13 to 8.2.3 |  Major | parquet-mr | Fokko Driesprong | Fokko Driesprong |
| [PARQUET-1606](https://issues.apache.org/jira/browse/PARQUET-1606) | Fix invalid tests scope |  Major | . | Fokko Driesprong | Fokko Driesprong |
| [PARQUET-1580](https://issues.apache.org/jira/browse/PARQUET-1580) | Page-level CRC checksum verification for DataPageV1 |  Major | parquet-mr | Boudewijn Braams | Boudewijn Braams |
| [PARQUET-1605](https://issues.apache.org/jira/browse/PARQUET-1605) | Bump maven-javadoc-plugin from 2.9 to 3.1.0 |  Major | . | Fokko Driesprong | Fokko Driesprong |
| [PARQUET-1530](https://issues.apache.org/jira/browse/PARQUET-1530) | Remove Dependency on commons-codec |  Major | . | David Mollitor | David Mollitor |
| [PARQUET-1445](https://issues.apache.org/jira/browse/PARQUET-1445) | Remove Files.java |  Minor | parquet-mr | David Mollitor | David Mollitor |
| [PARQUET-1607](https://issues.apache.org/jira/browse/PARQUET-1607) | Remove duplicate maven-enforcer-plugin |  Major | parquet-cascading | Fokko Driesprong | Fokko Driesprong |
| [PARQUET-1654](https://issues.apache.org/jira/browse/PARQUET-1654) | Remove unnecessary options when building thrift |  Minor | parquet-thrift | Kengo Seki | Kengo Seki |
| [PARQUET-1601](https://issues.apache.org/jira/browse/PARQUET-1601) | Add zstd support to parquet-cli to-avro |  Major | parquet-cli | Kengo Seki | Kengo Seki |
| [PARQUET-1661](https://issues.apache.org/jira/browse/PARQUET-1661) | Upgrade to Avro 1.9.1 |  Trivial | parquet-avro | Ismaël Mejía | Ismaël Mejía |
| [PARQUET-1542](https://issues.apache.org/jira/browse/PARQUET-1542) | Merge multiple I/O to one time I/O when read footer |  Major | parquet-mr | Wang, Gang | Wang, Gang |
| [PARQUET-1662](https://issues.apache.org/jira/browse/PARQUET-1662) | Upgrade Jackson to version 2.9.10 |  Critical | parquet-cli, parquet-thrift | Ismaël Mejía | Ismaël Mejía |
| [PARQUET-1665](https://issues.apache.org/jira/browse/PARQUET-1665) | Upgrade zstd-jni to 1.4.0-1 |  Trivial | parquet-cli | Kengo Seki | Kengo Seki |
| [PARQUET-1669](https://issues.apache.org/jira/browse/PARQUET-1669) | Disable compiling all libraries when building thrift |  Major | . | Kengo Seki | Kengo Seki |
| [PARQUET-1671](https://issues.apache.org/jira/browse/PARQUET-1671) | Upgrade Yetus to 0.11.0 |  Minor | . | Kengo Seki | Kengo Seki |
| [PARQUET-1578](https://issues.apache.org/jira/browse/PARQUET-1578) | Introduce Lambdas |  Major | . | Fokko Driesprong | Fokko Driesprong |
| [PARQUET-1650](https://issues.apache.org/jira/browse/PARQUET-1650) | Implement unit test to validate column/offset indexes |  Major | . | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-1682](https://issues.apache.org/jira/browse/PARQUET-1682) | Maintain forward compatibility for TIME/TIMESTAMP |  Major | parquet-mr | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-1444](https://issues.apache.org/jira/browse/PARQUET-1444) | Prefer ArrayList over LinkedList |  Minor | parquet-thrift | David Mollitor | David Mollitor |
| [PARQUET-1616](https://issues.apache.org/jira/browse/PARQUET-1616) | Enable Maven batch mode |  Major | . | Fokko Driesprong | Fokko Driesprong |
| [PARQUET-1683](https://issues.apache.org/jira/browse/PARQUET-1683) | Remove unnecessary string converting in readFooter method |  Major | parquet-mr | Xinli Shang | Xinli Shang |
| [PARQUET-1685](https://issues.apache.org/jira/browse/PARQUET-1685) | Truncate the stored min and max for String statistics to reduce the footer size |  Major | parquet-mr | Xinli Shang | Xinli Shang |
| [PARQUET-1499](https://issues.apache.org/jira/browse/PARQUET-1499) | [parquet-mr] Add Java 11 to Travis |  Major | parquet-mr | Fokko Driesprong | Fokko Driesprong |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-1128](https://issues.apache.org/jira/browse/PARQUET-1128) | [Java] Upgrade the Apache Arrow version to 0.8.0 for SchemaConverter |  Minor | parquet-mr | Masayuki Takahashi | Masayuki Takahashi |
| [PARQUET-1285](https://issues.apache.org/jira/browse/PARQUET-1285) | [Java] SchemaConverter should not convert from TimeUnit.SECOND AND TimeUnit.NANOSECOND of Arrow |  Minor | parquet-mr | Masayuki Takahashi | Masayuki Takahashi |
| [PARQUET-1293](https://issues.apache.org/jira/browse/PARQUET-1293) | Build failure when using Java 8 lambda expressions |  Minor | . | Nándor Kollár | Nándor Kollár |
| [PARQUET-1297](https://issues.apache.org/jira/browse/PARQUET-1297) | [Java] SchemaConverter should not convert from Timestamp(TimeUnit.SECOND) and Timestamp(TimeUnit.NANOSECOND) of Arrow |  Minor | parquet-mr | Masayuki Takahashi | Masayuki Takahashi |
| [PARQUET-1296](https://issues.apache.org/jira/browse/PARQUET-1296) | Travis kills build after 10 minutes, because "no output was received" |  Major | . | Nándor Kollár | Nándor Kollár |
| [PARQUET-1304](https://issues.apache.org/jira/browse/PARQUET-1304) | Release 1.10 contains breaking changes for Hive |  Major | parquet-mr | Zoltan Ivanfi | Gabor Szadovszky |
| [PARQUET-1317](https://issues.apache.org/jira/browse/PARQUET-1317) | ParquetMetadataConverter throw NPE |  Major | parquet-mr | Yuming Wang | Yuming Wang |
| [PARQUET-1309](https://issues.apache.org/jira/browse/PARQUET-1309) | Parquet Java uses incorrect stats and dictionary filter properties |  Major | parquet-mr | Ryan Blue | Gabor Szadovszky |
| [PARQUET-1311](https://issues.apache.org/jira/browse/PARQUET-1311) | Update README.md |  Minor | parquet-mr | Nándor Kollár | Nándor Kollár |
| [PARQUET-952](https://issues.apache.org/jira/browse/PARQUET-952) | Avro union with single type fails with 'is not a group' |  Major | parquet-mr | Jarek Jarcec Cecho | Nándor Kollár |
| [PARQUET-1344](https://issues.apache.org/jira/browse/PARQUET-1344) | Type builders don't honor new logical types |  Major | parquet-mr | Nándor Kollár | Nándor Kollár |
| [PARQUET-1341](https://issues.apache.org/jira/browse/PARQUET-1341) | Null count is suppressed when columns have no min or max and use unsigned sort order |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-1371](https://issues.apache.org/jira/browse/PARQUET-1371) | Time/Timestamp UTC normalization parameter doesn't work |  Major | . | Nándor Kollár | Nándor Kollár |
| [PARQUET-1417](https://issues.apache.org/jira/browse/PARQUET-1417) | BINARY\_AS\_SIGNED\_INTEGER\_COMPARATOR fails with IOBE for the same arrays with the different length |  Major | . | Vova Vysotskyi | Vova Vysotskyi |
| [PARQUET-1421](https://issues.apache.org/jira/browse/PARQUET-1421) | InternalParquetRecordWriter logs debug messages at the INFO level |  Major | parquet-mr | Zoltan Ivanfi | Zoltan Ivanfi |
| [PARQUET-1368](https://issues.apache.org/jira/browse/PARQUET-1368) | ParquetFileReader should close its input stream for the failure in constructor |  Major | parquet-mr | Hyukjin Kwon | Hyukjin Kwon |
| [PARQUET-1440](https://issues.apache.org/jira/browse/PARQUET-1440) | Parquet-tools: Decimal values stored in an int32 or int64 in the parquet file aren't displayed with their proper scale |  Major | parquet-mr | Ryan Gardner | Ryan Gardner |
| [PARQUET-1305](https://issues.apache.org/jira/browse/PARQUET-1305) | Backward incompatible change introduced in 1.8 |  Major | . | Nándor Kollár | Nándor Kollár |
| [PARQUET-1456](https://issues.apache.org/jira/browse/PARQUET-1456) | Use page index, ParquetFileReader throw ArrayIndexOutOfBoundsException |  Blocker | parquet-mr | yiming.xu | Gabor Szadovszky |
| [PARQUET-1407](https://issues.apache.org/jira/browse/PARQUET-1407) | Data loss on duplicate values with AvroParquetWriter/Reader |  Critical | parquet-avro | Scott Carey | Nándor Kollár |
| [PARQUET-1460](https://issues.apache.org/jira/browse/PARQUET-1460) | Fix javadoc errors and include javadoc checking in Travis checks |  Major | parquet-mr | Zoltan Ivanfi | Gabor Szadovszky |
| [PARQUET-1472](https://issues.apache.org/jira/browse/PARQUET-1472) | Dictionary filter fails on FIXED\_LEN\_BYTE\_ARRAY |  Major | parquet-mr | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-1478](https://issues.apache.org/jira/browse/PARQUET-1478) | Can't read spec compliant, 3-level lists via parquet-proto |  Major | parquet-mr | Nándor Kollár | Nándor Kollár |
| [PARQUET-1461](https://issues.apache.org/jira/browse/PARQUET-1461) | Third party code does not compile after parquet-mr minor version update |  Major | parquet-mr | Zoltan Ivanfi | Gabor Szadovszky |
| [PARQUET-1475](https://issues.apache.org/jira/browse/PARQUET-1475) | DirectCodecFactory's ParquetCompressionCodecException drops a passed in cause in one constructor |  Major | . | Jacques Nadeau | Jacques Nadeau |
| [PARQUET-1498](https://issues.apache.org/jira/browse/PARQUET-1498) | [Java] Add instructions to install thrift via homebrew |  Major | parquet-mr | Uwe Korn | Uwe Korn |
| [PARQUET-1510](https://issues.apache.org/jira/browse/PARQUET-1510) | Dictionary filter skips null values when evaluating not-equals. |  Blocker | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-138](https://issues.apache.org/jira/browse/PARQUET-138) | Parquet should allow a merge between required and optional schemas |  Major | parquet-mr | Robert Justice | Nicolas Trinquier |
| [PARQUET-1470](https://issues.apache.org/jira/browse/PARQUET-1470) | Inputstream leakage in ParquetFileWriter.appendFile |  Major | parquet-mr | Arnaud Linz | Fokko Driesprong |
| [PARQUET-1514](https://issues.apache.org/jira/browse/PARQUET-1514) | ParquetFileWriter Records Compressed Bytes instead of Uncompressed Bytes |  Minor | . | David Mollitor | David Mollitor |
| [PARQUET-1480](https://issues.apache.org/jira/browse/PARQUET-1480) | INT96 to avro not yet implemented error should mention deprecation |  Trivial | parquet-mr | Tim Sell | Tim Sell |
| [PARQUET-1527](https://issues.apache.org/jira/browse/PARQUET-1527) | [parquet-tools] cat command throw java.lang.ClassCastException |  Major | parquet-mr | Masayuki Takahashi | Masayuki Takahashi |
| [PARQUET-1529](https://issues.apache.org/jira/browse/PARQUET-1529) | Shade fastutil in all modules where used |  Major | . | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-1533](https://issues.apache.org/jira/browse/PARQUET-1533) | TestSnappy() throws OOM exception with Parquet-1485 change |  Minor | parquet-mr | Xinli Shang | Gabor Szadovszky |
| [PARQUET-1531](https://issues.apache.org/jira/browse/PARQUET-1531) | Page row count limit causes empty pages to be written from MessageColumnIO |  Major | . | Matt Cheah | Gabor Szadovszky |
| [PARQUET-1544](https://issues.apache.org/jira/browse/PARQUET-1544) | Possible over-shading of modules |  Major | . | Matt Cheah | Gabor Szadovszky |
| [PARQUET-1497](https://issues.apache.org/jira/browse/PARQUET-1497) | [Java] javax annotations dependency missing for Java 11 |  Major | parquet-thrift | Uwe Korn | Uwe Korn |
| [PARQUET-1281](https://issues.apache.org/jira/browse/PARQUET-1281) | Jackson dependency |  Major | . | Qinghui Xu |  |
| [PARQUET-1550](https://issues.apache.org/jira/browse/PARQUET-1550) | CleanUtil does not work in Java 11 |  Major | . | Zoltan Ivanfi | Fokko Driesprong |
| [PARQUET-1615](https://issues.apache.org/jira/browse/PARQUET-1615) | getRecordWriter shouldn't hardcode CREAT mode when new ParquetFileWriter |  Major | parquet-mr | Lantao Jin | Lantao Jin |
| [PARQUET-1488](https://issues.apache.org/jira/browse/PARQUET-1488) | UserDefinedPredicate throw NPE |  Major | parquet-mr | Yuming Wang | Gabor Szadovszky |
| [PARQUET-1600](https://issues.apache.org/jira/browse/PARQUET-1600) | Fix shebang in parquet-benchmarks/run.sh |  Minor | . | Kengo Seki | Kengo Seki |
| [PARQUET-1303](https://issues.apache.org/jira/browse/PARQUET-1303) | Avro reflect @Stringable field write error if field not instanceof CharSequence |  Minor | parquet-avro | Zack Behringer | Zack Behringer |
| [PARQUET-1637](https://issues.apache.org/jira/browse/PARQUET-1637) | Builds are failing because default jdk changed to openjdk11 on Travis |  Major | parquet-mr | Nándor Kollár | Nándor Kollár |
| [PARQUET-1644](https://issues.apache.org/jira/browse/PARQUET-1644) | Clean up some benchmark code and docs. |  Minor | parquet-mr | Ryan Skraba | Ryan Skraba |
| [PARQUET-1596](https://issues.apache.org/jira/browse/PARQUET-1596) | PARQUET-1375 broke parquet-cli's to-avro command |  Major | parquet-cli | Kengo Seki | Fokko Driesprong |
| [PARQUET-1441](https://issues.apache.org/jira/browse/PARQUET-1441) | SchemaParseException: Can't redefine: list in AvroIndexedRecordConverter |  Major | parquet-avro | Michael Heuer | Nándor Kollár |
| [PARQUET-1555](https://issues.apache.org/jira/browse/PARQUET-1555) | Bump snappy-java to 1.1.7.3 |  Major | parquet-mr | Fokko Driesprong | Fokko Driesprong |
| [PARQUET-1534](https://issues.apache.org/jira/browse/PARQUET-1534) | [parquet-cli] Argument error: Illegal character in opaque part at index 2 on Windows |  Major | parquet-mr | Masayuki Takahashi | Masayuki Takahashi |
| [PARQUET-1496](https://issues.apache.org/jira/browse/PARQUET-1496) | [Java] Update Scala for JDK 11 compatibility |  Major | parquet-mr | Uwe Korn | Uwe Korn |
| [PARQUET-1691](https://issues.apache.org/jira/browse/PARQUET-1691) | Build fails due to missing hadoop-lzo |  Major | parquet-mr | Gabor Szadovszky | Gabor Szadovszky |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-1536](https://issues.apache.org/jira/browse/PARQUET-1536) | [parquet-cli] Add simple tests for each command |  Minor | parquet-mr | Masayuki Takahashi | Masayuki Takahashi |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-1552](https://issues.apache.org/jira/browse/PARQUET-1552) | upgrade protoc-jar-maven-plugin to 3.8.0 |  Minor | parquet-mr | Junjie Chen | Junjie Chen |
| [PARQUET-1673](https://issues.apache.org/jira/browse/PARQUET-1673) | Upgrade parquet-mr format version to 2.7.0 |  Major | parquet-mr | Nándor Kollár | Fokko Driesprong |
| [PARQUET-1717](https://issues.apache.org/jira/browse/PARQUET-1717) | parquet-thrift converts Thrift i16 to parquet INT32 instead of INT\_16 |  Minor | parquet-thrift | Emmanuel Brard | Emmanuel Brard |
| [PARQUET-968](https://issues.apache.org/jira/browse/PARQUET-968) | Add Hive/Presto support in ProtoParquet |  Major | . | Constantin Muraru | Constantin Muraru |
| [PARQUET-1294](https://issues.apache.org/jira/browse/PARQUET-1294) | Update release scripts for the new Apache policy |  Major | parquet-format, parquet-mr | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-1436](https://issues.apache.org/jira/browse/PARQUET-1436) | TimestampMicrosStringifier shows wrong microseconds for timestamps before 1970 |  Major | parquet-mr | Zoltan Ivanfi | Nándor Kollár |
| [PARQUET-1452](https://issues.apache.org/jira/browse/PARQUET-1452) | Deprecate old logical types API |  Major | parquet-mr | Zoltan Ivanfi | Nándor Kollár |
| [PARQUET-1585](https://issues.apache.org/jira/browse/PARQUET-1585) | Update old external links in the code base |  Major | . | Zoltan Ivanfi | Zoltan Ivanfi |
| [PARQUET-1649](https://issues.apache.org/jira/browse/PARQUET-1649) | Bump Jackson Databind to 2.9.9.3 |  Major | . | Fokko Driesprong | Fokko Driesprong |
| [PARQUET-1687](https://issues.apache.org/jira/browse/PARQUET-1687) | Update release process |  Major | parquet-format, parquet-mr, parquet-site | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-1551](https://issues.apache.org/jira/browse/PARQUET-1551) | Support Java 11 - top-level JIRA |  Major | . | Zoltan Ivanfi |  |
| [PARQUET-1434](https://issues.apache.org/jira/browse/PARQUET-1434) | Release parquet-mr 1.11.0 |  Major | parquet-mr | Nándor Kollár | Gabor Szadovszky |


