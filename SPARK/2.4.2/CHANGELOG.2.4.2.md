
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
# Apache Spark Changelog

## Release 2.4.2 - 2019-04-23



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-27346](https://issues.apache.org/jira/browse/SPARK-27346) | Loosen the newline assert condition on 'examples' field in ExpressionInfo |  Trivial | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-27358](https://issues.apache.org/jira/browse/SPARK-27358) | Update jquery to 1.12.x to pick up security fixes |  Major | Web UI | Sean R. Owen | Sean R. Owen |
| [SPARK-27479](https://issues.apache.org/jira/browse/SPARK-27479) | Hide API docs for "org.apache.spark.util.kvstore" |  Major | Build | Xiao Li | Xiao Li |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-26961](https://issues.apache.org/jira/browse/SPARK-26961) | Found Java-level deadlock in Spark Driver |  Major | Spark Submit | Rong Jialei | Ajith S |
| [SPARK-27275](https://issues.apache.org/jira/browse/SPARK-27275) | Potential corruption in EncryptedMessage.transferTo |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-27244](https://issues.apache.org/jira/browse/SPARK-27244) | Redact Passwords While Using Option logConf=true |  Minor | Spark Core | Ninad | Ninad |
| [SPARK-27267](https://issues.apache.org/jira/browse/SPARK-27267) | Snappy 1.1.7.1 fails when decompressing empty serialized data |  Minor | Block Manager, Spark Core | Max  Xie | Max  Xie |
| [SPARK-27301](https://issues.apache.org/jira/browse/SPARK-27301) | DStreamCheckpointData failed to clean up because it's fileSystem cached |  Major | DStreams, Spark Core | Kent Yao | Kent Yao |
| [SPARK-26998](https://issues.apache.org/jira/browse/SPARK-26998) | spark.ssl.keyStorePassword in plaintext on 'ps -ef' output of executor processes in Standalone mode |  Major | Scheduler, Security, Spark Core | t oo | Gabor Somogyi |
| [SPARK-27216](https://issues.apache.org/jira/browse/SPARK-27216) | Upgrade RoaringBitmap to 0.7.45 to fix Kryo unsafe ser/dser issue |  Major | Spark Core | Lantao Jin | Lantao Jin |
| [SPARK-27338](https://issues.apache.org/jira/browse/SPARK-27338) | Deadlock between TaskMemoryManager and UnsafeExternalSorter$SpillableIterator |  Major | Spark Core | Venkata krishnan Sowrirajan | Venkata krishnan Sowrirajan |
| [SPARK-27390](https://issues.apache.org/jira/browse/SPARK-27390) | Fix package name mismatch |  Trivial | Spark Core, SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-27394](https://issues.apache.org/jira/browse/SPARK-27394) | The staleness of UI may last minutes or hours when no tasks start or finish |  Major | Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-27406](https://issues.apache.org/jira/browse/SPARK-27406) | UnsafeArrayData serialization breaks when two machines have different Oops size |  Major | SQL | peng bo | peng bo |
| [SPARK-27419](https://issues.apache.org/jira/browse/SPARK-27419) | When setting spark.executor.heartbeatInterval to a value less than 1 seconds, it will always fail |  Major | Spark Core | Shixiong Zhu | Shixiong Zhu |
| [SPARK-27403](https://issues.apache.org/jira/browse/SPARK-27403) | Fix \`updateTableStats\` to update table stats always with new stats or None |  Major | SQL | Sujith Chacko | Sujith Chacko |
| [SPARK-27453](https://issues.apache.org/jira/browse/SPARK-27453) | DataFrameWriter.partitionBy is Silently Dropped by DSV1 |  Critical | SQL | Michael Armbrust | Liwen Sun |
| [SPARK-27351](https://issues.apache.org/jira/browse/SPARK-27351) | Wrong outputRows estimation after AggregateEstimation with only null value column |  Major | SQL | peng bo | peng bo |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-27382](https://issues.apache.org/jira/browse/SPARK-27382) | Update Spark 2.4.x testing in HiveExternalCatalogVersionsSuite |  Minor | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |


