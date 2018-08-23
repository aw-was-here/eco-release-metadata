
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
# Apache Hive Changelog

## Release 2.2.1 - Unreleased (as of 2018-08-23)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-17048](https://issues.apache.org/jira/browse/HIVE-17048) | Pass HiveOperation info to HiveSemanticAnalyzerHook through HiveSemanticAnalyzerHookContext |  Major | Hooks | Aihua Xu | Aihua Xu |
| [HIVE-8472](https://issues.apache.org/jira/browse/HIVE-8472) | Add ALTER DATABASE SET LOCATION |  Major | Database/Schema | Jeremy Beard | Mithun Radhakrishnan |
| [HIVE-17609](https://issues.apache.org/jira/browse/HIVE-17609) | Tool to manipulate delegation tokens |  Major | Metastore, Security | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-17669](https://issues.apache.org/jira/browse/HIVE-17669) | Cache to optimize SearchArgument deserialization |  Major | ORC, Query Processor | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-17600](https://issues.apache.org/jira/browse/HIVE-17600) | Make OrcFile's "enforceBufferSize" user-settable. |  Major | ORC | Mithun Radhakrishnan | Mithun Radhakrishnan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-17429](https://issues.apache.org/jira/browse/HIVE-17429) | Hive JDBC doesn't return rows when querying Impala |  Major | JDBC | Zach Amsden | Zach Amsden |
| [HIVE-13989](https://issues.apache.org/jira/browse/HIVE-13989) | Extended ACLs are not handled according to specification |  Major | HCatalog | Chris Drome | Chris Drome |
| [HIVE-17275](https://issues.apache.org/jira/browse/HIVE-17275) | Auto-merge fails on writes of UNION ALL output to ORC file with dynamic partitioning |  Major | Query Processor | Chris Drome | Chris Drome |
| [HIVE-17472](https://issues.apache.org/jira/browse/HIVE-17472) | Drop-partition for multi-level partition fails, if data does not exist. |  Major | Metastore | Mithun Radhakrishnan | Chris Drome |
| [HIVE-17562](https://issues.apache.org/jira/browse/HIVE-17562) | ACID 1.0 + ETL strategy should treat empty compacted files as uncovered deltas |  Major | Transactions | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17621](https://issues.apache.org/jira/browse/HIVE-17621) | Hive-site settings are ignored during HCatInputFormat split-calculation |  Major | HCatalog | Mithun Radhakrishnan | Chris Drome |
| [HIVE-12734](https://issues.apache.org/jira/browse/HIVE-12734) | Remove redundancy in HiveConfs serialized to UDFContext |  Major | . | Mithun Radhakrishnan | Chris Drome |
| [HIVE-17489](https://issues.apache.org/jira/browse/HIVE-17489) | Separate client-facing and server-side Kerberos principals, to support HA |  Major | Metastore | Mithun Radhakrishnan | Thiruvel Thirumoolan |
| [HIVE-17665](https://issues.apache.org/jira/browse/HIVE-17665) | Update netty-all to latest 4.0.x.Final |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17664](https://issues.apache.org/jira/browse/HIVE-17664) | Refactor and add new tests |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-17705](https://issues.apache.org/jira/browse/HIVE-17705) | HIVE-17562 is returning incorrect results |  Blocker | Transactions | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17576](https://issues.apache.org/jira/browse/HIVE-17576) | Improve progress-reporting in TezProcessor |  Major | . | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-17803](https://issues.apache.org/jira/browse/HIVE-17803) | With Pig multi-query, 2 HCatStorers writing to the same table will trample each other's outputs |  Major | HCatalog | Mithun Radhakrishnan | Chris Drome |
| [HIVE-17781](https://issues.apache.org/jira/browse/HIVE-17781) | Map MR settings to Tez settings via DeprecatedKeys |  Major | Configuration, Tez | Mithun Radhakrishnan | Chris Drome |
| [HIVE-17831](https://issues.apache.org/jira/browse/HIVE-17831) | HiveSemanticAnalyzerHookContext does not update the HiveOperation after sem.analyze() is called |  Major | Hive | Sergio Peña | Aihua Xu |
| [HIVE-17791](https://issues.apache.org/jira/browse/HIVE-17791) | Temp dirs under the staging directory should honour \`inheritPerms\` |  Major | Authorization | Mithun Radhakrishnan | Chris Drome |
| [HIVE-18198](https://issues.apache.org/jira/browse/HIVE-18198) | TablePropertyEnrichmentOptimizer.java is missing the Apache license header |  Major | . | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-17853](https://issues.apache.org/jira/browse/HIVE-17853) | RetryingMetaStoreClient loses UGI impersonation-context when reconnecting after timeout |  Critical | Metastore | Mithun Radhakrishnan | Chris Drome |
| [HIVE-14792](https://issues.apache.org/jira/browse/HIVE-14792) | AvroSerde reads the remote schema-file at least once per mapper, per table reference. |  Major | . | Mithun Radhakrishnan | Aihua Xu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-17514](https://issues.apache.org/jira/browse/HIVE-17514) | Use SHA-256 for cookie signer to improve security |  Major | HiveServer2 | Tao Li | Tao Li |


