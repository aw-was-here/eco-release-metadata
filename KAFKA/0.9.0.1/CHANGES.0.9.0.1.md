
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

## Release 0.9.0.1 - Unreleased (as of 2015-12-04)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2882](https://issues.apache.org/jira/browse/KAFKA-2882) | Add constructor cache for Snappy and LZ4 Output/Input stream in Compressor.java |  Major | consumer, producer | Maksim Logvinenko | Maksim Logvinenko |
| [KAFKA-2761](https://issues.apache.org/jira/browse/KAFKA-2761) | Enable passing regex via whitelist for new-consumer in ConsoleConsumer |  Major | tools | Ashish K Singh | Ashish K Singh |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2942](https://issues.apache.org/jira/browse/KAFKA-2942) | Inadvertent auto-commit when pre-fetching can cause message loss |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-2913](https://issues.apache.org/jira/browse/KAFKA-2913) | GroupMetadataManager unloads all groups in removeGroupsForPartitions |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-2899](https://issues.apache.org/jira/browse/KAFKA-2899) | Should log unexpected exceptions thrown when reading from local log |  Major | . | Ben Stopford | Ben Stopford |
| [KAFKA-2880](https://issues.apache.org/jira/browse/KAFKA-2880) | Fetcher.getTopicMetadata NullPointerException when broker cannot be reached |  Major | clients | Ewen Cheslack-Postava | Jason Gustafson |
| [KAFKA-2877](https://issues.apache.org/jira/browse/KAFKA-2877) | Messages sometimes not delivered by new consumer after Kafka restart |  Critical | consumer | Rajini Sivaram | Jason Gustafson |
| [KAFKA-2799](https://issues.apache.org/jira/browse/KAFKA-2799) | WakupException thrown in the followup poll() could lead to data loss |  Blocker | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-2752](https://issues.apache.org/jira/browse/KAFKA-2752) | Add clean bounce system test for distributed Copycat |  Major | copycat | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-1862](https://issues.apache.org/jira/browse/KAFKA-1862) | Pass in the Time object into OffsetManager |  Major | . | Guozhang Wang | Aditya Auradkar |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


