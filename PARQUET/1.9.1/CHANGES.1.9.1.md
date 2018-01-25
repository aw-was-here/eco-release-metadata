
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

## Release 1.9.1 - Unreleased (as of 2018-01-25)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-1025](https://issues.apache.org/jira/browse/PARQUET-1025) | Support new min-max statistics in parquet-mr |  Major | parquet-mr | Zoltan Ivanfi | Gabor Szadovszky |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-321](https://issues.apache.org/jira/browse/PARQUET-321) | Set the HDFS padding default to 8MB |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-801](https://issues.apache.org/jira/browse/PARQUET-801) | Allow UserDefinedPredicates in DictionaryFilter |  Major | parquet-mr | Patrick Woody | Patrick Woody |
| [PARQUET-1026](https://issues.apache.org/jira/browse/PARQUET-1026) | allow unsigned binary stats when min == max |  Major | parquet-mr | Julien Le Dem | Julien Le Dem |
| [PARQUET-1024](https://issues.apache.org/jira/browse/PARQUET-1024) | allow for case insensitive parquet-xxx prefix in PR title |  Major | . | Julien Le Dem | Julien Le Dem |
| [PARQUET-1115](https://issues.apache.org/jira/browse/PARQUET-1115) | Warn users when misusing parquet-tools merge |  Major | . | Zoltan Ivanfi | Nandor Kollar |
| [PARQUET-1149](https://issues.apache.org/jira/browse/PARQUET-1149) | Upgrade Avro dependancy to 1.8.2 |  Major | . | Fokko Driesprong |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-791](https://issues.apache.org/jira/browse/PARQUET-791) | Predicate pushing down on missing columns should work on UserDefinedPredicate too |  Major | parquet-mr | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [PARQUET-1005](https://issues.apache.org/jira/browse/PARQUET-1005) | Fix DumpCommand parsing to allow column projection |  Major | parquet-cli | Gera Shegalov | Gera Shegalov |
| [PARQUET-1152](https://issues.apache.org/jira/browse/PARQUET-1152) | Parquet-thrift doesn't compile with Thrift 0.9.3 |  Major | . | Nandor Kollar | Nandor Kollar |
| [PARQUET-1153](https://issues.apache.org/jira/browse/PARQUET-1153) | Parquet-thrift doesn't compile with Thrift 0.10.0 |  Major | . | Nandor Kollar | Nandor Kollar |
| [PARQUET-1141](https://issues.apache.org/jira/browse/PARQUET-1141) | IDs are dropped in metadata conversion |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-1077](https://issues.apache.org/jira/browse/PARQUET-1077) | [MR] Switch to long key ids in KEYs file |  Major | parquet-mr | Lars Volker | Lars Volker |


