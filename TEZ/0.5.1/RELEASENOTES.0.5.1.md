
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
# Apache Tez  0.5.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [TEZ-1578](https://issues.apache.org/jira/browse/TEZ-1578) | *Major* | **Remove TeraSort from Tez codebase**

Terasort is just a copy of the MR codebase. The better approach would be to ask users to run terasort using yarn-tez mode instead of duplicating it in Tez. 

It can be brought back in if and when we decide to write a tez-native impl of terasort.


---

* [TEZ-1499](https://issues.apache.org/jira/browse/TEZ-1499) | *Major* | **Add SortMergeJoinExample to tez-examples**

In the current join example, the inputs of JoinProcessor is unordered so that it will always need to load one input into memory, and stream another input. This only fit for the case when one dataset is small enough to fit into memory ( even use no-broadcast, memory may not be enough ).  So I'd like to add another join example that make the inputs of JoinProcessor is ordered. ( using OrderedPartitionedKVEdgeConfig ). This kind of join could been used when both of the 2 datasets are large.



