
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

## Release 2.4.0 - Unreleased (as of 2017-08-28)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-16164](https://issues.apache.org/jira/browse/HIVE-16164) | Provide mechanism for passing HMS notification ID between transactional and non-transactional listeners. |  Major | Metastore | Sergio Peña | Sergio Peña |
| [HIVE-14389](https://issues.apache.org/jira/browse/HIVE-14389) | Beeline should not output query and prompt to stdout |  Minor | Beeline | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16933](https://issues.apache.org/jira/browse/HIVE-16933) | ORA-00060: deadlock detected while waiting on commit |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-17048](https://issues.apache.org/jira/browse/HIVE-17048) | Pass HiveOperation info to HiveSemanticAnalyzerHook through HiveSemanticAnalyzerHookContext |  Major | Hooks | Aihua Xu | Aihua Xu |
| [HIVE-16759](https://issues.apache.org/jira/browse/HIVE-16759) | Add table type information to HMS log notifications |  Major | Metastore | Sergio Peña | Janaki Lahorani |
| [HIVE-8472](https://issues.apache.org/jira/browse/HIVE-8472) | Add ALTER DATABASE SET LOCATION |  Major | Database/Schema | Jeremy Beard | Mithun Radhakrishnan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
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
| [HIVE-16778](https://issues.apache.org/jira/browse/HIVE-16778) | LLAP IO: better refcount management |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16864](https://issues.apache.org/jira/browse/HIVE-16864) | add validation to stream position search in LLAP IO |  Major | . | Prasanth Jayachandran | Sergey Shelukhin |
| [HIVE-16847](https://issues.apache.org/jira/browse/HIVE-16847) | LLAP queue order issue |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16915](https://issues.apache.org/jira/browse/HIVE-16915) | partition column count is not determined correctly in LLAP IO non-vectorized wrapper |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16875](https://issues.apache.org/jira/browse/HIVE-16875) | Query against view with partitioned child on HoS fails with privilege exception. |  Major | Spark | Yongzhi Chen | Yongzhi Chen |
| [HIVE-16930](https://issues.apache.org/jira/browse/HIVE-16930) | HoS should verify the value of Kerberos principal and keytab file before adding them to spark-submit command parameters |  Major | Spark | Yibing Shi | Yibing Shi |
| [HIVE-16991](https://issues.apache.org/jira/browse/HIVE-16991) | HiveMetaStoreClient needs a 2-arg constructor for backwards compatibility |  Major | . | Andrew Sherman | Andrew Sherman |
| [HIVE-16177](https://issues.apache.org/jira/browse/HIVE-16177) | non Acid to acid conversion doesn't handle \_copy\_N files |  Blocker | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-16732](https://issues.apache.org/jira/browse/HIVE-16732) | Transactional tables should block LOAD DATA |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-17085](https://issues.apache.org/jira/browse/HIVE-17085) | ORC file merge/concatenation should do full schema check |  Major | ORC | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17150](https://issues.apache.org/jira/browse/HIVE-17150) | CREATE INDEX execute HMS out-of-transaction listener calls inside a transaction |  Major | Metastore | Sergio Peña | Sergio Peña |
| [HIVE-16954](https://issues.apache.org/jira/browse/HIVE-16954) | LLAP IO: better debugging |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17184](https://issues.apache.org/jira/browse/HIVE-17184) | Unexpected new line in beeline output when running with -f option |  Minor | Beeline | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-17189](https://issues.apache.org/jira/browse/HIVE-17189) | Fix backwards incompatibility in HiveMetaStoreClient |  Major | Metastore | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-17188](https://issues.apache.org/jira/browse/HIVE-17188) | ObjectStore runs out of memory for large batches of addPartitions(). |  Major | Metastore | Mithun Radhakrishnan | Chris Drome |
| [HIVE-17222](https://issues.apache.org/jira/browse/HIVE-17222) | Llap: Iotrace throws  java.lang.UnsupportedOperationException with IncompleteCb |  Minor | llap | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-17172](https://issues.apache.org/jira/browse/HIVE-17172) | add ordering checks to DiskRangeList |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17274](https://issues.apache.org/jira/browse/HIVE-17274) | RowContainer spills for timestamp column throws exception |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17181](https://issues.apache.org/jira/browse/HIVE-17181) | HCatOutputFormat should expose complete output-schema (including partition-keys) for dynamic-partitioning MR jobs |  Major | HCatalog | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-17169](https://issues.apache.org/jira/browse/HIVE-17169) | Avoid extra call to KeyProvider::getMetadata() |  Major | Shims | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-17218](https://issues.apache.org/jira/browse/HIVE-17218) | Canonical-ize hostnames for Hive metastore, and HS2 servers. |  Major | HiveServer2, Metastore, Security | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-15686](https://issues.apache.org/jira/browse/HIVE-15686) | Partitions on Remote HDFS break encryption-zone checks |  Major | . | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-17233](https://issues.apache.org/jira/browse/HIVE-17233) | Set "mapred.input.dir.recursive" for HCatInputFormat-based jobs. |  Major | HCatalog | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-17351](https://issues.apache.org/jira/browse/HIVE-17351) | use new slider package installation command in run.sh |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17327](https://issues.apache.org/jira/browse/HIVE-17327) | LLAP IO: restrict native file ID usage to default FS to avoid hypothetical collisions when HDFS federation is used |  Major | . | Gopal V | Sergey Shelukhin |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-16415](https://issues.apache.org/jira/browse/HIVE-16415) | Add tests covering single inserts of zero rows |  Major | Tests | Thomas Poepping | Thomas Poepping |
| [HIVE-16454](https://issues.apache.org/jira/browse/HIVE-16454) | Add blobstore tests for inserting empty into dynamic partition/list bucket tables & inserting cross blobstore tables |  Major | Tests | Rentao Wu | Rentao Wu |
| [HIVE-16664](https://issues.apache.org/jira/browse/HIVE-16664) | Add join related Hive blobstore tests |  Major | Tests | Rentao Wu | Rentao Wu |
| [HIVE-16673](https://issues.apache.org/jira/browse/HIVE-16673) | Test for HIVE-16413 |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-17246](https://issues.apache.org/jira/browse/HIVE-17246) | Add having related blobstore query test |  Major | . | Taklon Stephen Wu | Taklon Stephen Wu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-16542](https://issues.apache.org/jira/browse/HIVE-16542) | make merge that targets acid 2.0 table fail-fast |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-16346](https://issues.apache.org/jira/browse/HIVE-16346) | inheritPerms should be conditional based on the target filesystem |  Major | . | Sahil Takiar | Sahil Takiar |
| [HIVE-17131](https://issues.apache.org/jira/browse/HIVE-17131) | Add InterfaceAudience and InterfaceStability annotations for SerDe APIs |  Major | Serializers/Deserializers | Sahil Takiar | Sahil Takiar |


