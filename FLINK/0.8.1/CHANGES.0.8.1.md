
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
# Apache Flink Changelog

## Release 0.8.1 - 2015-02-19

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-1389](https://issues.apache.org/jira/browse/FLINK-1389) | Allow setting custom file extensions for files created by the FileOutputFormat |  Minor | . | Robert Metzger | Robert Metzger |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-1510](https://issues.apache.org/jira/browse/FLINK-1510) | Make AvroInputFormat splittable |  Major | . | Robert Metzger | Robert Metzger |
| [FLINK-1464](https://issues.apache.org/jira/browse/FLINK-1464) | Added ResultTypeQueryable interface to TypeSerializerInputFormat. |  Minor | Distributed Runtime, Optimizer | Alexander Alexandrov | Alexander Alexandrov |
| [FLINK-1433](https://issues.apache.org/jira/browse/FLINK-1433) | Add HADOOP\_CLASSPATH to start scripts |  Major | . | Robert Metzger | Robert Metzger |
| [FLINK-1420](https://issues.apache.org/jira/browse/FLINK-1420) | Small cleanup on code after 0.8 release |  Minor | . | Henry Saputra | Henry Saputra |
| [FLINK-1112](https://issues.apache.org/jira/browse/FLINK-1112) | Add GroupSorting with KeySelectors |  Major | Java API, Scala API | Fabian Hueske | Mingliang Qi |
| [FLINK-67](https://issues.apache.org/jira/browse/FLINK-67) | Add HBase Tests |  Minor | . | GitHub Import | Flavio Pompermaier |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-1531](https://issues.apache.org/jira/browse/FLINK-1531) | Custom Kryo Serializer fails in itertation scenario |  Minor | Iterations | Johannes |  |
| [FLINK-1492](https://issues.apache.org/jira/browse/FLINK-1492) | Exceptions on shutdown concerning BLOB store cleanup |  Major | JobManager, TaskManager | Stephan Ewen | Ufuk Celebi |
| [FLINK-1479](https://issues.apache.org/jira/browse/FLINK-1479) | The spawned threads in the sorter have no context class loader |  Major | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1463](https://issues.apache.org/jira/browse/FLINK-1463) | RuntimeStatefulSerializerFactory declares ClassLoader as transient but later tries to use it |  Blocker | . | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-1446](https://issues.apache.org/jira/browse/FLINK-1446) | Make KryoSerializer.createInstance() return new instances instead of null |  Major | . | Robert Metzger | Robert Metzger |
| [FLINK-1437](https://issues.apache.org/jira/browse/FLINK-1437) | Bug in PojoSerializer's copy() method |  Major | Java API | Timo Walther | Timo Walther |
| [FLINK-1419](https://issues.apache.org/jira/browse/FLINK-1419) | DistributedCache doesn't preserver files for subsequent operations |  Major | . | Chesnay Schepler | Chesnay Schepler |
| [FLINK-1405](https://issues.apache.org/jira/browse/FLINK-1405) | Startup fails under Windows |  Major | Distributed Runtime | Thomas Jejkal | Fabian Hueske |
| [FLINK-1396](https://issues.apache.org/jira/browse/FLINK-1396) | Add hadoop input formats directly to the user API. |  Minor | . | Robert Metzger | Aljoscha Krettek |
| [FLINK-1376](https://issues.apache.org/jira/browse/FLINK-1376) | SubSlots are not properly released in case that a TaskManager fatally fails, leaving the system in a corrupted state |  Major | . | Till Rohrmann | Till Rohrmann |
| [FLINK-1289](https://issues.apache.org/jira/browse/FLINK-1289) | Broken links to k-means examples in website |  Trivial | Project Website | Vasia Kalavri | Kostas Tzoumas |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-1392](https://issues.apache.org/jira/browse/FLINK-1392) | Serializing Protobuf - issue 1 |  Minor | . | Felix Neutatz | Robert Metzger |
| [FLINK-1391](https://issues.apache.org/jira/browse/FLINK-1391) | Kryo fails to properly serialize avro collection types |  Major | . | Robert Metzger | Robert Metzger |
| [FLINK-1303](https://issues.apache.org/jira/browse/FLINK-1303) | HadoopInputFormat does not work with Scala API |  Major | Scala API | Aljoscha Krettek | Aljoscha Krettek |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-1271](https://issues.apache.org/jira/browse/FLINK-1271) | Extend HadoopOutputFormat and HadoopInputFormat to handle Void.class |  Minor | Hadoop Compatibility | Felix Neutatz | Felix Neutatz |


