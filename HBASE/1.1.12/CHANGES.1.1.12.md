
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
# Apache HBase Changelog

## Release 1.1.12 - 2017-08-21



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16351](https://issues.apache.org/jira/browse/HBASE-16351) | do dependency license check via enforcer plugin |  Major | build, dependencies | Sean Busbey | Mike Drob |
| [HBASE-18041](https://issues.apache.org/jira/browse/HBASE-18041) | Add pylintrc file to HBase |  Major | community | Alex Leblang | Alex Leblang |
| [HBASE-14220](https://issues.apache.org/jira/browse/HBASE-14220) | nightly tests should verify src tgz generates and builds correctly |  Minor | build | Nick Dimiduk | Sean Busbey |
| [HBASE-18426](https://issues.apache.org/jira/browse/HBASE-18426) | nightly job should use independent stages to check supported jdks |  Critical | community, test | Sean Busbey | Sean Busbey |
| [HBASE-18387](https://issues.apache.org/jira/browse/HBASE-18387) | [Thrift] Make principal configurable in DemoClient.java |  Minor | . | Lars George | Tamas Penzes |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9393](https://issues.apache.org/jira/browse/HBASE-9393) | Hbase does not closing a closed socket resulting in many CLOSE\_WAIT |  Critical | . | Avi Zrachya | Ashish Singhi |
| [HBASE-18212](https://issues.apache.org/jira/browse/HBASE-18212) | In Standalone mode with local filesystem HBase logs Warning message:Failed to invoke 'unbuffer' method in class class org.apache.hadoop.fs.FSDataInputStream |  Minor | Operability | Umesh Agashe | Ashish Singhi |
| [HBASE-18230](https://issues.apache.org/jira/browse/HBASE-18230) | Generated LICENSE file includes unsubstituted Velocity variables |  Major | build | Mike Drob | Mike Drob |
| [HBASE-18255](https://issues.apache.org/jira/browse/HBASE-18255) | Time-Delayed HBase Performance Degradation with Java 7 |  Critical | Performance | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-18330](https://issues.apache.org/jira/browse/HBASE-18330) | NPE in ReplicationZKLockCleanerChore |  Major | master, Replication | Minwoo Kang | Andrew Purtell |
| [HBASE-18481](https://issues.apache.org/jira/browse/HBASE-18481) | The autoFlush flag was not used in PE tool |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18390](https://issues.apache.org/jira/browse/HBASE-18390) | Sleep too long when finding region location failed |  Major | Client | Phil Yang | Phil Yang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18147](https://issues.apache.org/jira/browse/HBASE-18147) | nightly job to check health of active branches |  Major | community, test | Sean Busbey | Sean Busbey |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15691](https://issues.apache.org/jira/browse/HBASE-15691) | Port HBASE-10205 (ConcurrentModificationException in BucketAllocator) to branch-1 |  Major | . | Andrew Purtell | Stephen Yuan Jiang |
| [HBASE-18293](https://issues.apache.org/jira/browse/HBASE-18293) | Only add the spotbugs dependency when jdk8 is active |  Major | build | Chia-Ping Tsai | Chia-Ping Tsai |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17954](https://issues.apache.org/jira/browse/HBASE-17954) | Switch findbugs implementation to spotbugs |  Major | build, community, test | Sean Busbey | Jan Hentschel |
| [HBASE-18527](https://issues.apache.org/jira/browse/HBASE-18527) | update nightly builds to compensate for jenkins plugin upgrades |  Blocker | community, test | Sean Busbey | Sean Busbey |


