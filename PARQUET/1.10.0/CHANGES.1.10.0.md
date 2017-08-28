
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

## Release 1.10.0 - Unreleased (as of 2017-08-28)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-755](https://issues.apache.org/jira/browse/PARQUET-755) | create parquet-arrow module with schema converter |  Major | . | Julien Le Dem | Julien Le Dem |
| [PARQUET-220](https://issues.apache.org/jira/browse/PARQUET-220) | Unnecessary warning in ParquetRecordReader.initialize |  Major | parquet-mr | Konstantin Shaposhnikov | Reuben Kuhnert |
| [PARQUET-969](https://issues.apache.org/jira/browse/PARQUET-969) | Decimal datatype support for parquet-tools output |  Minor | . | Dan Fowler |  |
| [PARQUET-852](https://issues.apache.org/jira/browse/PARQUET-852) | Slowly ramp up sizes of byte[] in ByteBasedBitPackingEncoder |  Minor | . | John Jenkins |  |
| [PARQUET-990](https://issues.apache.org/jira/browse/PARQUET-990) | More detailed error messages in footer parsing |  Minor | parquet-mr | Andrew Ash | Andrew Ash |
| [PARQUET-884](https://issues.apache.org/jira/browse/PARQUET-884) | Add support for Decimal datatype to Parquet-Pig record reader |  Minor | parquet-pig | Ellen Kletscher | Ellen Kletscher |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-765](https://issues.apache.org/jira/browse/PARQUET-765) | Upgrade Avro to 1.8.1 |  Major | parquet-avro | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-783](https://issues.apache.org/jira/browse/PARQUET-783) | H2SeekableInputStream does not close its underlying FSDataInputStream, leading to connection leaks |  Critical | parquet-mr | Michael Allman | Michael Allman |
| [PARQUET-786](https://issues.apache.org/jira/browse/PARQUET-786) | parquet-tools README incorrectly has 'java jar' instead of 'java -jar' |  Major | . | Mark Nelson | Mark Nelson |
| [PARQUET-196](https://issues.apache.org/jira/browse/PARQUET-196) | parquet-tools command to get rowcount & size |  Minor | parquet-mr | Swapnil |  |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-768](https://issues.apache.org/jira/browse/PARQUET-768) | Add Uwe L. Korn to KEYS |  Major | . | Uwe L. Korn | Uwe L. Korn |


