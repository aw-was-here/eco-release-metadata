
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

## Release 0.94.22 - 2014-08-07



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11450](https://issues.apache.org/jira/browse/HBASE-11450) | Improve file size info in SnapshotInfo tool |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11444](https://issues.apache.org/jira/browse/HBASE-11444) | Remove use of reflection for User#getShortName |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11480](https://issues.apache.org/jira/browse/HBASE-11480) | ClientScanner might not close the HConnection created in construction |  Trivial | Client, Scanners | Jianwei Cui | Jianwei Cui |
| [HBASE-2217](https://issues.apache.org/jira/browse/HBASE-2217) | VM OPTS for shell only |  Major | . | stack | Andrew Purtell |
| [HBASE-7910](https://issues.apache.org/jira/browse/HBASE-7910) | Dont use reflection for security |  Major | . | Enis Soztutar | Mike Drob |
| [HBASE-11623](https://issues.apache.org/jira/browse/HBASE-11623) | mutateRowsWithLocks might require updatesLock.readLock with waitTime=0 |  Minor | regionserver | Jianwei Cui | Jianwei Cui |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11496](https://issues.apache.org/jira/browse/HBASE-11496) | HBASE-9745 broke cygwin CLASSPATH translation |  Minor | . | Dave Latham | Dave Latham |
| [HBASE-11479](https://issues.apache.org/jira/browse/HBASE-11479) | SecureConnection can't be closed when SecureClient is stopping because InterruptedException won't be caught in SecureClient#setupIOstreams() |  Minor | security | Jianwei Cui | Jianwei Cui |
| [HBASE-11565](https://issues.apache.org/jira/browse/HBASE-11565) | Stale connection could stay for a while |  Major | Client | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10645](https://issues.apache.org/jira/browse/HBASE-10645) | Fix wrapping of Requests Counts Regionserver level metrics |  Major | regionserver | deepankar | deepankar |
| [HBASE-11360](https://issues.apache.org/jira/browse/HBASE-11360) | SnapshotFileCache causes too many cache refreshes |  Major | . | churro morales | churro morales |
| [HBASE-11633](https://issues.apache.org/jira/browse/HBASE-11633) | [0.94] port HBASE-11217 Race between SplitLogManager task creation + TimeoutMonitor |  Critical | . | Lars Hofhansl | Lars Hofhansl |


