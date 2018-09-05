
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
# Apache Impala Changelog

## Release Impala 1.4.1 - 2014-08-28



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-1093](https://issues.apache.org/jira/browse/IMPALA-1093) | Impalad catalog updates can fail with error: "IllegalArgumentException: fromKey out of range" at com.cloudera.impala.catalog.CatalogDeltaLog |  Major | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-1107](https://issues.apache.org/jira/browse/IMPALA-1107) | Update HS2 client API. |  Critical | . | Nong Li | Nong Li |
| [IMPALA-1131](https://issues.apache.org/jira/browse/IMPALA-1131) | "Total" time counter does not capture all the network transmit time |  Major | . | Alan Choi | Nong Li |
| [IMPALA-1149](https://issues.apache.org/jira/browse/IMPALA-1149) | Impala will crash when reading certain Avro files containing bytes data |  Major | . | Skye Wanderman-Milne | Skye Wanderman-Milne |
| [IMPALA-1142](https://issues.apache.org/jira/browse/IMPALA-1142) | Support specifying a custom AuthorizationProvider in Impala |  Major | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-1188](https://issues.apache.org/jira/browse/IMPALA-1188) | Select distinct hangs if column is not available in all partitions |  Minor | . | Ben Paretzky | Nong Li |


