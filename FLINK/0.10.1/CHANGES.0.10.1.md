
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

## Release 0.10.1 - 2015-11-27

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
| [FLINK-2966](https://issues.apache.org/jira/browse/FLINK-2966) | Improve the way job duration is reported on web frontend. |  Minor | Webfrontend | Sachin Goel | Sachin Goel |
| [FLINK-3040](https://issues.apache.org/jira/browse/FLINK-3040) | Add docs describing how to configure State Backends |  Major | Documentation | Stephan Ewen | Stephan Ewen |
| [FLINK-3041](https://issues.apache.org/jira/browse/FLINK-3041) | Twitter Streaming Description section of Streaming Programming guide refers to an incorrect example 'TwitterLocal' |  Minor | Documentation, Examples, Streaming | Suneel Marthi | Suneel Marthi |
| [FLINK-3028](https://issues.apache.org/jira/browse/FLINK-3028) | Cannot cancel restarting job via web frontend |  Major | Webfrontend | Ufuk Celebi |  |
| [FLINK-2974](https://issues.apache.org/jira/browse/FLINK-2974) | Add periodic offset commit to Kafka Consumer if checkpointing is disabled |  Major | Kafka Connector | Robert Metzger | Robert Metzger |
| [FLINK-3176](https://issues.apache.org/jira/browse/FLINK-3176) | Window Apply Website Example |  Trivial | website | radu |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-2938](https://issues.apache.org/jira/browse/FLINK-2938) | Streaming docs not in sync with latest state changes |  Minor | Documentation | Maximilian Michels | Stephan Ewen |
| [FLINK-2987](https://issues.apache.org/jira/browse/FLINK-2987) | Flink 0.10 fails to start on YARN 2.6.0 |  Major | Build System, YARN Client | Robert Metzger | Robert Metzger |
| [FLINK-2977](https://issues.apache.org/jira/browse/FLINK-2977) | Cannot access HBase in a Kerberos secured Yarn cluster |  Major | YARN Client | Niels Basjes | Niels Basjes |
| [FLINK-3024](https://issues.apache.org/jira/browse/FLINK-3024) | TimestampExtractor Does not Work When returning Long.MIN\_VALUE |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-2879](https://issues.apache.org/jira/browse/FLINK-2879) | Links in documentation are broken |  Minor | website | Nikolaas Steenbergen | Andra Lungu |
| [FLINK-2967](https://issues.apache.org/jira/browse/FLINK-2967) | TM address detection might not always detect the right interface on slow networks / overloaded JMs |  Major | . | Robert Metzger | Robert Metzger |
| [FLINK-2989](https://issues.apache.org/jira/browse/FLINK-2989) | Job Cancel button doesn't work on Yarn |  Major | Webfrontend | Sachin Goel | Maximilian Michels |
| [FLINK-2942](https://issues.apache.org/jira/browse/FLINK-2942) | Dangling operators in web UI's program visualization (non-deterministic) |  Critical | Webfrontend | Fabian Hueske | Piotr Godek |
| [FLINK-3005](https://issues.apache.org/jira/browse/FLINK-3005) | Commons-collections object deserialization remote command execution vulnerability |  Major | . | Ted Yu | Ted Yu |
| [FLINK-3043](https://issues.apache.org/jira/browse/FLINK-3043) | Kafka Connector description in Streaming API guide is wrong/outdated |  Major | Documentation | Stephan Ewen | Stephan Ewen |
| [FLINK-3019](https://issues.apache.org/jira/browse/FLINK-3019) | CLI does not list running/restarting jobs |  Minor | Command-line client | Ufuk Celebi |  |
| [FLINK-3011](https://issues.apache.org/jira/browse/FLINK-3011) | Cannot cancel failing/restarting streaming job from the command line |  Critical | Command-line client | Gyula Fora | Ufuk Celebi |
| [FLINK-3032](https://issues.apache.org/jira/browse/FLINK-3032) | Flink does not start on Hadoop 2.7.1 (HDP), due to class conflict |  Critical | Build System | Robert Metzger | Robert Metzger |
| [FLINK-3052](https://issues.apache.org/jira/browse/FLINK-3052) | Optimizer does not push properties out of bulk iterations |  Major | Optimizer | Till Rohrmann | Till Rohrmann |
| [FLINK-3020](https://issues.apache.org/jira/browse/FLINK-3020) | Local streaming execution: set number of task manager slots to the maximum parallelism |  Minor | Local Runtime | Maximilian Michels | Maximilian Michels |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


