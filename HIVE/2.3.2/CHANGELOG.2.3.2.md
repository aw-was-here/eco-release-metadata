
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

## Release 2.3.2 - 2017-11-13



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-21174](https://issues.apache.org/jira/browse/HIVE-21174) | hive.stats.ndv.error parameter documentation issue |  Major | Documentation | Pablo Junge | Pablo Junge |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-15761](https://issues.apache.org/jira/browse/HIVE-15761) | ObjectStore.getNextNotification could return an empty NotificationEventResponse causing TProtocolException |  Major | . | Hao Hao | Sergio Peña |
| [HIVE-16487](https://issues.apache.org/jira/browse/HIVE-16487) | Serious Zookeeper exception is logged when a race condition happens |  Major | Locking | Peter Vary | Peter Vary |
| [HIVE-16213](https://issues.apache.org/jira/browse/HIVE-16213) | ObjectStore can leak Queries when rollbackTransaction throws an exception |  Major | Hive | Alex Kolbasov | Vihang Karajgaonkar |
| [HIVE-16646](https://issues.apache.org/jira/browse/HIVE-16646) | Alias in transform ... as clause shouldn't be case sensitive |  Major | hpl/sql | Yibing Shi | Yibing Shi |
| [HIVE-16930](https://issues.apache.org/jira/browse/HIVE-16930) | HoS should verify the value of Kerberos principal and keytab file before adding them to spark-submit command parameters |  Major | Spark | Yibing Shi | Yibing Shi |
| [HIVE-16991](https://issues.apache.org/jira/browse/HIVE-16991) | HiveMetaStoreClient needs a 2-arg constructor for backwards compatibility |  Major | . | Andrew Sherman | Andrew Sherman |
| [HIVE-17150](https://issues.apache.org/jira/browse/HIVE-17150) | CREATE INDEX execute HMS out-of-transaction listener calls inside a transaction |  Major | Metastore | Sergio Peña | Sergio Peña |
| [HIVE-17184](https://issues.apache.org/jira/browse/HIVE-17184) | Unexpected new line in beeline output when running with -f option |  Minor | Beeline | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-17189](https://issues.apache.org/jira/browse/HIVE-17189) | Fix backwards incompatibility in HiveMetaStoreClient |  Major | Metastore | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-17169](https://issues.apache.org/jira/browse/HIVE-17169) | Avoid extra call to KeyProvider::getMetadata() |  Major | Shims | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-17472](https://issues.apache.org/jira/browse/HIVE-17472) | Drop-partition for multi-level partition fails, if data does not exist. |  Major | Metastore | Mithun Radhakrishnan | Chris Drome |
| [HIVE-17640](https://issues.apache.org/jira/browse/HIVE-17640) | Comparison of date return null if time part is provided in string. |  Major | . | Yongzhi Chen | Yongzhi Chen |
| [HIVE-17831](https://issues.apache.org/jira/browse/HIVE-17831) | HiveSemanticAnalyzerHookContext does not update the HiveOperation after sem.analyze() is called |  Major | Hive | Sergio Peña | Aihua Xu |
| [HIVE-17891](https://issues.apache.org/jira/browse/HIVE-17891) | HIVE-13076 uses create table if not exists for the postgres script |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-17928](https://issues.apache.org/jira/browse/HIVE-17928) | branch-2.3 does not compile due to using incorrect storage-api version |  Major | Hive | Sergio Peña | Sergio Peña |
| [HIVE-17008](https://issues.apache.org/jira/browse/HIVE-17008) | Fix boolean flag switchup in DropTableEvent |  Major | Metastore | Dan Burkert | Dan Burkert |
| [HIVE-17948](https://issues.apache.org/jira/browse/HIVE-17948) | Hive 2.3.2 Release Planning |  Major | . | Sahil Takiar | Sahil Takiar |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-16312](https://issues.apache.org/jira/browse/HIVE-16312) | Flaky test: TestHCatClient.testTransportFailure |  Major | . | Barna Zsombor Klara | Barna Zsombor Klara |


