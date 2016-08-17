
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

## Release 0.10.2 - 2015-08-06



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1752](https://issues.apache.org/jira/browse/MAHOUT-1752) | H2O implementation of CbindScalar |  Major | . | Anand Avati | Anand Avati |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1732](https://issues.apache.org/jira/browse/MAHOUT-1732) | Native support for kryo serialization of tensor types. |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1731](https://issues.apache.org/jira/browse/MAHOUT-1731) | Deprecate SparseColumnMatrix. |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1730](https://issues.apache.org/jira/browse/MAHOUT-1730) | new mutable transposition view for in-core matrices. |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1728](https://issues.apache.org/jira/browse/MAHOUT-1728) | in-core functional assignments |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1727](https://issues.apache.org/jira/browse/MAHOUT-1727) | Elementwise analogues of scala.math functions for tensor types |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1726](https://issues.apache.org/jira/browse/MAHOUT-1726) | R-like vector concatenation operator |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1725](https://issues.apache.org/jira/browse/MAHOUT-1725) | elementwise power operator ^ |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1724](https://issues.apache.org/jira/browse/MAHOUT-1724) | Optimizations of matrix-matrix in-core multiplication based on structural flavors |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1723](https://issues.apache.org/jira/browse/MAHOUT-1723) | Optional structural "flavor" abstraction for in-core matrices. |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1722](https://issues.apache.org/jira/browse/MAHOUT-1722) | DRM row sampling api |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1721](https://issues.apache.org/jira/browse/MAHOUT-1721) | rowSumsMap summary for non-int-keyed DRMs |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1720](https://issues.apache.org/jira/browse/MAHOUT-1720) | Support 1 cbind X, X cbind 1 etc. for both Matrix and DRM |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1719](https://issues.apache.org/jira/browse/MAHOUT-1719) | Unary elementwise function operator and function fusions |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1718](https://issues.apache.org/jira/browse/MAHOUT-1718) | Support for conversion of any type-keyed DRM into ordinally-keyed DRM |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1717](https://issues.apache.org/jira/browse/MAHOUT-1717) | allreduceBlock operator api and Spark implementation |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1716](https://issues.apache.org/jira/browse/MAHOUT-1716) | Scala logging style |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1715](https://issues.apache.org/jira/browse/MAHOUT-1715) | Closeable API for broadcast tensors |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1714](https://issues.apache.org/jira/browse/MAHOUT-1714) | Add MAHOUT\_OPTS environment when running Spark shell |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1713](https://issues.apache.org/jira/browse/MAHOUT-1713) | Performance and parallelization improvements for AB', A'B, A'A spark physical operators |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1736](https://issues.apache.org/jira/browse/MAHOUT-1736) | H20 implementation for allreduceBlock |  Major | . | Dmitriy Lyubimov | Anand Avati |
| [MAHOUT-1737](https://issues.apache.org/jira/browse/MAHOUT-1737) | H20 implementation of AewUnaryFunc physical operator |  Major | . | Dmitriy Lyubimov | Anand Avati |
| [MAHOUT-1738](https://issues.apache.org/jira/browse/MAHOUT-1738) | Flavor support for H2o in-core matrices |  Major | . | Dmitriy Lyubimov | Anand Avati |
| [MAHOUT-1757](https://issues.apache.org/jira/browse/MAHOUT-1757) | Small fix in spca formula |  Major | . | Dmitriy Lyubimov | Suneel Marthi |
| [MAHOUT-1756](https://issues.apache.org/jira/browse/MAHOUT-1756) | Missing +=: and \*=: operators on vectors |  Major | . | Dmitriy Lyubimov | Suneel Marthi |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1729](https://issues.apache.org/jira/browse/MAHOUT-1729) | Straighten out behavior of Matrix.iterator() and iterateNonEmpty() |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1660](https://issues.apache.org/jira/browse/MAHOUT-1660) | Hadoop1HDFSUtil.readDRMHEader should be taking Hadoop conf |  Minor | spark | Suneel Marthi | Dmitriy Lyubimov |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1746](https://issues.apache.org/jira/browse/MAHOUT-1746) | Fix: mxA ^ 2, mxA ^ 0.5 to mean the same thing as mxA \* mxA and mxA ::= sqrt \_ |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1753](https://issues.apache.org/jira/browse/MAHOUT-1753) | First and second moment routines |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1754](https://issues.apache.org/jira/browse/MAHOUT-1754) | Distance and squared distance matrix routines |  Major | . | Dmitriy Lyubimov | Dmitriy Lyubimov |
| [MAHOUT-1745](https://issues.apache.org/jira/browse/MAHOUT-1745) | Purge deprecated ConcatVectorsJob from codebase |  Major | . | Andrew Palumbo | Suneel Marthi |
| [MAHOUT-1761](https://issues.apache.org/jira/browse/MAHOUT-1761) | Upgrade to Apache parent pom v17 |  Trivial | . | Stevo Slavic | Stevo Slavic |


