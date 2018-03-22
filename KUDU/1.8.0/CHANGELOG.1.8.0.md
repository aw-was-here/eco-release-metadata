
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
# Apache Kudu Changelog

## Release 1.8.0 - Unreleased (as of 2018-03-22)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2331](https://issues.apache.org/jira/browse/KUDU-2331) | Use tablet\_id filter for 'move\_replica' while running ksck-based pre-flight consistency check |  Major | ksck, supportability | Alexey Serbin | Will Berkeley |
| [KUDU-2303](https://issues.apache.org/jira/browse/KUDU-2303) | Add KuduSchema::ToString implementation |  Minor | client | Grant Henke | Fengling Wang |
| [KUDU-2356](https://issues.apache.org/jira/browse/KUDU-2356) | Idle WALs can consume significant memory |  Major | log, tserver | Todd Lipcon | Todd Lipcon |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2322](https://issues.apache.org/jira/browse/KUDU-2322) | Leader spews logs when follower falls behind log GC |  Critical | consensus | Todd Lipcon | Alexey Serbin |
| [KUDU-2153](https://issues.apache.org/jira/browse/KUDU-2153) | Servers delete tmp files before obtaining directory lock |  Critical | fs | Todd Lipcon | Todd Lipcon |
| [KUDU-2342](https://issues.apache.org/jira/browse/KUDU-2342) | Non-voter replicas can be promoted and get stuck |  Blocker | tablet | Mostafa Mokhtar | Alexey Serbin |
| [KUDU-2343](https://issues.apache.org/jira/browse/KUDU-2343) | Java client doesn't properly reconnect to leader master when old leader is online |  Critical | client, java | Todd Lipcon | Todd Lipcon |
| [KUDU-2259](https://issues.apache.org/jira/browse/KUDU-2259) | kudu-spark imports authentication token into client multiple times |  Blocker | spark | Will Berkeley | Dan Burkert |


