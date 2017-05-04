
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

## Release 1.8.0 - 2015-07-11



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-229](https://issues.apache.org/jira/browse/PARQUET-229) | Make an alternate, stricter thrift column projection API |  Major | parquet-mr | Alex Levenson | Alex Levenson |
| [PARQUET-243](https://issues.apache.org/jira/browse/PARQUET-243) | Add avro-reflect support |  Major | parquet-mr | Ryan Blue | Ryan Blue |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-245](https://issues.apache.org/jira/browse/PARQUET-245) | Travis CI runs tests even if build fails |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-175](https://issues.apache.org/jira/browse/PARQUET-175) | Allow setting of a custom protobuf class when reading parquet file using parquet-protobuf. |  Minor | parquet-mr | Lukas Nalezenec | Lukas Nalezenec |
| [PARQUET-272](https://issues.apache.org/jira/browse/PARQUET-272) | Updates docs decscription to match data model |  Trivial | parquet-mr | Ben Pence | Ben Pence |
| [PARQUET-259](https://issues.apache.org/jira/browse/PARQUET-259) | Support Travis CI in parquet-cpp |  Minor | parquet-cpp | Kalon Mills | Kalon Mills |
| [PARQUET-276](https://issues.apache.org/jira/browse/PARQUET-276) | Updates CONTRIBUTING file with new repo info |  Trivial | . | Ben Pence | Ben Pence |
| [PARQUET-253](https://issues.apache.org/jira/browse/PARQUET-253) | AvroSchemaConverter has confusing Javadoc |  Minor | parquet-mr | Cheng Lian | Cheng Lian |
| [PARQUET-274](https://issues.apache.org/jira/browse/PARQUET-274) | Updates URLs to link against the apache user instead of Parquet on github |  Trivial | . | Ben Pence | Ben Pence |
| [PARQUET-278](https://issues.apache.org/jira/browse/PARQUET-278) | enforce non empty group on MessageType level |  Major | parquet-mr | Tianshuo Deng | Tianshuo Deng |
| [PARQUET-223](https://issues.apache.org/jira/browse/PARQUET-223) | Add Map and List builiders |  Major | parquet-mr | Ashish Singh | Ashish Singh |
| [PARQUET-286](https://issues.apache.org/jira/browse/PARQUET-286) | Avro object model should use Utf8 |  Major | parquet-avro | Ryan Blue | Ryan Blue |
| [PARQUET-266](https://issues.apache.org/jira/browse/PARQUET-266) | Add support for lists of primitives to Pig schema converter |  Minor | . | Christian Rolf |  |
| [PARQUET-309](https://issues.apache.org/jira/browse/PARQUET-309) | Remove unnecessary compile dependency on parquet-generator |  Major | parquet-mr | Konstantin Shaposhnikov | Konstantin Shaposhnikov |
| [PARQUET-264](https://issues.apache.org/jira/browse/PARQUET-264) | Update README docs for graduation |  Blocker | parquet-format, parquet-mr | Ryan Blue | Alex Levenson |
| [PARQUET-306](https://issues.apache.org/jira/browse/PARQUET-306) | Improve alignment between row groups and HDFS blocks |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-248](https://issues.apache.org/jira/browse/PARQUET-248) | Simplify ParquetWriters's constructors |  Major | . | Konstantin Shaposhnikov | Ryan Blue |
| [PARQUET-308](https://issues.apache.org/jira/browse/PARQUET-308) | Add accessor to ParquetWriter to get current data size |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-289](https://issues.apache.org/jira/browse/PARQUET-289) | Allow object models to extend the ParquetReader builders |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-290](https://issues.apache.org/jira/browse/PARQUET-290) | Add Avro data model to the reader builder |  Major | parquet-avro | Ryan Blue | Ryan Blue |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-227](https://issues.apache.org/jira/browse/PARQUET-227) | Parquet thrift can write unions that have 0 or more than 1 set value |  Major | parquet-mr | Alex Levenson | Alex Levenson |
| [PARQUET-269](https://issues.apache.org/jira/browse/PARQUET-269) | Restore scrooge-maven-plugin to 3.17.0 or greater |  Major | . | Alex Levenson | Alex Levenson |
| [PARQUET-252](https://issues.apache.org/jira/browse/PARQUET-252) | parquet scrooge support should support nested container type |  Major | . | Tianshuo Deng | Tianshuo Deng |
| [PARQUET-254](https://issues.apache.org/jira/browse/PARQUET-254) | Wrong exception message for unsupported INT96 type |  Minor | parquet-mr | Cheng Lian | Cheng Lian |
| [PARQUET-164](https://issues.apache.org/jira/browse/PARQUET-164) | Warn when parquet memory manager kicks in |  Major | . | Brock Noland | Dong Chen |
| [PARQUET-287](https://issues.apache.org/jira/browse/PARQUET-287) | Projecting unions in thrift causes TExceptions in deserializatoin |  Major | . | Alex Levenson | Alex Levenson |
| [PARQUET-199](https://issues.apache.org/jira/browse/PARQUET-199) | Add a callback when the MemoryManager adjusts row group size |  Major | parquet-mr | Ryan Blue | Dong Chen |
| [PARQUET-151](https://issues.apache.org/jira/browse/PARQUET-151) | Null Pointer exception in parquet.hadoop.ParquetFileWriter.mergeFooters |  Major | . | Vladislav Kuzemchik | Yash Datta |
| [PARQUET-285](https://issues.apache.org/jira/browse/PARQUET-285) | Implement nested types write rules in parquet-avro |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-297](https://issues.apache.org/jira/browse/PARQUET-297) | created\_by in file meta data doesn't contain parquet library version |  Major | parquet-mr | Konstantin Shaposhnikov |  |
| [PARQUET-314](https://issues.apache.org/jira/browse/PARQUET-314) | Fix broken equals implementation(s) |  Minor | parquet-mr | Nezih Yigitbasi | Nezih Yigitbasi |
| [PARQUET-201](https://issues.apache.org/jira/browse/PARQUET-201) | Column with OriginalType INT\_8 failed at filtering |  Major | parquet-mr | Low Chin Wei | Alex Levenson |
| [PARQUET-284](https://issues.apache.org/jira/browse/PARQUET-284) | Should use ConcurrentHashMap instead of HashMap in ParquetMetadataConverter |  Major | parquet-mr | Tony Yan | Alex Levenson |
| [PARQUET-317](https://issues.apache.org/jira/browse/PARQUET-317) | writeMetaDataFile crashes when a relative root Path is used |  Minor | parquet-mr | Steven She | Steven She |
| [PARQUET-316](https://issues.apache.org/jira/browse/PARQUET-316) | Run.sh is broken in parquet-benchmarks |  Major | . | Nezih Yigitbasi | Nezih Yigitbasi |
| [PARQUET-251](https://issues.apache.org/jira/browse/PARQUET-251) | Binary column statistics error when reuse byte[] among rows |  Blocker | parquet-mr | Yijie Shen | Ashish Singh |
| [PARQUET-320](https://issues.apache.org/jira/browse/PARQUET-320) | Restore semver checks |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-325](https://issues.apache.org/jira/browse/PARQUET-325) | Do not target row group sizes if padding is set to 0 |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-152](https://issues.apache.org/jira/browse/PARQUET-152) | Encoding issue with fixed length byte arrays |  Minor | . | Nezih Yigitbasi | Sergio Peña |
| [PARQUET-324](https://issues.apache.org/jira/browse/PARQUET-324) | row count incorrect if data file has more than 2^31 rows |  Minor | parquet-mr | Thomas Friedrich | Thomas Friedrich |
| [PARQUET-246](https://issues.apache.org/jira/browse/PARQUET-246) | ArrayIndexOutOfBoundsException with Parquet write version v2 |  Major | . | Konstantin Shaposhnikov | Konstantin Shaposhnikov |
| [PARQUET-329](https://issues.apache.org/jira/browse/PARQUET-329) | ThriftReadSupport#THRIFT\_COLUMN\_FILTER\_KEY was removed (incompatible change) |  Major | . | Ashish Singh | Ashish Singh |
| [PARQUET-330](https://issues.apache.org/jira/browse/PARQUET-330) | Semver checks is excluded for o.a.p.thrift.projection |  Major | . | Ashish Singh | Ashish Singh |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-262](https://issues.apache.org/jira/browse/PARQUET-262) | When 1.7.0 is released, restore semver plugin config |  Blocker | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-292](https://issues.apache.org/jira/browse/PARQUET-292) | Release Parquet 1.8.0 |  Major | . | Alex Levenson | Alex Levenson |


