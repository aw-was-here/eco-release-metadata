
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

## Release 1.10.0 - Unreleased (as of 2018-02-06)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-755](https://issues.apache.org/jira/browse/PARQUET-755) | create parquet-arrow module with schema converter |  Major | . | Julien Le Dem | Julien Le Dem |
| [PARQUET-220](https://issues.apache.org/jira/browse/PARQUET-220) | Unnecessary warning in ParquetRecordReader.initialize |  Major | parquet-mr | Konstantin Shaposhnikov | Reuben Kuhnert |
| [PARQUET-969](https://issues.apache.org/jira/browse/PARQUET-969) | Decimal datatype support for parquet-tools output |  Minor | . | Dan Fowler |  |
| [PARQUET-852](https://issues.apache.org/jira/browse/PARQUET-852) | Slowly ramp up sizes of byte[] in ByteBasedBitPackingEncoder |  Minor | . | John Jenkins |  |
| [PARQUET-990](https://issues.apache.org/jira/browse/PARQUET-990) | More detailed error messages in footer parsing |  Minor | parquet-mr | Andrew Ash | Andrew Ash |
| [PARQUET-884](https://issues.apache.org/jira/browse/PARQUET-884) | Add support for Decimal datatype to Parquet-Pig record reader |  Minor | parquet-pig | Ellen Kletscher | Ellen Kletscher |
| [PARQUET-1142](https://issues.apache.org/jira/browse/PARQUET-1142) | Avoid leaking Hadoop API to downstream libraries |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-386](https://issues.apache.org/jira/browse/PARQUET-386) | Printing out the statistics of metadata in parquet-tools |  Trivial | parquet-mr | Onur Soyer | Gabor Szadovszky |
| [PARQUET-1197](https://issues.apache.org/jira/browse/PARQUET-1197) | Log rat failures |  Minor | . | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-1170](https://issues.apache.org/jira/browse/PARQUET-1170) | Logical-type-based toString for proper representeation in tools/logs |  Major | . | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-1198](https://issues.apache.org/jira/browse/PARQUET-1198) | Bump java source and target to java8 |  Major | . | Gabor Szadovszky | Gabor Szadovszky |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-765](https://issues.apache.org/jira/browse/PARQUET-765) | Upgrade Avro to 1.8.1 |  Major | parquet-avro | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-783](https://issues.apache.org/jira/browse/PARQUET-783) | H2SeekableInputStream does not close its underlying FSDataInputStream, leading to connection leaks |  Critical | parquet-mr | Michael Allman | Michael Allman |
| [PARQUET-786](https://issues.apache.org/jira/browse/PARQUET-786) | parquet-tools README incorrectly has 'java jar' instead of 'java -jar' |  Major | . | Mark Nelson | Mark Nelson |
| [PARQUET-196](https://issues.apache.org/jira/browse/PARQUET-196) | parquet-tools command to get rowcount & size |  Minor | parquet-mr | Swapnil |  |
| [PARQUET-357](https://issues.apache.org/jira/browse/PARQUET-357) | Parquet-thrift generates wrong schema for Thrift binary fields |  Major | parquet-mr | Cheng Lian | Nandor Kollar |
| [PARQUET-1156](https://issues.apache.org/jira/browse/PARQUET-1156) | dev/merge\_parquet\_pr.py problems |  Major | . | Zoltan Ivanfi | Zoltan Ivanfi |
| [PARQUET-1077](https://issues.apache.org/jira/browse/PARQUET-1077) | [MR] Switch to long key ids in KEYs file |  Major | parquet-mr | Lars Volker | Lars Volker |
| [PARQUET-1185](https://issues.apache.org/jira/browse/PARQUET-1185) | TestBinary#testBinary unit test fails after PARQUET-1141 |  Major | . | Nandor Kollar | Nandor Kollar |
| [PARQUET-1191](https://issues.apache.org/jira/browse/PARQUET-1191) | Type.hashCode() takes originalType into account but Type.equals() does not |  Major | . | Gabor Szadovszky | Nandor Kollar |
| [PARQUET-1065](https://issues.apache.org/jira/browse/PARQUET-1065) | Deprecate type-defined sort ordering for INT96 type |  Major | . | Zoltan Ivanfi | Zoltan Ivanfi |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-768](https://issues.apache.org/jira/browse/PARQUET-768) | Add Uwe L. Korn to KEYS |  Major | . | Uwe L. Korn | Uwe L. Korn |


