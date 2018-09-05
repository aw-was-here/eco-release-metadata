
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

## Release 0.20.6 - 2010-07-30



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-2349](https://issues.apache.org/jira/browse/HBASE-2349) | Backport HBaseTestingUtility to branch (will include adding support for junit4 to branch) |  Major | . | stack | stack |
| [HBASE-2802](https://issues.apache.org/jira/browse/HBASE-2802) | Stop daughter regions both being assigned same server |  Major | . | stack |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-2323](https://issues.apache.org/jira/browse/HBASE-2323) | filter.RegexStringComparator does not work with certain bytes |  Major | Filters | Benoit Sigoure | Benoit Sigoure |
| [HBASE-2633](https://issues.apache.org/jira/browse/HBASE-2633) | REST XML schema description up on the wiki is out of date |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2772](https://issues.apache.org/jira/browse/HBASE-2772) | Scan doesn't recover from region server failure |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2786](https://issues.apache.org/jira/browse/HBASE-2786) | TestHLog.testSplit hangs |  Major | . | Jean-Daniel Cryans | Nicolas Spiegelberg |
| [HBASE-2797](https://issues.apache.org/jira/browse/HBASE-2797) | Another NPE in ReadWriteConsistencyControl |  Blocker | . | Dave Latham | ryan rawson |
| [HBASE-2837](https://issues.apache.org/jira/browse/HBASE-2837) | HBASE-2613 broke rolling upgrades |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |


