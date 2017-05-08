
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

## Release 1.2.2 - Unreleased (as of 2017-05-08)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-5969](https://issues.apache.org/jira/browse/FLINK-5969) | Add savepoint backwards compatibility tests from 1.2 to 1.3 |  Blocker | Tests | Aljoscha Krettek | Aljoscha Krettek |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6298](https://issues.apache.org/jira/browse/FLINK-6298) | Local execution is not setting RuntimeContext for RichOutputFormat |  Major | DataStream API | Mateusz Zakarczemny | Wenlong Lyu |
| [FLINK-6292](https://issues.apache.org/jira/browse/FLINK-6292) | Travis: transfer.sh not accepting uploads via http:// anymore |  Major | Tests | Nico Kruber | Nico Kruber |
| [FLINK-6300](https://issues.apache.org/jira/browse/FLINK-6300) | PID1 of docker images does not behave correctly |  Minor | Docker | kathleen sharp | Patrick Lucas |
| [FLINK-6311](https://issues.apache.org/jira/browse/FLINK-6311) | NPE in FlinkKinesisConsumer if source was closed before run |  Major | Kinesis Connector | Tzu-Li (Gordon) Tai | mingleizhang |
| [FLINK-5623](https://issues.apache.org/jira/browse/FLINK-5623) | TempBarrier dam has been closed |  Major | Local Runtime | Greg Hogan | Greg Hogan |
| [FLINK-6176](https://issues.apache.org/jira/browse/FLINK-6176) | Add JARs to CLASSPATH deterministically |  Major | Core | Scott Kidder | Greg Hogan |
| [FLINK-6398](https://issues.apache.org/jira/browse/FLINK-6398) | RowSerializer's duplicate should always return a new instance |  Major | Core | Kurt Young | Kurt Young |
| [FLINK-6059](https://issues.apache.org/jira/browse/FLINK-6059) | Reject DataSet\<Row\> and DataStream\<Row\> without RowTypeInformation |  Major | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-6394](https://issues.apache.org/jira/browse/FLINK-6394) | GroupCombine reuses instances even though object reuse is disabled |  Critical | DataSet API | Jaromir Vanek | Kurt Young |


