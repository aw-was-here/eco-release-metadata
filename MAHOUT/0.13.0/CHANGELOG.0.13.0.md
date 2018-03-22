
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

## Release 0.13.0 - Unreleased (as of 2018-03-22)



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
| [MAHOUT-1921](https://issues.apache.org/jira/browse/MAHOUT-1921) | DSSVD Propagates cache hint |  Minor | Math | Trevor Grant | Trevor Grant |
| [MAHOUT-1922](https://issues.apache.org/jira/browse/MAHOUT-1922) | DSPCA Propagates cache hint |  Minor | Math | Trevor Grant | Trevor Grant |
| [MAHOUT-1923](https://issues.apache.org/jira/browse/MAHOUT-1923) | dqrThin Propagates cache hint |  Minor | Math | Trevor Grant | Trevor Grant |
| [MAHOUT-1935](https://issues.apache.org/jira/browse/MAHOUT-1935) | Inefficient use of XtX calculation in Ordinary Least Squares |  Minor | . | Trevor Grant | Trevor Grant |
| [MAHOUT-1934](https://issues.apache.org/jira/browse/MAHOUT-1934) | OpenMP jars aren't being picked up in distributed Spark |  Blocker | . | Trevor Grant | Andrew Palumbo |
| [MAHOUT-1925](https://issues.apache.org/jira/browse/MAHOUT-1925) | Cochrane-Orcutt should optionally calculate dwstat |  Major | Algorithms | Trevor Grant | Trevor Grant |
| [MAHOUT-1975](https://issues.apache.org/jira/browse/MAHOUT-1975) | Pull Request Template |  Minor | . | Trevor Grant | Trevor Grant |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1876](https://issues.apache.org/jira/browse/MAHOUT-1876) | Mahout fails to read from lucene index of solr-5.5.2 |  Major | . | Raviteja Lokineni |  |
| [MAHOUT-1881](https://issues.apache.org/jira/browse/MAHOUT-1881) | flink-config.yaml is not copied to $MAHOUT\_HOME/conf in Binary Distro |  Blocker | Flink | Andrew Palumbo | Suneel Marthi |
| [MAHOUT-1888](https://issues.apache.org/jira/browse/MAHOUT-1888) | Performance Bug with Mahout Vector Serialization |  Major | spark | Suneel Marthi | Suneel Marthi |
| [MAHOUT-1895](https://issues.apache.org/jira/browse/MAHOUT-1895) | Add convenience methods for converting Vectors to Scala types |  Minor | . | Trevor Grant | Trevor Grant |
| [MAHOUT-1896](https://issues.apache.org/jira/browse/MAHOUT-1896) | Add convenience methods for interacting with Spark ML |  Minor | . | Trevor Grant | Trevor Grant |
| [MAHOUT-1920](https://issues.apache.org/jira/browse/MAHOUT-1920) | Spark Dependency Reduced Jar Needs Open-MP |  Minor | . | Trevor Grant | Trevor Grant |
| [MAHOUT-1893](https://issues.apache.org/jira/browse/MAHOUT-1893) | Fix Algorithm list on mahout.apache.org |  Critical | . | Andrew Palumbo | Andrew Musselman |
| [MAHOUT-1911](https://issues.apache.org/jira/browse/MAHOUT-1911) | Fix Create Mahout Context after VCL Merge |  Blocker | . | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1936](https://issues.apache.org/jira/browse/MAHOUT-1936) | FactorMap finds column maximums incorrectly on large data sets |  Major | Algorithms | Trevor Grant | Trevor Grant |
| [MAHOUT-1912](https://issues.apache.org/jira/browse/MAHOUT-1912) | Fix  Spark CLI Driver tests in after commented out with VCL binding commit |  Blocker | . | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1903](https://issues.apache.org/jira/browse/MAHOUT-1903) | Fix VCL vector %\*% vector implementation |  Major | . | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1946](https://issues.apache.org/jira/browse/MAHOUT-1946) | ViennaCL not being picked up by JNI |  Blocker | . | Andrew Musselman | Andrew Palumbo |
| [MAHOUT-1938](https://issues.apache.org/jira/browse/MAHOUT-1938) | When building on linux, haswell properties are not working. |  Blocker | . | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1939](https://issues.apache.org/jira/browse/MAHOUT-1939) | fastutil version clash with spark distributions |  Critical | . | Dmitriy Lyubimov | Andrew Palumbo |
| [MAHOUT-1926](https://issues.apache.org/jira/browse/MAHOUT-1926) | Linear Regression Model can generate p-values outside of [0,1] |  Major | Algorithms | Trevor Grant | Trevor Grant |
| [MAHOUT-1913](https://issues.apache.org/jira/browse/MAHOUT-1913) | Clean Up of VCL bindings |  Blocker | . | Andrew Palumbo | Andrew Musselman |
| [MAHOUT-1919](https://issues.apache.org/jira/browse/MAHOUT-1919) | Flink Module breaks the build regularly |  Critical | . | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1955](https://issues.apache.org/jira/browse/MAHOUT-1955) | Viennacl jars are not being picked up by the shell startup script |  Blocker | Mahout spark shell | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1957](https://issues.apache.org/jira/browse/MAHOUT-1957) | Ensure that ViennaCL Jars are included in the binary distribution. |  Blocker | build | Andrew Palumbo |  |
| [MAHOUT-1960](https://issues.apache.org/jira/browse/MAHOUT-1960) | Flipped sign in the SparseSparseDrmTimer.mscala causes Desnse Matrix multiplication |  Blocker | . | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1963](https://issues.apache.org/jira/browse/MAHOUT-1963) | Signs are Flipped in the ViennaCL Sparse %\*% Sparse tests |  Critical | . | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1951](https://issues.apache.org/jira/browse/MAHOUT-1951) | Drivers don't run with remote Spark |  Blocker | Classification, CLI, Collaborative Filtering | Pat Ferrel | Pat Ferrel |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1930](https://issues.apache.org/jira/browse/MAHOUT-1930) | Add test for StandardScaler |  Major | Algorithms | Trevor Grant | Trevor Grant |
| [MAHOUT-1931](https://issues.apache.org/jira/browse/MAHOUT-1931) | Add test for MeanCenter |  Major | Algorithms | Trevor Grant | Trevor Grant |
| [MAHOUT-1927](https://issues.apache.org/jira/browse/MAHOUT-1927) | Need test for Durbin-Watson Test Statistic |  Major | . | Trevor Grant | Trevor Grant |
| [MAHOUT-1924](https://issues.apache.org/jira/browse/MAHOUT-1924) | Add test for Cochrane-Orcutt Procedure |  Minor | Algorithms | Trevor Grant | Trevor Grant |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1858](https://issues.apache.org/jira/browse/MAHOUT-1858) | Mahout visualization features including Mahout plotting and Zeppelin integration |  Major | . | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1849](https://issues.apache.org/jira/browse/MAHOUT-1849) | Update home page language |  Major | . | Andrew Musselman | Andrew Musselman |
| [MAHOUT-1906](https://issues.apache.org/jira/browse/MAHOUT-1906) | Ensure customJars are added to the MahoutContext under certain conditions for spark 1.6+ |  Major | . | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1682](https://issues.apache.org/jira/browse/MAHOUT-1682) | Create a documentation page for SPCA |  Major | Documentation | Andrew Palumbo | Andrew Musselman |
| [MAHOUT-1943](https://issues.apache.org/jira/browse/MAHOUT-1943) | last minute release details for 0.13.0 |  Major | . | Andrew Palumbo |  |
| [MAHOUT-1880](https://issues.apache.org/jira/browse/MAHOUT-1880) | Remove H2O Bindings from the release binaries |  Critical | build | Andrew Palumbo | Suneel Marthi |
| [MAHOUT-1865](https://issues.apache.org/jira/browse/MAHOUT-1865) | Remove Hadoop 1 support. |  Major | . | Andrew Palumbo | Suneel Marthi |
| [MAHOUT-1901](https://issues.apache.org/jira/browse/MAHOUT-1901) | Remove h20 from the Binary Release Build |  Major | . | Andrew Palumbo | Suneel Marthi |
| [MAHOUT-1894](https://issues.apache.org/jira/browse/MAHOUT-1894) | Add support for Spark 2x backend |  Critical | spark | Suneel Marthi | Trevor Grant |
| [MAHOUT-1910](https://issues.apache.org/jira/browse/MAHOUT-1910) | Remove .zip archive from build |  Blocker | . | Andrew Palumbo | Andrew Musselman |
| [MAHOUT-1907](https://issues.apache.org/jira/browse/MAHOUT-1907) | Correctly implement VCL vector %\*% matrix multiplication. |  Blocker | . | Andrew Palumbo | Andrew Palumbo |


