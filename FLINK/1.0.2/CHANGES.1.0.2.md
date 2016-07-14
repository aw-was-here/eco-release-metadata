
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

## Release 1.0.2 - 2016-04-22



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-3688](https://issues.apache.org/jira/browse/FLINK-3688) | ClassCastException in StreamRecordSerializer when WindowOperator.trigger() is called and TimeCharacteristic = ProcessingTime |  Critical | . | Konstantin Knauf | Konstantin Knauf |
| [FLINK-3712](https://issues.apache.org/jira/browse/FLINK-3712) | YARN client dynamic properties are not passed correctly to the leader election service on the client |  Major | YARN Client | Robert Metzger | Robert Metzger |
| [FLINK-3730](https://issues.apache.org/jira/browse/FLINK-3730) | Fix RocksDB Local Directory Initialization |  Major | State Backends, Checkpointing, Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3716](https://issues.apache.org/jira/browse/FLINK-3716) | Kafka08ITCase.testFailOnNoBroker() timing out before it has a chance to pass |  Major | . | Todd Lisonbee | Todd Lisonbee |
| [FLINK-3760](https://issues.apache.org/jira/browse/FLINK-3760) | Fix StateDescriptor.readObject |  Critical | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3762](https://issues.apache.org/jira/browse/FLINK-3762) |  Kryo StackOverflowError due to disabled Kryo Reference tracking |  Major | Core | Andrew Palumbo | Andrew Palumbo |
| [FLINK-2544](https://issues.apache.org/jira/browse/FLINK-2544) | Some test cases using PowerMock fail with Java 8u20 |  Minor | . | Till Rohrmann | Soila Kavulya |
| [FLINK-3732](https://issues.apache.org/jira/browse/FLINK-3732) | Potential null deference in ExecutionConfig#equals() |  Minor | . | Ted Yu |  |
| [FLINK-4012](https://issues.apache.org/jira/browse/FLINK-4012) | Docs: Links to "Iterations" are broken (404) |  Trivial | Documentation | Bernd Louis |  |


