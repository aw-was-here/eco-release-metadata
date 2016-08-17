
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

## Release 0.11.2 - 2016-03-12



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1785](https://issues.apache.org/jira/browse/MAHOUT-1785) | Replace 'spark.kryoserializer.buffer.mb' from Spark config |  Trivial | Mahout spark shell | Suneel Marthi | Suneel Marthi |
| [MAHOUT-1800](https://issues.apache.org/jira/browse/MAHOUT-1800) | Pare down Classtag overuse |  Major | . | Andrew Palumbo |  |
| [MAHOUT-1640](https://issues.apache.org/jira/browse/MAHOUT-1640) | Better collections would significantly improve vector-operation speed |  Major | collections | Sebastiano Vigna | Suneel Marthi |
| [MAHOUT-1801](https://issues.apache.org/jira/browse/MAHOUT-1801) | FastUtil to improve speed of Sparse Matrix Operations |  Major | Math | Suneel Marthi | Suneel Marthi |
| [MAHOUT-1802](https://issues.apache.org/jira/browse/MAHOUT-1802) |  Capture attached checkpoints (if cached) |  Major | . | Andrew Palumbo | Andrew Palumbo |
| [MAHOUT-1803](https://issues.apache.org/jira/browse/MAHOUT-1803) | Fix spark-shell for spark 1.5.2 |  Major | Mahout spark shell | Andrew Palumbo | Andrew Musselman |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1793](https://issues.apache.org/jira/browse/MAHOUT-1793) | Declare WORK\_DIR earlier in example script to fix output error in help output |  Trivial | Examples | Albert Chu | Suneel Marthi |
| [MAHOUT-1797](https://issues.apache.org/jira/browse/MAHOUT-1797) | Typos for SPARK\_ASSEMBLY\_BIN |  Trivial | spark | Andrew Musselman |  |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAHOUT-1770](https://issues.apache.org/jira/browse/MAHOUT-1770) | Can mahout run on spark with yarn-cluster mode? |  Major | . | dodolzg | Suneel Marthi |


