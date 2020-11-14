
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

## Release 1.12.0 - Unreleased (as of 2020-11-14)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-1850](https://issues.apache.org/jira/browse/PARQUET-1850) | toParquetMetadata method in ParquetMetadataConverter does not set dictionary page offset bit |  Major | parquet-mr | Srinivas S T | Srinivas S T |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-1622](https://issues.apache.org/jira/browse/PARQUET-1622) | Add BYTE\_STREAM\_SPLIT encoding |  Minor | parquet-cpp, parquet-format, parquet-mr, parquet-thrift | Martin Radev | Martin Radev |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-1696](https://issues.apache.org/jira/browse/PARQUET-1696) | Remove unused hadoop-1 profile |  Minor | parquet-mr | Ismaël Mejía | Ismaël Mejía |
| [PARQUET-1723](https://issues.apache.org/jira/browse/PARQUET-1723) | Read From Maps Without Using Contains |  Minor | . | David Mollitor | David Mollitor |
| [PARQUET-1724](https://issues.apache.org/jira/browse/PARQUET-1724) | Use ConcurrentHashMap for Cache in DictionaryPageReader |  Minor | . | David Mollitor | David Mollitor |
| [PARQUET-1726](https://issues.apache.org/jira/browse/PARQUET-1726) | Use Java 8 Multi Exception Handling |  Minor | . | David Mollitor | David Mollitor |
| [PARQUET-1727](https://issues.apache.org/jira/browse/PARQUET-1727) | Do Not Swallow InterruptedException in ParquetLoader |  Minor | . | David Mollitor | David Mollitor |
| [PARQUET-1732](https://issues.apache.org/jira/browse/PARQUET-1732) | Call toArray With Empty Array |  Minor | . | David Mollitor | David Mollitor |
| [PARQUET-1731](https://issues.apache.org/jira/browse/PARQUET-1731) | Use JDK 8 Facilities to Simplify FilteringRecordMaterializer |  Minor | . | David Mollitor | David Mollitor |
| [PARQUET-1730](https://issues.apache.org/jira/browse/PARQUET-1730) | Use switch Statement in AvroIndexedRecordConverter for Enums |  Minor | . | David Mollitor | David Mollitor |
| [PARQUET-1725](https://issues.apache.org/jira/browse/PARQUET-1725) | Replace Usage of Strings.join with JDK Functionality in ColumnPath Class |  Minor | . | David Mollitor | David Mollitor |
| [PARQUET-1735](https://issues.apache.org/jira/browse/PARQUET-1735) | Clean Up parquet-columns Module |  Minor | . | David Mollitor | David Mollitor |
| [PARQUET-1593](https://issues.apache.org/jira/browse/PARQUET-1593) | Replace the example usage in parquet-cli's help message with an actually existent subcommand |  Trivial | parquet-cli | Kengo Seki | Kengo Seki |
| [PARQUET-1729](https://issues.apache.org/jira/browse/PARQUET-1729) | Avoid AutoBoxing in EncodingStats |  Minor | . | David Mollitor | David Mollitor |
| [PARQUET-1738](https://issues.apache.org/jira/browse/PARQUET-1738) | Remove unused imports in parquet-column |  Minor | parquet-mr | Walid Gara |  |
| [PARQUET-1710](https://issues.apache.org/jira/browse/PARQUET-1710) | Use Objects.requireNonNull |  Minor | . | David Mollitor | David Mollitor |
| [PARQUET-1749](https://issues.apache.org/jira/browse/PARQUET-1749) | Use Java 8 Streams for Empty PrimitiveIterator |  Trivial | . | David Mollitor | David Mollitor |
| [PARQUET-1737](https://issues.apache.org/jira/browse/PARQUET-1737) | Replace Test Class RandomStr with Apache Commons Lang |  Minor | . | David Mollitor | David Mollitor |
| [PARQUET-1751](https://issues.apache.org/jira/browse/PARQUET-1751) | Fix Protobuf Build Warning |  Trivial | . | David Mollitor | David Mollitor |
| [PARQUET-1743](https://issues.apache.org/jira/browse/PARQUET-1743) | Add equals to BlockSplitBloomFilter |  Trivial | parquet-mr | Walid Gara | Walid Gara |
| [PARQUET-1782](https://issues.apache.org/jira/browse/PARQUET-1782) | Use Switch Statement in AvroRecordConverter |  Minor | . | David Mollitor | David Mollitor |
| [PARQUET-1790](https://issues.apache.org/jira/browse/PARQUET-1790) | ParquetFileWriter missing Api for  DataPageV2 |  Major | parquet-mr | Brian Mwambazi | Brian Mwambazi |
| [PARQUET-1791](https://issues.apache.org/jira/browse/PARQUET-1791) | Add 'prune' command to parquet-tools |  Major | parquet-mr | Xinli Shang | Xinli Shang |
| [PARQUET-1759](https://issues.apache.org/jira/browse/PARQUET-1759) | InternalParquetRecordReader Use Singleton Set |  Minor | . | David Mollitor | David Mollitor |
| [PARQUET-1763](https://issues.apache.org/jira/browse/PARQUET-1763) | Add SLF4J to TestCircularReferences |  Minor | . | David Mollitor | David Mollitor |
| [PARQUET-1756](https://issues.apache.org/jira/browse/PARQUET-1756) | Remove Dependency on Maven Plugin semantic-versioning |  Minor | . | David Mollitor | David Mollitor |
| [PARQUET-1750](https://issues.apache.org/jira/browse/PARQUET-1750) | Reduce Memory Usage of RowRanges Class |  Minor | . | David Mollitor | David Mollitor |
| [PARQUET-1728](https://issues.apache.org/jira/browse/PARQUET-1728) | Simplify NullPointerException Handling in AvroWriteSupport |  Minor | . | David Mollitor | David Mollitor |
| [PARQUET-1775](https://issues.apache.org/jira/browse/PARQUET-1775) | Deprecate AvroParquetWriter Builder Hadoop Path |  Minor | . | David Mollitor | David Mollitor |
| [PARQUET-1866](https://issues.apache.org/jira/browse/PARQUET-1866) | Replace Hadoop ZSTD with JNI-ZSTD |  Major | parquet-mr | Xinli Shang | Xinli Shang |
| [PARQUET-1821](https://issues.apache.org/jira/browse/PARQUET-1821) | Add 'column-size' command to parquet-cli and parquet-tools |  Major | parquet-mr | Xinli Shang | Xinli Shang |
| [PARQUET-1853](https://issues.apache.org/jira/browse/PARQUET-1853) | Minimize the parquet-avro fastutil shaded jar |  Major | parquet-avro | Fokko Driesprong | Fokko Driesprong |
| [PARQUET-1778](https://issues.apache.org/jira/browse/PARQUET-1778) | Do Not Consider Class for Avro Generic Record Reader |  Major | . | David Mollitor | David Mollitor |
| [PARQUET-1890](https://issues.apache.org/jira/browse/PARQUET-1890) | Upgrade to Avro 1.10.0 |  Major | parquet-avro | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-1924](https://issues.apache.org/jira/browse/PARQUET-1924) | Do not Instantiate a New LongHashFunction |  Minor | . | David Mollitor | David Mollitor |
| [PARQUET-1930](https://issues.apache.org/jira/browse/PARQUET-1930) | Bump Apache Thrift to 0.13.0 |  Major | . | Fokko Driesprong | Fokko Driesprong |
| [PARQUET-1931](https://issues.apache.org/jira/browse/PARQUET-1931) | Bump Junit 4.13.1 |  Major | . | Fokko Driesprong | Fokko Driesprong |
| [PARQUET-1929](https://issues.apache.org/jira/browse/PARQUET-1929) | Bump Snappy to 1.1.8 |  Major | . | Fokko Driesprong | Fokko Driesprong |
| [PARQUET-1932](https://issues.apache.org/jira/browse/PARQUET-1932) | Bump Fastutil to 8.4.2 |  Major | . | Fokko Driesprong | Fokko Driesprong |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-1438](https://issues.apache.org/jira/browse/PARQUET-1438) | [C++] corrupted files produced on 32-bit architecture (i686) |  Major | . | Dmitry Kalinkin |  |
| [PARQUET-1554](https://issues.apache.org/jira/browse/PARQUET-1554) | Compilation error when upgrading Scrooge version |  Minor | parquet-format | Nándor Kollár | Nándor Kollár |
| [PARQUET-1741](https://issues.apache.org/jira/browse/PARQUET-1741) | APIs backward compatibility issues cause master branch build failure |  Major | parquet-mr | Junjie Chen | Junjie Chen |
| [PARQUET-1599](https://issues.apache.org/jira/browse/PARQUET-1599) | Fix to-avro to respect the overwrite option |  Major | parquet-cli | Kengo Seki | Kengo Seki |
| [PARQUET-1684](https://issues.apache.org/jira/browse/PARQUET-1684) | [parquet-protobuf] default protobuf field values are stored as nulls |  Major | parquet-mr | George Haddad | Priyank Bagrecha |
| [PARQUET-1879](https://issues.apache.org/jira/browse/PARQUET-1879) | Apache Arrow can not read a Parquet File written with Parqet-Avro 1.11.0 with a Map field |  Critical | parquet-avro, parquet-format | Matthew McMahon | Matthew McMahon |
| [PARQUET-1910](https://issues.apache.org/jira/browse/PARQUET-1910) | Parquet-cli is broken after TransCompressionCommand was added |  Major | parquet-cli | Grisha Weintraub | Grisha Weintraub |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-1796](https://issues.apache.org/jira/browse/PARQUET-1796) | Bump Apache Avro to 1.9.2 |  Major | parquet-avro | Ryan Skraba | Ryan Skraba |
| [PARQUET-1842](https://issues.apache.org/jira/browse/PARQUET-1842) | Update Jackson Databind version to address CVE |  Major | parquet-mr | Patrick OFriel |  |
| [PARQUET-1895](https://issues.apache.org/jira/browse/PARQUET-1895) | Update jackson-databind |  Major | parquet-mr | Patrick OFriel | Gabor Szadovszky |


