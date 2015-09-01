
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

## Release 0.8.2.2 - Unreleased (as of 2015-09-01)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2096](https://issues.apache.org/jira/browse/KAFKA-2096) | Enable keepalive socket option for broker to prevent socket leak |  Critical | network | Allen Wang | Allen Wang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2308](https://issues.apache.org/jira/browse/KAFKA-2308) | New producer + Snappy face un-compression errors after broker restart |  Major | . | Gwen Shapira | Gwen Shapira |
| [KAFKA-2235](https://issues.apache.org/jira/browse/KAFKA-2235) | LogCleaner offset map overflow |  Major | core, log | Ivan Simoneko | Ivan Simoneko |
| [KAFKA-2189](https://issues.apache.org/jira/browse/KAFKA-2189) | Snappy compression of message batches less efficient in 0.8.2.1 |  Blocker | build, compression, log | Olson,Andrew | Ismael Juma |
| [KAFKA-2114](https://issues.apache.org/jira/browse/KAFKA-2114) | Unable to change min.insync.replicas default |  Major | . | Bryan Baugher | Gwen Shapira |
| [KAFKA-1883](https://issues.apache.org/jira/browse/KAFKA-1883) | NullPointerException in RequestSendThread |  Major | core | jaikiran pai | jaikiran pai |
| [KAFKA-1836](https://issues.apache.org/jira/browse/KAFKA-1836) | metadata.fetch.timeout.ms set to zero blocks forever |  Minor | clients | Paul Pearcy |  |
| [KAFKA-1758](https://issues.apache.org/jira/browse/KAFKA-1758) | corrupt recovery file prevents startup |  Major | log | Jason Rosenberg | Manikumar Reddy |
| [KAFKA-1668](https://issues.apache.org/jira/browse/KAFKA-1668) | TopicCommand doesn't warn if --topic argument doesn't match any topics |  Minor | tools | Ryan Berdeen | Manikumar Reddy |
| [KAFKA-1057](https://issues.apache.org/jira/browse/KAFKA-1057) | Trim whitespaces from user specified configs |  Major | config | Neha Narkhede | Manikumar Reddy |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


