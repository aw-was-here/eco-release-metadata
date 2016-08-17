
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

## Release 0.10.1 - 2015-05-31



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1680](https://issues.apache.org/jira/browse/MAHOUT-1680) | Rename project release artifact names to be prefixed with 'apache-mahout-\* |  Major | build | Suneel Marthi | Stevo Slavic |
| [MAHOUT-1699](https://issues.apache.org/jira/browse/MAHOUT-1699) | Trim down Mahout packaging for next release |  Critical | build | Suneel Marthi | Andrew Palumbo |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1693](https://issues.apache.org/jira/browse/MAHOUT-1693) | FunctionalMatrixView materializes row vectors in scala shell |  Blocker | Mahout spark shell, Math | Suneel Marthi | Andrew Palumbo |
| [MAHOUT-1696](https://issues.apache.org/jira/browse/MAHOUT-1696) | QRDecomposition.solve(...) can return incorrect Matrix types |  Major | Math | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1697](https://issues.apache.org/jira/browse/MAHOUT-1697) | Math-scala and spark module docs are packaged under wrong path in bin distribution archive |  Trivial | Documentation | Stevo Slavic | Stevo Slavic |
| [MAHOUT-1707](https://issues.apache.org/jira/browse/MAHOUT-1707) | Spark-itemsimilarity uses too much memory |  Major | Collaborative Filtering, cooccurrence | Pat Ferrel | Pat Ferrel |
| [MAHOUT-1690](https://issues.apache.org/jira/browse/MAHOUT-1690) | CLONE - Some vector dumper flags are expecting arguments. |  Minor | Integration | Allen McIntosh | Suneel Marthi |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1677](https://issues.apache.org/jira/browse/MAHOUT-1677) | add a step by step tutorial for classifying text from the spark-shell |  Major | . | Andrew Palumbo | Andrew Palumbo |


