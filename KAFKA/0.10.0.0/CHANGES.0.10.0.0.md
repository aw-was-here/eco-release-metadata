
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

## Release 0.10.0.0 - Unreleased (as of 2015-12-16)

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
| [KAFKA-1483](https://issues.apache.org/jira/browse/KAFKA-1483) | Split Brain about Leader Partitions |  Major | . | Guozhang Wang | Sriharsha Chintalapani |
| [KAFKA-1054](https://issues.apache.org/jira/browse/KAFKA-1054) | Eliminate Compilation Warnings for 0.8 Final Release |  Major | . | Guozhang Wang | Ismael Juma |
| [KAFKA-855](https://issues.apache.org/jira/browse/KAFKA-855) | Ant+Ivy build for Kafka |  Major | . | David Arthur |  |
| [KAFKA-322](https://issues.apache.org/jira/browse/KAFKA-322) | Remove one-off Send objects |  Minor | core | Jay Kreps | Jay Kreps |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2294](https://issues.apache.org/jira/browse/KAFKA-2294) | javadoc compile error due to illegal \<p/\> , build failing (jdk 8) |  Major | . | Jeremy Fields | Jeff Maxwell |
| [KAFKA-1863](https://issues.apache.org/jira/browse/KAFKA-1863) | Exception categories / hierarchy in clients |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-1735](https://issues.apache.org/jira/browse/KAFKA-1735) | MemoryRecords.Iterator needs to handle partial reads from compressed stream |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-1720](https://issues.apache.org/jira/browse/KAFKA-1720) | [Renaming / Comments] Delayed Operations |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-1536](https://issues.apache.org/jira/browse/KAFKA-1536) | Change the status of the JIRA to "Patch Available" in the kafka-review-tool |  Major | . | Guozhang Wang | Manikumar Reddy |
| [KAFKA-1445](https://issues.apache.org/jira/browse/KAFKA-1445) | New Producer should send all partitions that have non-empty batches when on of them is ready |  Major | . | Guozhang Wang |  |
| [KAFKA-1377](https://issues.apache.org/jira/browse/KAFKA-1377) | transient unit test failure in LogOffsetTest |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1320](https://issues.apache.org/jira/browse/KAFKA-1320) | Change compression.codec to compression.type in new producer configs of system tests |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-1305](https://issues.apache.org/jira/browse/KAFKA-1305) | Controller can hang on controlled shutdown with auto leader balance enabled |  Blocker | . | Joel Koshy | Sriharsha Chintalapani |
| [KAFKA-1258](https://issues.apache.org/jira/browse/KAFKA-1258) | Delete temporary data directory after unit test finishes |  Major | . | Guozhang Wang | Manikumar Reddy |
| [KAFKA-1147](https://issues.apache.org/jira/browse/KAFKA-1147) | Consumer socket timeout should be greater than fetch max wait |  Major | . | Joel Koshy | Guozhang Wang |
| [KAFKA-1072](https://issues.apache.org/jira/browse/KAFKA-1072) | Allow mulitple topics selected with a TopicFilter to be balanced among consumers |  Major | . | Jason Rosenberg |  |
| [KAFKA-1067](https://issues.apache.org/jira/browse/KAFKA-1067) | the default partitioner should be randomizing messages and a new partition for the meta refresh requirements created |  Major | . | Joe Stein |  |
| [KAFKA-1032](https://issues.apache.org/jira/browse/KAFKA-1032) | Messages sent to the old leader will be lost on broker GC resulted failure |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-803](https://issues.apache.org/jira/browse/KAFKA-803) | Offset returned to producer is not consistent |  Major | . | Jun Rao |  |
| [KAFKA-771](https://issues.apache.org/jira/browse/KAFKA-771) | NPE in handleOffsetCommitRequest |  Major | core | David Arthur | David Arthur |
| [KAFKA-665](https://issues.apache.org/jira/browse/KAFKA-665) | Outgoing responses delayed on a busy Kafka broker |  Critical | . | Neha Narkhede |  |
| [KAFKA-496](https://issues.apache.org/jira/browse/KAFKA-496) | high level producer send should return a response |  Blocker | core | Jun Rao | Jay Kreps |
| [KAFKA-409](https://issues.apache.org/jira/browse/KAFKA-409) | Refactor DefaultEventHandler |  Major | . | Neha Narkhede | Jay Kreps |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2239](https://issues.apache.org/jira/browse/KAFKA-2239) | Allow coordinator to aggresively remove group when it is no longer owning the group |  Major | consumer | Guozhang Wang | Guozhang Wang |
| [KAFKA-1281](https://issues.apache.org/jira/browse/KAFKA-1281) | add the new producer to existing tools |  Major | producer | Jun Rao | Neha Narkhede |
| [KAFKA-1237](https://issues.apache.org/jira/browse/KAFKA-1237) | Add mirror maker using 08 consumer and 09 producer |  Major | tools | Neha Narkhede | Neha Narkhede |
| [KAFKA-1236](https://issues.apache.org/jira/browse/KAFKA-1236) | Change producer performance tool to optionally use the new producer |  Critical | producer | Neha Narkhede | Jay Kreps |
| [KAFKA-1233](https://issues.apache.org/jira/browse/KAFKA-1233) | Integration test for the new producer |  Major | . | Guozhang Wang | Guozhang Wang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


