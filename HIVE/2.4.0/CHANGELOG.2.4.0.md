
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

## Release 2.4.0 - Unreleased (as of 2018-07-13)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-17466](https://issues.apache.org/jira/browse/HIVE-17466) | Metastore API to list unique partition-key-value combinations |  Major | Metastore | Mithun Radhakrishnan | Thiruvel Thirumoolan |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-16164](https://issues.apache.org/jira/browse/HIVE-16164) | Provide mechanism for passing HMS notification ID between transactional and non-transactional listeners. |  Major | Metastore | Sergio Peña | Sergio Peña |
| [HIVE-14389](https://issues.apache.org/jira/browse/HIVE-14389) | Beeline should not output query and prompt to stdout |  Minor | Beeline | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16933](https://issues.apache.org/jira/browse/HIVE-16933) | ORA-00060: deadlock detected while waiting on commit |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-17048](https://issues.apache.org/jira/browse/HIVE-17048) | Pass HiveOperation info to HiveSemanticAnalyzerHook through HiveSemanticAnalyzerHookContext |  Major | Hooks | Aihua Xu | Aihua Xu |
| [HIVE-16759](https://issues.apache.org/jira/browse/HIVE-16759) | Add table type information to HMS log notifications |  Major | Metastore | Sergio Peña | Janaki Lahorani |
| [HIVE-8472](https://issues.apache.org/jira/browse/HIVE-8472) | Add ALTER DATABASE SET LOCATION |  Major | Database/Schema | Jeremy Beard | Mithun Radhakrishnan |
| [HIVE-16143](https://issues.apache.org/jira/browse/HIVE-16143) | Improve msck repair batching |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-17609](https://issues.apache.org/jira/browse/HIVE-17609) | Tool to manipulate delegation tokens |  Major | Metastore, Security | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-17669](https://issues.apache.org/jira/browse/HIVE-17669) | Cache to optimize SearchArgument deserialization |  Major | ORC, Query Processor | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-17747](https://issues.apache.org/jira/browse/HIVE-17747) | HMS DropTableMessage should include the full table object |  Major | HCatalog, Metastore | Dan Burkert | Dan Burkert |
| [HIVE-17805](https://issues.apache.org/jira/browse/HIVE-17805) | SchemaTool validate locations should not return exit 1 |  Minor | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-18654](https://issues.apache.org/jira/browse/HIVE-18654) | Add Hiveserver2 specific HADOOP\_OPTS environment variable |  Minor | HiveServer2 | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-18743](https://issues.apache.org/jira/browse/HIVE-18743) | CREATE TABLE on S3 data can be extremely slow. DO\_NOT\_UPDATE\_STATS workaround is buggy. |  Major | Metastore | Alexander Behm | Alexander Kolbasov |
| [HIVE-17824](https://issues.apache.org/jira/browse/HIVE-17824) | msck repair table should drop the missing partitions from metastore |  Major | . | Vihang Karajgaonkar | Janaki Lahorani |
| [HIVE-19344](https://issues.apache.org/jira/browse/HIVE-19344) | Change default value of msck.repair.batch.size |  Minor | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-19041](https://issues.apache.org/jira/browse/HIVE-19041) | Thrift deserialization of Partition objects should intern fields |  Major | Metastore | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-19942](https://issues.apache.org/jira/browse/HIVE-19942) | Hive Notification: All events for indexes should have table name |  Major | Hive | Bharathkrishna Guruvayoor Murali | Bharathkrishna Guruvayoor Murali |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-16335](https://issues.apache.org/jira/browse/HIVE-16335) | Beeline user HS2 connection file should use /etc/hive/conf instead of /etc/conf/hive |  Major | Beeline | Tim Harsch | Vihang Karajgaonkar |
| [HIVE-16380](https://issues.apache.org/jira/browse/HIVE-16380) | removing global test dependency of jsonassert |  Minor | HiveServer2 | anishek | anishek |
| [HIVE-16307](https://issues.apache.org/jira/browse/HIVE-16307) | add IO memory usage report to LLAP UI |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
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
| [HIVE-16939](https://issues.apache.org/jira/browse/HIVE-16939) | metastore error: 'export: -Dproc\_metastore : not a valid identifier' |  Major | Metastore | Fei Hui | Fei Hui |
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
| [HIVE-17272](https://issues.apache.org/jira/browse/HIVE-17272) | when hive.vectorized.execution.enabled is true, query on empty partitioned table fails with NPE |  Major | Query Planning | Aihua Xu | Aihua Xu |
| [HIVE-17218](https://issues.apache.org/jira/browse/HIVE-17218) | Canonical-ize hostnames for Hive metastore, and HS2 servers. |  Major | HiveServer2, Metastore, Security | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-15686](https://issues.apache.org/jira/browse/HIVE-15686) | Partitions on Remote HDFS break encryption-zone checks |  Major | . | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-17233](https://issues.apache.org/jira/browse/HIVE-17233) | Set "mapred.input.dir.recursive" for HCatInputFormat-based jobs. |  Major | HCatalog | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-17351](https://issues.apache.org/jira/browse/HIVE-17351) | use new slider package installation command in run.sh |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17327](https://issues.apache.org/jira/browse/HIVE-17327) | LLAP IO: restrict native file ID usage to default FS to avoid hypothetical collisions when HDFS federation is used |  Major | . | Gopal V | Sergey Shelukhin |
| [HIVE-17411](https://issues.apache.org/jira/browse/HIVE-17411) | LLAP IO may incorrectly release a refcount in some rare cases |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17403](https://issues.apache.org/jira/browse/HIVE-17403) | Fail concatenation for unmanaged and transactional tables |  Blocker | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17275](https://issues.apache.org/jira/browse/HIVE-17275) | Auto-merge fails on writes of UNION ALL output to ORC file with dynamic partitioning |  Major | Query Processor | Chris Drome | Chris Drome |
| [HIVE-17472](https://issues.apache.org/jira/browse/HIVE-17472) | Drop-partition for multi-level partition fails, if data does not exist. |  Major | Metastore | Mithun Radhakrishnan | Chris Drome |
| [HIVE-17562](https://issues.apache.org/jira/browse/HIVE-17562) | ACID 1.0 + ETL strategy should treat empty compacted files as uncovered deltas |  Major | Transactions | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17621](https://issues.apache.org/jira/browse/HIVE-17621) | Hive-site settings are ignored during HCatInputFormat split-calculation |  Major | HCatalog | Mithun Radhakrishnan | Chris Drome |
| [HIVE-16927](https://issues.apache.org/jira/browse/HIVE-16927) | LLAP: Slider takes down all daemons when some daemons fail repeatedly |  Major | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17489](https://issues.apache.org/jira/browse/HIVE-17489) | Separate client-facing and server-side Kerberos principals, to support HA |  Major | Metastore | Mithun Radhakrishnan | Thiruvel Thirumoolan |
| [HIVE-17665](https://issues.apache.org/jira/browse/HIVE-17665) | Update netty-all to latest 4.0.x.Final |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17664](https://issues.apache.org/jira/browse/HIVE-17664) | Refactor and add new tests |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-17705](https://issues.apache.org/jira/browse/HIVE-17705) | HIVE-17562 is returning incorrect results |  Blocker | Transactions | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17576](https://issues.apache.org/jira/browse/HIVE-17576) | Improve progress-reporting in TezProcessor |  Major | . | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-17731](https://issues.apache.org/jira/browse/HIVE-17731) | add a backward compat option for external users to HIVE-11985 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17702](https://issues.apache.org/jira/browse/HIVE-17702) | incorrect isRepeating handling in decimal reader in ORC |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17659](https://issues.apache.org/jira/browse/HIVE-17659) | get\_token thrift call fails for DBTokenStore in remote HMS mode |  Major | Metastore | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-17774](https://issues.apache.org/jira/browse/HIVE-17774) | compaction may start with 0 splits and fail |  Major | Transactions | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17803](https://issues.apache.org/jira/browse/HIVE-17803) | With Pig multi-query, 2 HCatStorers writing to the same table will trample each other's outputs |  Major | HCatalog | Mithun Radhakrishnan | Chris Drome |
| [HIVE-17640](https://issues.apache.org/jira/browse/HIVE-17640) | Comparison of date return null if time part is provided in string. |  Major | . | Yongzhi Chen | Yongzhi Chen |
| [HIVE-17368](https://issues.apache.org/jira/browse/HIVE-17368) | DBTokenStore fails to connect in Kerberos enabled remote HMS environment |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-17781](https://issues.apache.org/jira/browse/HIVE-17781) | Map MR settings to Tez settings via DeprecatedKeys |  Major | Configuration, Tez | Mithun Radhakrishnan | Chris Drome |
| [HIVE-17831](https://issues.apache.org/jira/browse/HIVE-17831) | HiveSemanticAnalyzerHookContext does not update the HiveOperation after sem.analyze() is called |  Major | Hive | Sergio Peña | Aihua Xu |
| [HIVE-17832](https://issues.apache.org/jira/browse/HIVE-17832) | Allow hive.metastore.disallow.incompatible.col.type.changes to be changed in metastore |  Major | . | Janaki Lahorani | Janaki Lahorani |
| [HIVE-17764](https://issues.apache.org/jira/browse/HIVE-17764) | alter view fails when hive.metastore.disallow.incompatible.col.type.changes set to true |  Major | . | Janaki Lahorani | Janaki Lahorani |
| [HIVE-17765](https://issues.apache.org/jira/browse/HIVE-17765) | expose Hive keywords |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17791](https://issues.apache.org/jira/browse/HIVE-17791) | Temp dirs under the staging directory should honour \`inheritPerms\` |  Major | Authorization | Mithun Radhakrishnan | Chris Drome |
| [HIVE-17891](https://issues.apache.org/jira/browse/HIVE-17891) | HIVE-13076 uses create table if not exists for the postgres script |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-17417](https://issues.apache.org/jira/browse/HIVE-17417) | LazySimple Timestamp is very expensive |  Critical | Serializers/Deserializers | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17942](https://issues.apache.org/jira/browse/HIVE-17942) | HiveAlterHandler not using conf from HMS Handler |  Major | . | Janaki Lahorani | Janaki Lahorani |
| [HIVE-16756](https://issues.apache.org/jira/browse/HIVE-16756) | Vectorization: LongColModuloLongColumn throws "java.lang.ArithmeticException: / by zero" |  Critical | Hive | Matt McCline | Vihang Karajgaonkar |
| [HIVE-16708](https://issues.apache.org/jira/browse/HIVE-16708) | Exception while renewing a Delegation Token |  Major | . | Manikumar | Vihang Karajgaonkar |
| [HIVE-18198](https://issues.apache.org/jira/browse/HIVE-18198) | TablePropertyEnrichmentOptimizer.java is missing the Apache license header |  Major | . | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-17853](https://issues.apache.org/jira/browse/HIVE-17853) | RetryingMetaStoreClient loses UGI impersonation-context when reconnecting after timeout |  Critical | Metastore | Mithun Radhakrishnan | Chris Drome |
| [HIVE-18147](https://issues.apache.org/jira/browse/HIVE-18147) | Tests can fail with java.net.BindException: Address already in use |  Major | . | Janaki Lahorani | Janaki Lahorani |
| [HIVE-11609](https://issues.apache.org/jira/browse/HIVE-11609) | Capability to add a filter to hbase scan via composite key doesn't work |  Major | HBase Handler | Swarnim Kulkarni | Barna Zsombor Klara |
| [HIVE-18422](https://issues.apache.org/jira/browse/HIVE-18422) | Vectorized input format should not be used when vectorized input format is excluded and row.serde is enabled |  Minor | Vectorization | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-15680](https://issues.apache.org/jira/browse/HIVE-15680) | Incorrect results when hive.optimize.index.filter=true and same ORC table is referenced twice in query |  Major | . | Anthony Hsu | Anthony Hsu |
| [HIVE-18472](https://issues.apache.org/jira/browse/HIVE-18472) | Beeline gives log4j warnings |  Major | . | Janaki Lahorani | Janaki Lahorani |
| [HIVE-18671](https://issues.apache.org/jira/browse/HIVE-18671) | lock not released after Hive on Spark query was cancelled |  Major | . | Yongzhi Chen | Yongzhi Chen |
| [HIVE-18710](https://issues.apache.org/jira/browse/HIVE-18710) | extend inheritPerms to ACID in Hive 2.X |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14792](https://issues.apache.org/jira/browse/HIVE-14792) | AvroSerde reads the remote schema-file at least once per mapper, per table reference. |  Major | . | Mithun Radhakrishnan | Aihua Xu |
| [HIVE-18863](https://issues.apache.org/jira/browse/HIVE-18863) | trunc() calls itself trunk() in an error message |  Minor | UDF | Tim Armstrong | Bharathkrishna Guruvayoor Murali |
| [HIVE-18885](https://issues.apache.org/jira/browse/HIVE-18885) | DbNotificationListener has a deadlock between Java and DB locks (2.x line) |  Major | Hive, Metastore | Alexander Kolbasov | Vihang Karajgaonkar |
| [HIVE-19047](https://issues.apache.org/jira/browse/HIVE-19047) | Only the first init file is interpreted |  Major | Beeline | Zoltan Haindrich | Bharathkrishna Guruvayoor Murali |
| [HIVE-18877](https://issues.apache.org/jira/browse/HIVE-18877) | HiveSchemaTool.validateSchemaTables() should wrap a SQLException when rethrowing |  Major | . | Andrew Sherman | Andrew Sherman |
| [HIVE-19050](https://issues.apache.org/jira/browse/HIVE-19050) | DBNotificationListener does not catch exceptions in the cleaner thread |  Minor | Metastore, Standalone Metastore | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-18783](https://issues.apache.org/jira/browse/HIVE-18783) | ALTER TABLE post-commit listener does not include the transactional listener responses |  Major | . | Na Li | Sergio Peña |
| [HIVE-19388](https://issues.apache.org/jira/browse/HIVE-19388) | ClassCastException during VectorMapJoinCommonOperator initialization |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-19642](https://issues.apache.org/jira/browse/HIVE-19642) | add cache dump when LLAP cache is full on branch-2 (and fix retry issues) |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-19527](https://issues.apache.org/jira/browse/HIVE-19527) | Preparing for 2.4 development |  Major | Hive | Sergio Peña | Sergio Peña |
| [HIVE-19666](https://issues.apache.org/jira/browse/HIVE-19666) | SQL standard auth for create fn may make an impossible privilege check (branch-2) |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-19704](https://issues.apache.org/jira/browse/HIVE-19704) | LLAP IO retries on branch-2 should be stoppable |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-19726](https://issues.apache.org/jira/browse/HIVE-19726) | ORC date PPD is broken |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-19700](https://issues.apache.org/jira/browse/HIVE-19700) | Workaround for JLine issue with UnsupportedTerminal |  Major | . | Naveen Gangam | Naveen Gangam |
| [HIVE-19605](https://issues.apache.org/jira/browse/HIVE-19605) | TAB\_COL\_STATS table has no index on db/table name |  Major | Metastore | Todd Lipcon | Vihang Karajgaonkar |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-16415](https://issues.apache.org/jira/browse/HIVE-16415) | Add tests covering single inserts of zero rows |  Major | Tests | Thomas Poepping | Thomas Poepping |
| [HIVE-16454](https://issues.apache.org/jira/browse/HIVE-16454) | Add blobstore tests for inserting empty into dynamic partition/list bucket tables & inserting cross blobstore tables |  Major | Tests | Rentao Wu | Rentao Wu |
| [HIVE-16664](https://issues.apache.org/jira/browse/HIVE-16664) | Add join related Hive blobstore tests |  Major | Tests | Rentao Wu | Rentao Wu |
| [HIVE-16673](https://issues.apache.org/jira/browse/HIVE-16673) | Test for HIVE-16413 |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-17246](https://issues.apache.org/jira/browse/HIVE-17246) | Add having related blobstore query test |  Major | . | Taklon Stephen Wu | Taklon Stephen Wu |
| [HIVE-17430](https://issues.apache.org/jira/browse/HIVE-17430) | Add LOAD DATA test for blobstores |  Major | Tests | Yuzhou Sun | Yuzhou Sun |
| [HIVE-17636](https://issues.apache.org/jira/browse/HIVE-17636) | Add multiple\_agg.q test for blobstores |  Major | Tests | Ran Gu | Ran Gu |
| [HIVE-17729](https://issues.apache.org/jira/browse/HIVE-17729) | Add Database & Explain related blobstore tests |  Major | Tests | Rentao Wu | Rentao Wu |
| [HIVE-17820](https://issues.apache.org/jira/browse/HIVE-17820) | Add buckets.q test for blobstores |  Major | Tests | Ran Gu | Ran Gu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-16542](https://issues.apache.org/jira/browse/HIVE-16542) | make merge that targets acid 2.0 table fail-fast |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-16346](https://issues.apache.org/jira/browse/HIVE-16346) | inheritPerms should be conditional based on the target filesystem |  Major | . | Sahil Takiar | Sahil Takiar |
| [HIVE-16765](https://issues.apache.org/jira/browse/HIVE-16765) | ParquetFileReader should be closed to avoid resource leak |  Critical | . | Colin Ma | Colin Ma |
| [HIVE-16672](https://issues.apache.org/jira/browse/HIVE-16672) | Parquet vectorization doesn't work for tables with partition info |  Critical | . | Colin Ma | Colin Ma |
| [HIVE-17131](https://issues.apache.org/jira/browse/HIVE-17131) | Add InterfaceAudience and InterfaceStability annotations for SerDe APIs |  Major | Serializers/Deserializers | Sahil Takiar | Sahil Takiar |
| [HIVE-17381](https://issues.apache.org/jira/browse/HIVE-17381) | When we enable Parquet Writer Version V2, hive throws an exception: Unsupported encoding: DELTA\_BYTE\_ARRAY. |  Major | . | Ke Jia | Colin Ma |
| [HIVE-17514](https://issues.apache.org/jira/browse/HIVE-17514) | Use SHA-256 for cookie signer to improve security |  Major | HiveServer2 | Tao Li | Tao Li |
| [HIVE-17534](https://issues.apache.org/jira/browse/HIVE-17534) | Add a config to turn off parquet vectorization |  Minor | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-17696](https://issues.apache.org/jira/browse/HIVE-17696) | Vectorized reader does not seem to be pushing down projection columns in certain code paths |  Major | . | Vihang Karajgaonkar | Ferdinand Xu |
| [HIVE-17945](https://issues.apache.org/jira/browse/HIVE-17945) | Support column projection for index access when using Parquet Vectorization |  Major | . | Ferdinand Xu | Ferdinand Xu |
| [HIVE-17874](https://issues.apache.org/jira/browse/HIVE-17874) | Parquet vectorization fails on tables with complex columns when there are no projected columns |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-17961](https://issues.apache.org/jira/browse/HIVE-17961) | NPE during initialization of VectorizedParquetRecordReader when input split is null |  Major | Hive | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-18323](https://issues.apache.org/jira/browse/HIVE-18323) | Vectorization: add the support of timestamp in VectorizedPrimitiveColumnReader for parquet |  Major | Vectorization | Aihua Xu | Vihang Karajgaonkar |
| [HIVE-18526](https://issues.apache.org/jira/browse/HIVE-18526) | Backport HIVE-16886 to Hive 2 |  Major | Hive | Alexander Kolbasov | Alexander Kolbasov |
| [HIVE-19702](https://issues.apache.org/jira/browse/HIVE-19702) | Backport ALTER TABLE SET OWNER patches to branch-2 |  Major | Hive | Sergio Peña | Sergio Peña |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-19736](https://issues.apache.org/jira/browse/HIVE-19736) | Backport part of HIVE-18031: Support alter database events to branch-2 |  Major | Hive | Sergio Peña | Sergio Peña |


