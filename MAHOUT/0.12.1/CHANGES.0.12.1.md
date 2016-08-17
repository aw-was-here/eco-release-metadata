
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

## Release 0.12.1 - 2016-05-17



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1832](https://issues.apache.org/jira/browse/MAHOUT-1832) | Upgrade Jackson version and references to 2.x |  Trivial | build | Suneel Marthi | Suneel Marthi |
| [MAHOUT-1835](https://issues.apache.org/jira/browse/MAHOUT-1835) | Remove countsPerPartition in Flink/blas/package.scala |  Minor | Flink | Suneel Marthi | Suneel Marthi |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1836](https://issues.apache.org/jira/browse/MAHOUT-1836) | Order and add missing paramters for DictionaryVectorizer.createTermFrequencyVectors() javadoc parameter comments. |  Trivial | Documentation | Marku | Andrew Palumbo |
| [MAHOUT-1841](https://issues.apache.org/jira/browse/MAHOUT-1841) | Matrices.symmetricUniformView(...) returning values in the wrong range. |  Major | Math | Andrew Palumbo | Suneel Marthi |
| [MAHOUT-1847](https://issues.apache.org/jira/browse/MAHOUT-1847) | drmSampleRows in FlinkEngine doesn't wrap Int Keys when ClassTag is of type Int |  Major | Flink | Suneel Marthi | Suneel Marthi |
| [MAHOUT-1848](https://issues.apache.org/jira/browse/MAHOUT-1848) | drmSampleKRows in FlinkEngine should generate a dense or sparse matrix |  Major | Flink | Suneel Marthi | Suneel Marthi |
| [MAHOUT-1859](https://issues.apache.org/jira/browse/MAHOUT-1859) | Disable non working  msurf and mgrid before Mahout 0.12.1 release |  Minor | . | Andrew Palumbo | Andrew Palumbo |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1827](https://issues.apache.org/jira/browse/MAHOUT-1827) | Suggested changes to homepage, how to contribute |  Minor | Documentation | Shane Curcuru | Andrew Palumbo |


