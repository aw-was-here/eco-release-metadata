
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

## Release 1.11.1 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-1853](https://issues.apache.org/jira/browse/PARQUET-1853) | Minimize the parquet-avro fastutil shaded jar |  Major | parquet-avro | Fokko Driesprong | Fokko Driesprong |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-1765](https://issues.apache.org/jira/browse/PARQUET-1765) | Invalid filteredRowCount in InternalParquetRecordReader |  Major | parquet-mr | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-1879](https://issues.apache.org/jira/browse/PARQUET-1879) | Apache Arrow can not read a Parquet File written with Parqet-Avro 1.11.0 with a Map field |  Critical | parquet-avro, parquet-format | Matthew McMahon | Matthew McMahon |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-1740](https://issues.apache.org/jira/browse/PARQUET-1740) | Make ParquetFileReader.getFilteredRecordCount public |  Major | parquet-mr | Yuming Wang | Yuming Wang |
| [PARQUET-1744](https://issues.apache.org/jira/browse/PARQUET-1744) | Some filters throws ArrayIndexOutOfBoundsException |  Major | parquet-mr | Yuming Wang | Gabor Szadovszky |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-1796](https://issues.apache.org/jira/browse/PARQUET-1796) | Bump Apache Avro to 1.9.2 |  Major | parquet-avro | Ryan Skraba | Ryan Skraba |
| [PARQUET-1774](https://issues.apache.org/jira/browse/PARQUET-1774) | Release parquet 1.11.1 |  Major | parquet-mr | Gabor Szadovszky | Gabor Szadovszky |


