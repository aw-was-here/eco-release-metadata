
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

## Release 0.13.1 - Unreleased (as of 2018-09-05)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1970](https://issues.apache.org/jira/browse/MAHOUT-1970) | Utilize Spark Pseudoclusters in TravisCi |  Major | . | Trevor Grant | Trevor Grant |
| [MAHOUT-1967](https://issues.apache.org/jira/browse/MAHOUT-1967) | Make Flink Profile |  Major | Flink | Trevor Grant | Aditya AS |
| [MAHOUT-1965](https://issues.apache.org/jira/browse/MAHOUT-1965) | Update CI to cover multiple spark/scala builds |  Major | Integration | Trevor Grant | Trevor Grant |
| [MAHOUT-1975](https://issues.apache.org/jira/browse/MAHOUT-1975) | Pull Request Template |  Minor | . | Trevor Grant | Trevor Grant |
| [MAHOUT-1962](https://issues.apache.org/jira/browse/MAHOUT-1962) | Add F-test to Linear Regression  Fitness Tests |  Minor | Algorithms | Dustin VanStee |  |
| [MAHOUT-1976](https://issues.apache.org/jira/browse/MAHOUT-1976) | Add Canopy Clustering Algorithm |  Major | Algorithms | Trevor Grant | Trevor Grant |
| [MAHOUT-1795](https://issues.apache.org/jira/browse/MAHOUT-1795) | Release Scala 2.11 bindings |  Major | . | Mike Kaplinskiy |  |
| [MAHOUT-1969](https://issues.apache.org/jira/browse/MAHOUT-1969) | Create Profiles for Spark 1.6, 2.0.2, 2.1.0 |  Major | . | Trevor Grant | Trevor Grant |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1902](https://issues.apache.org/jira/browse/MAHOUT-1902) | Parse Spark and Mahout variable arguments from the Mahout spark-shell |  Major | Mahout spark shell | Andrew Palumbo |  |
| [MAHOUT-1971](https://issues.apache.org/jira/browse/MAHOUT-1971) | Aggregate Transpose Bug |  Major | . | Trevor Grant | Trevor Grant |
| [MAHOUT-1897](https://issues.apache.org/jira/browse/MAHOUT-1897) | Mahout Shell is running with a lag |  Major | Mahout spark shell | Andrew Palumbo |  |
| [MAHOUT-1953](https://issues.apache.org/jira/browse/MAHOUT-1953) | jars in $MAHOUT\_HOME should be deleted on mvn clean |  Major | . | Trevor Grant |  |
| [MAHOUT-1988](https://issues.apache.org/jira/browse/MAHOUT-1988) | ViennaCL and OMP not building for Scala 2.11 |  Blocker | . | Andrew Palumbo | Trevor Grant |
| [MAHOUT-1973](https://issues.apache.org/jira/browse/MAHOUT-1973) | When building profiles conditionally (say Flink, Viennacl) a hadoop.version related error occurs. Need to check if conditional building of other modules also has this error and fix the issue. |  Minor | build | Aditya AS | Aditya AS |
| [MAHOUT-1994](https://issues.apache.org/jira/browse/MAHOUT-1994) | Remove ViennCL jars upon mvn clean. |  Blocker | . | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1993](https://issues.apache.org/jira/browse/MAHOUT-1993) | ViennaCL dependency-reduced.xml assembly scala versions are hardcoded to scala 2.10 |  Blocker | . | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-2018](https://issues.apache.org/jira/browse/MAHOUT-2018) | missing dash delimiter in mahout-spark module pom.xml |  Major | . | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-2020](https://issues.apache.org/jira/browse/MAHOUT-2020) | Maven repo structure malformed |  Blocker | build | Pat Ferrel | Trevor Grant |
| [MAHOUT-2007](https://issues.apache.org/jira/browse/MAHOUT-2007) | Fix wikipedia xml dump url in examples |  Major | . | Andrew Palumbo | jack ai |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1830](https://issues.apache.org/jira/browse/MAHOUT-1830) | Publish scaladocs for Mahout 0.13.0 release |  Critical | Documentation | Suneel Marthi |  |


