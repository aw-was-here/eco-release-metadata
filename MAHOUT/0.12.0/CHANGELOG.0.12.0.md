
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
# Apache Mahout Changelog

## Release 0.12.0 - 2016-04-11



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1805](https://issues.apache.org/jira/browse/MAHOUT-1805) | Implement allreduceBlock(...) in flink bindings |  Major | . | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1829](https://issues.apache.org/jira/browse/MAHOUT-1829) | Add Flink module to build tools |  Blocker | Flink, nk | Andrew Palumbo | Suneel Marthi |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1776](https://issues.apache.org/jira/browse/MAHOUT-1776) | Refactor common Engine agnostic classes to Math-Scala module |  Major | Math | Suneel Marthi | Suneel Marthi |
| [MAHOUT-1794](https://issues.apache.org/jira/browse/MAHOUT-1794) | Support alternate temporary directories in example scripts. |  Minor | Examples | Albert Chu | Andrew Musselman |
| [MAHOUT-1766](https://issues.apache.org/jira/browse/MAHOUT-1766) | Increase default PermGen size for spark-shell |  Major | Mahout spark shell | Sergey Tryuber | Andrew Musselman |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1808](https://issues.apache.org/jira/browse/MAHOUT-1808) | Some cleanup of unused operations in sparkbindings |  Trivial | . | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1807](https://issues.apache.org/jira/browse/MAHOUT-1807) | Distributed second norm doesn't take sqrt |  Major | . | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1806](https://issues.apache.org/jira/browse/MAHOUT-1806) | Implicit checkpoint must not request caching |  Minor | . | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1811](https://issues.apache.org/jira/browse/MAHOUT-1811) | Fix calculation of second norm of DRM in Flink |  Major | . | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1810](https://issues.apache.org/jira/browse/MAHOUT-1810) | Failing test in flink-bindings: A + B Identically partitioned (mapBlock Checkpointing issue) |  Blocker | Flink | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1809](https://issues.apache.org/jira/browse/MAHOUT-1809) | Failing tests in Flink-bindings: dals and dspca |  Blocker | Flink | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1826](https://issues.apache.org/jira/browse/MAHOUT-1826) | Fix wikipedia example |  Blocker | . | Andrew Palumbo | Suneel Marthi |
| [MAHOUT-1828](https://issues.apache.org/jira/browse/MAHOUT-1828) | Change the access of blas method in sparkbindings |  Major | Flink | Suneel Marthi | Suneel Marthi |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1740](https://issues.apache.org/jira/browse/MAHOUT-1740) | Layout on algorithms page broken |  Major | Documentation | Andrew Musselman | Andrew Musselman |
| [MAHOUT-1689](https://issues.apache.org/jira/browse/MAHOUT-1689) | Create a doc on how to write an app that uses Mahout as a lib |  Major | . | Andrew Palumbo | Pat Ferrel |
| [MAHOUT-1769](https://issues.apache.org/jira/browse/MAHOUT-1769) | Incorrect documentation for collecting DRM to HDFS |  Minor | Mahout spark shell | Sergey Tryuber | Andrew Musselman |
| [MAHOUT-1763](https://issues.apache.org/jira/browse/MAHOUT-1763) | A minor bug in Spark binding documentation |  Trivial | Math, spark | Sergey Tryuber | Dmitriy Lyubimov |
| [MAHOUT-1779](https://issues.apache.org/jira/browse/MAHOUT-1779) | Brief overview page for the Flink engine |  Minor | Flink | Andrew Palumbo | Suneel Marthi |
| [MAHOUT-1789](https://issues.apache.org/jira/browse/MAHOUT-1789) | Remove DataSetOps.scala from mahout-flink, replace by DataSetUtils from Flink 0.10 |  Major | Math | Suneel Marthi | Suneel Marthi |
| [MAHOUT-1734](https://issues.apache.org/jira/browse/MAHOUT-1734) | Mahout DSL for Flink: implement I/O |  Minor | Math | Alexey Grigorev | Andrew Palumbo |
| [MAHOUT-1702](https://issues.apache.org/jira/browse/MAHOUT-1702) | Mahout DSL for Flink: implement element-wise operators |  Minor | Math | Alexey Grigorev | Suneel Marthi |
| [MAHOUT-1748](https://issues.apache.org/jira/browse/MAHOUT-1748) | Mahout DSL for Flink: switch to Flink Scala API |  Minor | Math | Alexey Grigorev | Suneel Marthi |
| [MAHOUT-1703](https://issues.apache.org/jira/browse/MAHOUT-1703) | Mahout DSL for Flink: implement cbind and rbind |  Minor | Math | Alexey Grigorev | Suneel Marthi |
| [MAHOUT-1764](https://issues.apache.org/jira/browse/MAHOUT-1764) | Mahout DSL for Flink: Add standard backend tests for Flink |  Minor | Math | Alexey Grigorev | Suneel Marthi |
| [MAHOUT-1710](https://issues.apache.org/jira/browse/MAHOUT-1710) | Mahout DSL for Flink: implement right in-core matrix multiplication |  Minor | Math | Alexey Grigorev | Andrew Palumbo |


