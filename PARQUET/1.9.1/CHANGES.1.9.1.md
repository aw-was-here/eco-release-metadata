
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

## Release 1.9.1 - Unreleased (as of 2017-08-26)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-321](https://issues.apache.org/jira/browse/PARQUET-321) | Set the HDFS padding default to 8MB |  Major | parquet-mr | Ryan Blue | Ryan Blue |
| [PARQUET-801](https://issues.apache.org/jira/browse/PARQUET-801) | Allow UserDefinedPredicates in DictionaryFilter |  Major | parquet-mr | Patrick Woody | Patrick Woody |
| [PARQUET-1026](https://issues.apache.org/jira/browse/PARQUET-1026) | allow unsigned binary stats when min == max |  Major | parquet-mr | Julien Le Dem | Julien Le Dem |
| [PARQUET-1024](https://issues.apache.org/jira/browse/PARQUET-1024) | allow for case insensitive parquet-xxx prefix in PR title |  Major | . | Julien Le Dem | Julien Le Dem |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [PARQUET-791](https://issues.apache.org/jira/browse/PARQUET-791) | Predicate pushing down on missing columns should work on UserDefinedPredicate too |  Major | parquet-mr | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [PARQUET-1005](https://issues.apache.org/jira/browse/PARQUET-1005) | Fix DumpCommand parsing to allow column projection |  Major | parquet-cli | Gera Shegalov | Gera Shegalov |


