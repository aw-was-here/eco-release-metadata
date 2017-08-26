
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
# Apache Hadoop Changelog

## Release 2.9 - Unreleased (as of 2017-08-26)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-6778](https://issues.apache.org/jira/browse/YARN-6778) | In ResourceWeights, weights and setWeights() should be final |  Minor | scheduler | Daniel Templeton | Daniel Templeton |
| [YARN-6845](https://issues.apache.org/jira/browse/YARN-6845) | Variable scheduler of FSLeafQueue duplicates the one of its parent FSQueue. |  Trivial | fairscheduler | Yufei Gu | Yufei Gu |
| [YARN-6999](https://issues.apache.org/jira/browse/YARN-6999) | Add log about how to solve Error: Could not find or load main class org.apache.hadoop.mapreduce.v2.app.MRAppMaster |  Minor | documentation, security | Linlin Zhou | Linlin Zhou |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-6905](https://issues.apache.org/jira/browse/MAPREDUCE-6905) | Fix meaningless operations in TestDFSIO in some situation. |  Major | tools/rumen | LiXin Ge | LiXin Ge |
| [YARN-6307](https://issues.apache.org/jira/browse/YARN-6307) | Refactor FairShareComparator#compare |  Major | fairscheduler | Yufei Gu | Yufei Gu |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-6240](https://issues.apache.org/jira/browse/YARN-6240) | TestCapacityScheduler.testRefreshQueuesWithQueueDelete fails randomly |  Major | test | Sunil G | Naganarasimha G R |


