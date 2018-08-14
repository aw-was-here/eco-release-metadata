
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

## Release Impala 2.5.2 - Unreleased (as of 2018-08-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-2660](https://issues.apache.org/jira/browse/IMPALA-2660) | Respect auth\_to\_local rules from hdfs configs (core-site.xml) |  Critical | Security | Eric Lin | bharath v |
| [IMPALA-3369](https://issues.apache.org/jira/browse/IMPALA-3369) | Add a variant of alter table to manually add column stats |  Major | Catalog, Frontend | bharath v | Alexander Behm |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-3276](https://issues.apache.org/jira/browse/IMPALA-3276) | BufferedTupleStream::PrepareForRead() does not handle pin failure correctly |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-1928](https://issues.apache.org/jira/browse/IMPALA-1928) | Impala ODBC bad performance with Kerberos mechanism |  Major | Perf Investigation | Jonathan L. | Mostafa Mokhtar |
| [IMPALA-3745](https://issues.apache.org/jira/browse/IMPALA-3745) | Corrupt encoded values in parquet files can cause crashes |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3499](https://issues.apache.org/jira/browse/IMPALA-3499) | Backend cannot write catalog-update topic more than 2GB to jByteArray |  Major | Catalog | He Tianyi | Huaisi Xu |
| [IMPALA-3754](https://issues.apache.org/jira/browse/IMPALA-3754) | TestParquet.test\_corrupt\_rle\_counts fails |  Blocker | Backend | casey | Tim Armstrong |


