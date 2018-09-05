
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

## Release 0.11.1 - 2015-11-06



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1772](https://issues.apache.org/jira/browse/MAHOUT-1772) | delimiterPattern instance variable of FileDataModel should be marked as a Transient field |  Major | Collaborative Filtering | Lina Hovanessian | Suneel Marthi |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1684](https://issues.apache.org/jira/browse/MAHOUT-1684) | Updated NOTICE and LICENSE texts |  Major | build | Suneel Marthi | Suneel Marthi |
| [MAHOUT-1781](https://issues.apache.org/jira/browse/MAHOUT-1781) | Dense matrix view multiplication is 4x slower than non-view one |  Critical | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1783](https://issues.apache.org/jira/browse/MAHOUT-1783) | Remove code for ConcatVectors Job |  Major | Integration | Suneel Marthi | Suneel Marthi |
| [MAHOUT-1782](https://issues.apache.org/jira/browse/MAHOUT-1782) | Remove code for lucene2seq |  Minor | Integration | Suneel Marthi | Suneel Marthi |
| [MAHOUT-1778](https://issues.apache.org/jira/browse/MAHOUT-1778) | MAhout Spark Shell doesn't work with Spark \> 1.3 |  Major | Mahout spark shell | Suneel Marthi | Pat Ferrel |
| [MAHOUT-1784](https://issues.apache.org/jira/browse/MAHOUT-1784) | Remove mention of Spark in comment and Javadoc of math-scala when the code is generic |  Minor | . | Henry Saputra | Suneel Marthi |
| [MAHOUT-1759](https://issues.apache.org/jira/browse/MAHOUT-1759) | Deprecate random forest |  Critical | Examples | Andrew Musselman | Andrew Musselman |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1536](https://issues.apache.org/jira/browse/MAHOUT-1536) | Update "Creating vectors from text" page |  Minor | Documentation | Andrew Palumbo |  |
| [MAHOUT-1642](https://issues.apache.org/jira/browse/MAHOUT-1642) | Iterator class within SimilarItems class always misses the first element |  Major | Collaborative Filtering | Guohua Hao | Suneel Marthi |
| [MAHOUT-1613](https://issues.apache.org/jira/browse/MAHOUT-1613) | classifier.df.tools.Describe does not handle -D parameters |  Major | . | Haohui Mai | Suneel Marthi |
| [MAHOUT-1771](https://issues.apache.org/jira/browse/MAHOUT-1771) | Cluster dumper omits indices and 0 elements for dense vector or sparse containing 0s |  Minor | Clustering, mrlegacy | Sean Owen | Suneel Marthi |
| [MAHOUT-1773](https://issues.apache.org/jira/browse/MAHOUT-1773) | Fix cluster-syntheticcontrol.sh for HDFS synthax |  Trivial | Clustering | Eduardo Niemeyer | Andrew Musselman |
| [MAHOUT-1775](https://issues.apache.org/jira/browse/MAHOUT-1775) | FileNotFoundException caused by aborting the process of downloading Wikipedia dataset |  Trivial | Examples | Bowei Zhang | Suneel Marthi |
| [MAHOUT-1787](https://issues.apache.org/jira/browse/MAHOUT-1787) | compute-classpath scripts are not being packaged in the binary distribution |  Critical | . | Andrew Palumbo | Suneel Marthi |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1774](https://issues.apache.org/jira/browse/MAHOUT-1774) | Enable maven compilation with JDK 1.8 |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1671](https://issues.apache.org/jira/browse/MAHOUT-1671) | CMS Link Sweep after refactoring |  Major | Documentation | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1687](https://issues.apache.org/jira/browse/MAHOUT-1687) | Add documentation to the website and fix any problems |  Major | . | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1618](https://issues.apache.org/jira/browse/MAHOUT-1618) | Cooccurrence Recommender example and documentation |  Trivial | Examples | Thejas Prasad | Pat Ferrel |
| [MAHOUT-1743](https://issues.apache.org/jira/browse/MAHOUT-1743) | Issues w.r.t algorithms on top of samsara |  Major | . | Dmitriy Lyubimov |  |
| [MAHOUT-1675](https://issues.apache.org/jira/browse/MAHOUT-1675) | Remove MLP from codebase |  Major | . | Andrew Palumbo | Suneel Marthi |
| [MAHOUT-1673](https://issues.apache.org/jira/browse/MAHOUT-1673) | Create CI job to verify hadoop1 profile builds ok |  Major | . | Stevo Slavic | Stevo Slavic |
| [MAHOUT-1443](https://issues.apache.org/jira/browse/MAHOUT-1443) | Update "How to release page" |  Major | Documentation | Sebastian Schelter | Suneel Marthi |


