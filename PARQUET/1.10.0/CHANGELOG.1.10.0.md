
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

## Release 1.10.0 - 2018-04-10



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-1025](https://issues.apache.org/jira/browse/PARQUET-1025) | Support new min-max statistics in parquet-mr |  Major | parquet-mr | Zoltan Ivanfi | Gabor Szadovszky |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-755](https://issues.apache.org/jira/browse/PARQUET-755) | create parquet-arrow module with schema converter |  Major | . | Julien Le Dem | Julien Le Dem |
| [PARQUET-220](https://issues.apache.org/jira/browse/PARQUET-220) | Unnecessary warning in ParquetRecordReader.initialize |  Major | parquet-mr | Konstantin Shaposhnikov | Reuben Kuhnert |
| [PARQUET-321](https://issues.apache.org/jira/browse/PARQUET-321) | Set the HDFS padding default to 8MB |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-801](https://issues.apache.org/jira/browse/PARQUET-801) | Allow UserDefinedPredicates in DictionaryFilter |  Major | parquet-mr | Patrick Woody | Patrick Woody |
| [PARQUET-969](https://issues.apache.org/jira/browse/PARQUET-969) | Decimal datatype support for parquet-tools output |  Minor | . | Dan Fowler |  |
| [PARQUET-852](https://issues.apache.org/jira/browse/PARQUET-852) | Slowly ramp up sizes of byte[] in ByteBasedBitPackingEncoder |  Minor | . | John Jenkins |  |
| [PARQUET-990](https://issues.apache.org/jira/browse/PARQUET-990) | More detailed error messages in footer parsing |  Minor | parquet-mr | Andrew Ash | Andrew Ash |
| [PARQUET-884](https://issues.apache.org/jira/browse/PARQUET-884) | Add support for Decimal datatype to Parquet-Pig record reader |  Minor | parquet-pig | Ellen Kletscher | Ellen Kletscher |
| [PARQUET-1026](https://issues.apache.org/jira/browse/PARQUET-1026) | allow unsigned binary stats when min == max |  Major | parquet-mr | Julien Le Dem | Julien Le Dem |
| [PARQUET-1024](https://issues.apache.org/jira/browse/PARQUET-1024) | allow for case insensitive parquet-xxx prefix in PR title |  Major | . | Julien Le Dem | Julien Le Dem |
| [PARQUET-1115](https://issues.apache.org/jira/browse/PARQUET-1115) | Warn users when misusing parquet-tools merge |  Major | . | Zoltan Ivanfi | Nandor Kollar |
| [PARQUET-1149](https://issues.apache.org/jira/browse/PARQUET-1149) | Upgrade Avro dependancy to 1.8.2 |  Major | . | Fokko Driesprong |  |
| [PARQUET-1142](https://issues.apache.org/jira/browse/PARQUET-1142) | Avoid leaking Hadoop API to downstream libraries |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-386](https://issues.apache.org/jira/browse/PARQUET-386) | Printing out the statistics of metadata in parquet-tools |  Trivial | parquet-mr | Onur Soyer | Gabor Szadovszky |
| [PARQUET-1197](https://issues.apache.org/jira/browse/PARQUET-1197) | Log rat failures |  Minor | . | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-1170](https://issues.apache.org/jira/browse/PARQUET-1170) | Logical-type-based toString for proper representeation in tools/logs |  Major | . | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-1198](https://issues.apache.org/jira/browse/PARQUET-1198) | Bump java source and target to java8 |  Major | . | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-1215](https://issues.apache.org/jira/browse/PARQUET-1215) | Add accessor for footer after a file is closed |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-787](https://issues.apache.org/jira/browse/PARQUET-787) | Add a size limit for heap allocations when reading |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-1135](https://issues.apache.org/jira/browse/PARQUET-1135) | upgrade thrift and protobuf dependencies |  Major | parquet-mr | Julien Le Dem | Julien Le Dem |
| [PARQUET-777](https://issues.apache.org/jira/browse/PARQUET-777) | Add new Parquet CLI tools |  Major | parquet-cli | Ryan Blue | Ryan Blue |
| [PARQUET-1183](https://issues.apache.org/jira/browse/PARQUET-1183) | AvroParquetWriter needs OutputFile based Builder |  Major | parquet-avro | Werner Daehn | Ryan Blue |
| [PARQUET-1263](https://issues.apache.org/jira/browse/PARQUET-1263) | ParquetReader's builder should use Configuration from the InputFile |  Major | . | Ryan Blue | Ryan Blue |
| [PARQUET-1264](https://issues.apache.org/jira/browse/PARQUET-1264) | Update Javadoc for Java 1.8 |  Major | parquet-mr | Ryan Blue | Ryan Blue |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-765](https://issues.apache.org/jira/browse/PARQUET-765) | Upgrade Avro to 1.8.1 |  Major | parquet-avro | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-783](https://issues.apache.org/jira/browse/PARQUET-783) | H2SeekableInputStream does not close its underlying FSDataInputStream, leading to connection leaks |  Critical | parquet-mr | Michael Allman | Michael Allman |
| [PARQUET-786](https://issues.apache.org/jira/browse/PARQUET-786) | parquet-tools README incorrectly has 'java jar' instead of 'java -jar' |  Major | . | Mark Nelson | Mark Nelson |
| [PARQUET-791](https://issues.apache.org/jira/browse/PARQUET-791) | Predicate pushing down on missing columns should work on UserDefinedPredicate too |  Major | parquet-mr | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [PARQUET-196](https://issues.apache.org/jira/browse/PARQUET-196) | parquet-tools command to get rowcount & size |  Minor | parquet-mr | Swapnil |  |
| [PARQUET-1005](https://issues.apache.org/jira/browse/PARQUET-1005) | Fix DumpCommand parsing to allow column projection |  Major | parquet-cli | Gera Shegalov | Gera Shegalov |
| [PARQUET-1152](https://issues.apache.org/jira/browse/PARQUET-1152) | Parquet-thrift doesn't compile with Thrift 0.9.3 |  Major | . | Nandor Kollar | Nandor Kollar |
| [PARQUET-1153](https://issues.apache.org/jira/browse/PARQUET-1153) | Parquet-thrift doesn't compile with Thrift 0.10.0 |  Major | . | Nandor Kollar | Nandor Kollar |
| [PARQUET-357](https://issues.apache.org/jira/browse/PARQUET-357) | Parquet-thrift generates wrong schema for Thrift binary fields |  Major | parquet-mr | Cheng Lian | Nandor Kollar |
| [PARQUET-1141](https://issues.apache.org/jira/browse/PARQUET-1141) | IDs are dropped in metadata conversion |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-1156](https://issues.apache.org/jira/browse/PARQUET-1156) | dev/merge\_parquet\_pr.py problems |  Major | . | Zoltan Ivanfi | Zoltan Ivanfi |
| [PARQUET-1077](https://issues.apache.org/jira/browse/PARQUET-1077) | [MR] Switch to long key ids in KEYs file |  Major | parquet-mr | Lars Volker | Lars Volker |
| [PARQUET-1185](https://issues.apache.org/jira/browse/PARQUET-1185) | TestBinary#testBinary unit test fails after PARQUET-1141 |  Major | . | Nandor Kollar | Nandor Kollar |
| [PARQUET-1191](https://issues.apache.org/jira/browse/PARQUET-1191) | Type.hashCode() takes originalType into account but Type.equals() does not |  Major | . | Gabor Szadovszky | Nandor Kollar |
| [PARQUET-1065](https://issues.apache.org/jira/browse/PARQUET-1065) | Deprecate type-defined sort ordering for INT96 type |  Major | . | Zoltan Ivanfi | Zoltan Ivanfi |
| [PARQUET-1208](https://issues.apache.org/jira/browse/PARQUET-1208) | Occasional endless loop in unit test |  Major | . | Zoltan Ivanfi | Zoltan Ivanfi |
| [PARQUET-1217](https://issues.apache.org/jira/browse/PARQUET-1217) | Incorrect handling of missing values in Statistics |  Major | . | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-1246](https://issues.apache.org/jira/browse/PARQUET-1246) | Ignore float/double statistics in case of NaN |  Major | . | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-1028](https://issues.apache.org/jira/browse/PARQUET-1028) | [JAVA] When reading old Spark-generated files with INT96, stats are reported as valid when they aren't |  Major | parquet-mr | Jacques Nadeau | Zoltan Ivanfi |
| [PARQUET-1258](https://issues.apache.org/jira/browse/PARQUET-1258) | Update scm developer connection to github |  Minor | parquet-format, parquet-mr | Gabor Szadovszky | Gabor Szadovszky |
| [PARQUET-1285](https://issues.apache.org/jira/browse/PARQUET-1285) | [Java] SchemaConverter should not convert from TimeUnit.SECOND AND TimeUnit.NANOSECOND of Arrow |  Minor | parquet-mr | Masayuki Takahashi | Masayuki Takahashi |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-768](https://issues.apache.org/jira/browse/PARQUET-768) | Add Uwe L. Korn to KEYS |  Major | . | Uwe L. Korn | Uwe L. Korn |
| [PARQUET-1189](https://issues.apache.org/jira/browse/PARQUET-1189) | Release Parquet Java 1.10 |  Major | parquet-mr | Ryan Blue | Ryan Blue |


