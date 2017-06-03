
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

## Release 2.4.0 - Unreleased (as of 2017-06-03)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-16164](https://issues.apache.org/jira/browse/HIVE-16164) | Provide mechanism for passing HMS notification ID between transactional and non-transactional listeners. |  Major | Metastore | Sergio Peña | Sergio Peña |
| [HIVE-14389](https://issues.apache.org/jira/browse/HIVE-14389) | Beeline should not output query and prompt to stdout |  Minor | Beeline | Vihang Karajgaonkar | Vihang Karajgaonkar |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-12767](https://issues.apache.org/jira/browse/HIVE-12767) | Implement table property to address Parquet int96 timestamp bug |  Major | . | Sergio Peña | Barna Zsombor Klara |
| [HIVE-16088](https://issues.apache.org/jira/browse/HIVE-16088) | Fix hive conf property name introduced in HIVE-12767 |  Trivial | . | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-16231](https://issues.apache.org/jira/browse/HIVE-16231) | Parquet timestamp may be stored differently since HIVE-12767 |  Critical | . | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-16335](https://issues.apache.org/jira/browse/HIVE-16335) | Beeline user HS2 connection file should use /etc/hive/conf instead of /etc/conf/hive |  Major | Beeline | Tim Harsch | Vihang Karajgaonkar |
| [HIVE-16380](https://issues.apache.org/jira/browse/HIVE-16380) | removing global test dependency of jsonassert |  Minor | HiveServer2 | anishek | anishek |
| [HIVE-16459](https://issues.apache.org/jira/browse/HIVE-16459) | Forward channelInactive to RpcDispatcher |  Major | Spark | Rui Li | Rui Li |
| [HIVE-16287](https://issues.apache.org/jira/browse/HIVE-16287) | Alter table partition rename with location - moves partition back to hive warehouse |  Minor | Metastore | Ying Chen | Vihang Karajgaonkar |
| [HIVE-15761](https://issues.apache.org/jira/browse/HIVE-15761) | ObjectStore.getNextNotification could return an empty NotificationEventResponse causing TProtocolException |  Major | . | Hao Hao | Sergio Peña |
| [HIVE-16321](https://issues.apache.org/jira/browse/HIVE-16321) | Possible deadlock in metastore with Acid enabled |  Blocker | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-16523](https://issues.apache.org/jira/browse/HIVE-16523) | VectorHashKeyWrapper hash code for strings is not so good |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16487](https://issues.apache.org/jira/browse/HIVE-16487) | Serious Zookeeper exception is logged when a race condition happens |  Major | Locking | Peter Vary | Peter Vary |
| [HIVE-16147](https://issues.apache.org/jira/browse/HIVE-16147) | Rename a partitioned table should not drop its partition columns stats |  Major | Statistics | Chaoyu Tang | Chaoyu Tang |
| [HIVE-16399](https://issues.apache.org/jira/browse/HIVE-16399) | create an index for tc\_txnid in TXN\_COMPONENTS |  Major | Transactions | Eugene Koifman | Wei Zheng |
| [HIVE-16465](https://issues.apache.org/jira/browse/HIVE-16465) | NullPointer Exception when enable vectorization for Parquet file format |  Critical | . | Colin Ma | Colin Ma |
| [HIVE-16213](https://issues.apache.org/jira/browse/HIVE-16213) | ObjectStore can leak Queries when rollbackTransaction throws an exception |  Major | Hive | Alexander Kolbasov | Vihang Karajgaonkar |
| [HIVE-16581](https://issues.apache.org/jira/browse/HIVE-16581) |  a bug in HIVE-16523 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16598](https://issues.apache.org/jira/browse/HIVE-16598) | LlapServiceDriver - create directories and warn of errors |  Major | . | Kavan Suresh | Sergey Shelukhin |
| [HIVE-11064](https://issues.apache.org/jira/browse/HIVE-11064) | ALTER TABLE CASCADE ERROR unbalanced calls to openTransaction/commitTransaction |  Major | Metastore | fatkun | Chaoyu Tang |
| [HIVE-16469](https://issues.apache.org/jira/browse/HIVE-16469) | Parquet timestamp table property is not always taken into account |  Major | . | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-16572](https://issues.apache.org/jira/browse/HIVE-16572) | Rename a partition should not drop its column stats |  Major | Statistics | Chaoyu Tang | Chaoyu Tang |
| [HIVE-16646](https://issues.apache.org/jira/browse/HIVE-16646) | Alias in transform ... as clause shouldn't be case sensitive |  Major | hpl/sql | Yibing Shi | Yibing Shi |
| [HIVE-16324](https://issues.apache.org/jira/browse/HIVE-16324) | Truncate table should not work when EXTERNAL property of table is true |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16413](https://issues.apache.org/jira/browse/HIVE-16413) | Create table as select does not check ownership of the location |  Major | Authorization, SQLStandardAuthorization | Niklaus Xiao | Niklaus Xiao |
| [HIVE-16539](https://issues.apache.org/jira/browse/HIVE-16539) | Add PTF tests for blobstores |  Major | . | Juan Rodríguez Hortalá | Juan Rodríguez Hortalá |
| [HIVE-16724](https://issues.apache.org/jira/browse/HIVE-16724) | increase session timeout for LLAP ZK token manager |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16671](https://issues.apache.org/jira/browse/HIVE-16671) | LLAP IO: BufferUnderflowException may happen in very rare(?) cases due to ORC end-of-CB estimation |  Major | . | Ravi Mutyala | Sergey Shelukhin |
| [HIVE-16737](https://issues.apache.org/jira/browse/HIVE-16737) | LLAP: Shuffle handler TCP listen queue overflows |  Major | llap | Gopal V | Prasanth Jayachandran |
| [HIVE-16755](https://issues.apache.org/jira/browse/HIVE-16755) | LLAP IO: incorrect assert may trigger in tests |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16803](https://issues.apache.org/jira/browse/HIVE-16803) | Alter table change column comment should not try to get column stats for update |  Minor | Statistics | Chaoyu Tang | Chaoyu Tang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-16415](https://issues.apache.org/jira/browse/HIVE-16415) | Add tests covering single inserts of zero rows |  Major | Tests | Thomas Poepping | Thomas Poepping |
| [HIVE-16454](https://issues.apache.org/jira/browse/HIVE-16454) | Add blobstore tests for inserting empty into dynamic partition/list bucket tables & inserting cross blobstore tables |  Major | Tests | Rentao Wu | Rentao Wu |
| [HIVE-16664](https://issues.apache.org/jira/browse/HIVE-16664) | Add join related Hive blobstore tests |  Major | Tests | Rentao Wu | Rentao Wu |
| [HIVE-16673](https://issues.apache.org/jira/browse/HIVE-16673) | Test for HIVE-16413 |  Major | . | Zoltan Haindrich | Zoltan Haindrich |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-16542](https://issues.apache.org/jira/browse/HIVE-16542) | make merge that targets acid 2.0 table fail-fast |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-16346](https://issues.apache.org/jira/browse/HIVE-16346) | inheritPerms should be conditional based on the target filesystem |  Major | . | Sahil Takiar | Sahil Takiar |


