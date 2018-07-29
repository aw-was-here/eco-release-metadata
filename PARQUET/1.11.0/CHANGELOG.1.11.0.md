
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

## Release 1.11.0 - Unreleased (as of 2018-07-29)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-1253](https://issues.apache.org/jira/browse/PARQUET-1253) | Support for new logical type representation |  Major | parquet-mr | Nandor Kollar | Nandor Kollar |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-1128](https://issues.apache.org/jira/browse/PARQUET-1128) | [Java] Upgrade the Apache Arrow version to 0.8.0 for SchemaConverter |  Minor | parquet-mr | Masayuki Takahashi | Masayuki Takahashi |
| [PARQUET-1293](https://issues.apache.org/jira/browse/PARQUET-1293) | Build failure when using Java 8 lambda expressions |  Minor | . | Nandor Kollar | Nandor Kollar |
| [PARQUET-1297](https://issues.apache.org/jira/browse/PARQUET-1297) | [Java] SchemaConverter should not convert from Timestamp(TimeUnit.SECOND) and Timestamp(TimeUnit.NANOSECOND) of Arrow |  Minor | parquet-mr | Masayuki Takahashi | Masayuki Takahashi |
| [PARQUET-1304](https://issues.apache.org/jira/browse/PARQUET-1304) | Release 1.10 contains breaking changes for Hive |  Major | parquet-mr | Zoltan Ivanfi | Gabor Szadovszky |
| [PARQUET-1317](https://issues.apache.org/jira/browse/PARQUET-1317) | ParquetMetadataConverter throw NPE |  Major | parquet-mr | Yuming Wang | Yuming Wang |
| [PARQUET-952](https://issues.apache.org/jira/browse/PARQUET-952) | Avro union with single type fails with 'is not a group' |  Major | parquet-mr | Jarek Jarcec Cecho | Nandor Kollar |
| [PARQUET-1351](https://issues.apache.org/jira/browse/PARQUET-1351) | Travis builds fail for parquet-format |  Major | parquet-format | Nandor Kollar | Nandor Kollar |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-968](https://issues.apache.org/jira/browse/PARQUET-968) | Add Hive/Presto support in ProtoParquet |  Major | . | Constantin Muraru | Constantin Muraru |


