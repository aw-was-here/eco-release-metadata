
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

## Release 0.13.0 - Unreleased (as of 2017-01-19)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1883](https://issues.apache.org/jira/browse/MAHOUT-1883) | Create a type if IndexedDataset that filters unneeded data for CCO |  Major | Collaborative Filtering | Pat Ferrel | Pat Ferrel |
| [MAHOUT-1853](https://issues.apache.org/jira/browse/MAHOUT-1853) | Improvements to CCO (Correlated Cross-Occurrence) |  Major | . | Andrew Palumbo | Pat Ferrel |
| [MAHOUT-1854](https://issues.apache.org/jira/browse/MAHOUT-1854) | Zeppelin integration: Spark Intrepreter |  Major | . | Andrew Palumbo | Trevor Grant |
| [MAHOUT-1855](https://issues.apache.org/jira/browse/MAHOUT-1855) | Zeppelin integration: Visualization |  Major | . | Andrew Palumbo | Trevor Grant |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1799](https://issues.apache.org/jira/browse/MAHOUT-1799) | Read null row vectors from file in TextDelimeterReaderWriter driver |  Minor | spark | Jussi Jousimo | Pat Ferrel |
| [MAHOUT-1837](https://issues.apache.org/jira/browse/MAHOUT-1837) | Sparse/Dense Matrix analysis for Matrix Multiplication |  Major | Math | Andrew Palumbo | Andrew Palumbo |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1876](https://issues.apache.org/jira/browse/MAHOUT-1876) | Mahout fails to read from lucene index of solr-5.5.2 |  Major | . | Raviteja Lokineni |  |
| [MAHOUT-1881](https://issues.apache.org/jira/browse/MAHOUT-1881) | flink-config.yaml is not copied to $MAHOUT\_HOME/conf in Binary Distro |  Blocker | Flink | Andrew Palumbo | Suneel Marthi |
| [MAHOUT-1888](https://issues.apache.org/jira/browse/MAHOUT-1888) | Performance Bug with Mahout Vector Serialization |  Major | spark | Suneel Marthi | Suneel Marthi |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1858](https://issues.apache.org/jira/browse/MAHOUT-1858) | Mahout visualization features including Mahout plotting and Zeppelin integration |  Major | . | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1849](https://issues.apache.org/jira/browse/MAHOUT-1849) | Update home page language |  Major | . | Andrew Musselman | Andrew Musselman |
| [MAHOUT-1906](https://issues.apache.org/jira/browse/MAHOUT-1906) | Ensure customJars are added to the MahoutContext under certain conditions for spark 1.6+ |  Major | . | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1880](https://issues.apache.org/jira/browse/MAHOUT-1880) | Remove H2O Bindings from the release binaries |  Critical | build | Andrew Palumbo | Suneel Marthi |
| [MAHOUT-1865](https://issues.apache.org/jira/browse/MAHOUT-1865) | Remove Hadoop 1 support. |  Major | . | Andrew Palumbo | Suneel Marthi |
| [MAHOUT-1901](https://issues.apache.org/jira/browse/MAHOUT-1901) | Remove h20 from the Binary Release Build |  Major | . | Andrew Palumbo | Suneel Marthi |


