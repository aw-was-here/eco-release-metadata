
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

## Release 1.11.0 - Unreleased (as of 2018-08-21)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-1253](https://issues.apache.org/jira/browse/PARQUET-1253) | Support for new logical type representation |  Major | parquet-mr | Nandor Kollar | Nandor Kollar |
| [PARQUET-1321](https://issues.apache.org/jira/browse/PARQUET-1321) | LogicalTypeAnnotation.LogicalTypeAnnotationVisitor#visit methods should have a return value |  Major | parquet-mr | Nandor Kollar | Nandor Kollar |
| [PARQUET-1335](https://issues.apache.org/jira/browse/PARQUET-1335) | Logical type names in parquet-mr are not consistent with parquet-format |  Minor | parquet-mr | Nandor Kollar | Nandor Kollar |
| [PARQUET-1336](https://issues.apache.org/jira/browse/PARQUET-1336) | PrimitiveComparator should implements Serializable |  Major | parquet-mr | Yuming Wang | Yuming Wang |
| [PARQUET-1390](https://issues.apache.org/jira/browse/PARQUET-1390) | [Java] Upgrade to Arrow 0.10.0 |  Minor | parquet-mr | Andy Grove | Andy Grove |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-1128](https://issues.apache.org/jira/browse/PARQUET-1128) | [Java] Upgrade the Apache Arrow version to 0.8.0 for SchemaConverter |  Minor | parquet-mr | Masayuki Takahashi | Masayuki Takahashi |
| [PARQUET-1285](https://issues.apache.org/jira/browse/PARQUET-1285) | [Java] SchemaConverter should not convert from TimeUnit.SECOND AND TimeUnit.NANOSECOND of Arrow |  Minor | parquet-mr | Masayuki Takahashi | Masayuki Takahashi |
| [PARQUET-1293](https://issues.apache.org/jira/browse/PARQUET-1293) | Build failure when using Java 8 lambda expressions |  Minor | . | Nandor Kollar | Nandor Kollar |
| [PARQUET-1297](https://issues.apache.org/jira/browse/PARQUET-1297) | [Java] SchemaConverter should not convert from Timestamp(TimeUnit.SECOND) and Timestamp(TimeUnit.NANOSECOND) of Arrow |  Minor | parquet-mr | Masayuki Takahashi | Masayuki Takahashi |
| [PARQUET-1296](https://issues.apache.org/jira/browse/PARQUET-1296) | Travis kills build after 10 minutes, because "no output was received" |  Major | . | Nandor Kollar | Nandor Kollar |
| [PARQUET-1304](https://issues.apache.org/jira/browse/PARQUET-1304) | Release 1.10 contains breaking changes for Hive |  Major | parquet-mr | Zoltan Ivanfi | Gabor Szadovszky |
| [PARQUET-1317](https://issues.apache.org/jira/browse/PARQUET-1317) | ParquetMetadataConverter throw NPE |  Major | parquet-mr | Yuming Wang | Yuming Wang |
| [PARQUET-1309](https://issues.apache.org/jira/browse/PARQUET-1309) | Parquet Java uses incorrect stats and dictionary filter properties |  Major | parquet-mr | Ryan Blue | Gabor Szadovszky |
| [PARQUET-1311](https://issues.apache.org/jira/browse/PARQUET-1311) | Update README.md |  Minor | parquet-mr | Nandor Kollar | Nandor Kollar |
| [PARQUET-952](https://issues.apache.org/jira/browse/PARQUET-952) | Avro union with single type fails with 'is not a group' |  Major | parquet-mr | Jarek Jarcec Cecho | Nandor Kollar |
| [PARQUET-1344](https://issues.apache.org/jira/browse/PARQUET-1344) | Type builders don't honor new logical types |  Major | parquet-mr | Nandor Kollar | Nandor Kollar |
| [PARQUET-1351](https://issues.apache.org/jira/browse/PARQUET-1351) | Travis builds fail for parquet-format |  Major | parquet-format | Nandor Kollar | Nandor Kollar |
| [PARQUET-1341](https://issues.apache.org/jira/browse/PARQUET-1341) | Null count is suppressed when columns have no min or max and use unsigned sort order |  Major | parquet-mr | Ryan Blue | Ryan Blue |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-1364](https://issues.apache.org/jira/browse/PARQUET-1364) | Column Indexes: Invalid row indexes for pages starting with nulls |  Major | . | Gabor Szadovszky | Gabor Szadovszky |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-968](https://issues.apache.org/jira/browse/PARQUET-968) | Add Hive/Presto support in ProtoParquet |  Major | . | Constantin Muraru | Constantin Muraru |


