
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
# Changelog

## Release 0.13.1 - 2014-06-06

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-7165](https://issues.apache.org/jira/browse/HIVE-7165) | Fix hive-default.xml.template errors & omissions |  Major | Documentation | Lefty Leverenz | Lefty Leverenz |
| [HIVE-7130](https://issues.apache.org/jira/browse/HIVE-7130) | schematool is broken for minor version upgrades (eg 0.13.x) |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-7116](https://issues.apache.org/jira/browse/HIVE-7116) | HDFS FileSystem object cache causes permission issues in creating tmp directories |  Major | HiveServer2, Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-7067](https://issues.apache.org/jira/browse/HIVE-7067) | Min() and Max() on Timestamp and Date columns for ORC returns wrong results |  Critical | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7001](https://issues.apache.org/jira/browse/HIVE-7001) | fs.permissions.umask-mode is getting unset when Session is started |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-6996](https://issues.apache.org/jira/browse/HIVE-6996) | FS based stats broken with indexed tables |  Major | Indexing, Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6985](https://issues.apache.org/jira/browse/HIVE-6985) | sql std auth - privileges grants to public role not being honored |  Critical | Authorization, SQLStandardAuthorization | Thejas M Nair | Thejas M Nair |
| [HIVE-6961](https://issues.apache.org/jira/browse/HIVE-6961) | Drop partitions treats partition columns as strings |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6957](https://issues.apache.org/jira/browse/HIVE-6957) | SQL authorization does not work with HS2 binary mode and Kerberos auth |  Major | Authorization, HiveServer2 | Thejas M Nair | Thejas M Nair |
| [HIVE-6955](https://issues.apache.org/jira/browse/HIVE-6955) | ExprNodeColDesc isSame doesn't account for tabAlias: this affects trait Propagation in Joins |  Major | . | Harish Butani | Harish Butani |
| [HIVE-6952](https://issues.apache.org/jira/browse/HIVE-6952) | Hive 0.13 HiveOutputFormat breaks backwards compatibility |  Blocker | File Formats, Serializers/Deserializers | Costin Leau | Ashutosh Chauhan |
| [HIVE-6945](https://issues.apache.org/jira/browse/HIVE-6945) | issues with dropping partitions on Oracle |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6921](https://issues.apache.org/jira/browse/HIVE-6921) | index creation fails with sql std auth turned on |  Major | Authorization, Indexing, Security | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6919](https://issues.apache.org/jira/browse/HIVE-6919) | hive sql std auth select query fails on partitioned tables |  Critical | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-6898](https://issues.apache.org/jira/browse/HIVE-6898) | Functions in hive are failing with java.lang.ClassNotFoundException on Tez |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-6883](https://issues.apache.org/jira/browse/HIVE-6883) | Dynamic partitioning optimization does not honor sort order or order by |  Critical | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6877](https://issues.apache.org/jira/browse/HIVE-6877) | TestOrcRawRecordMerger is deleting test.tmp.dir |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-6862](https://issues.apache.org/jira/browse/HIVE-6862) | add DB schema DDL and upgrade 12to13 scripts for MS SQL Server |  Major | Metastore | Eugene Koifman | Eugene Koifman |
| [HIVE-6828](https://issues.apache.org/jira/browse/HIVE-6828) | Hive tez bucket map join conversion interferes with map join conversion |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-6826](https://issues.apache.org/jira/browse/HIVE-6826) | Hive-tez has issues when different partitions work off of different input types |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-6783](https://issues.apache.org/jira/browse/HIVE-6783) | Incompatible schema for maps between parquet-hive and parquet-pig |  Major | File Formats | Tongjie Chen |  |
| [HIVE-4576](https://issues.apache.org/jira/browse/HIVE-4576) | templeton.hive.properties does not allow values with commas |  Major | WebHCat | Vitaliy Fuks | Eugene Koifman |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


