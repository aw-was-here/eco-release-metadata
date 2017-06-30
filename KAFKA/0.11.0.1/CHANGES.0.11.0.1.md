
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
# Apache Kafka Changelog

## Release 0.11.0.1 - Unreleased (as of 2017-06-30)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5485](https://issues.apache.org/jira/browse/KAFKA-5485) | Streams should not suspend tasks twice |  Minor | streams | Matthias J. Sax | Matthias J. Sax |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5506](https://issues.apache.org/jira/browse/KAFKA-5506) | bin/kafka-consumer-groups.sh failing to query offsets |  Major | consumer | Yousef Amar | Ismael Juma |
| [KAFKA-5484](https://issues.apache.org/jira/browse/KAFKA-5484) | Refactor kafkatest docker support |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-5544](https://issues.apache.org/jira/browse/KAFKA-5544) | The LastStableOffsetLag metric should be removed when partition is deleted |  Major | . | Dong Lin | Dong Lin |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5490](https://issues.apache.org/jira/browse/KAFKA-5490) | Deletion of tombstones during cleaning should consider idempotent message retention |  Critical | clients, core, producer | Jason Gustafson | Jason Gustafson |
| [KAFKA-5020](https://issues.apache.org/jira/browse/KAFKA-5020) | Update protocol documentation to mention message format v2 |  Critical | clients, core, producer | Ismael Juma | Apurva Mehta |


