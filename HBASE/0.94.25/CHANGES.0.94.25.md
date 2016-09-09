
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

## Release 0.94.25 - 2014-11-25



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12272](https://issues.apache.org/jira/browse/HBASE-12272) | Generate Thrift code through maven |  Major | build, documentation, Thrift | Niels Basjes | Niels Basjes |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12065](https://issues.apache.org/jira/browse/HBASE-12065) |  Import tool is not restoring multiple DeleteFamily markers of a row |  Minor | util | Maddineni Sukumar | Maddineni Sukumar |
| [HBASE-12171](https://issues.apache.org/jira/browse/HBASE-12171) | Backport: PerformanceEvaluation: getSplits doesn't provide right splits. |  Major | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-12146](https://issues.apache.org/jira/browse/HBASE-12146) | RegionServerTracker should escape data in log messages |  Trivial | . | Lars Hofhansl | stack |
| [HBASE-12039](https://issues.apache.org/jira/browse/HBASE-12039) | Lower log level for TableNotFoundException log message when throwing |  Minor | . | James Taylor | stack |
| [HBASE-12376](https://issues.apache.org/jira/browse/HBASE-12376) | HBaseAdmin leaks ZK connections if failure starting watchers (ConnectionLossException) |  Critical | Zookeeper | stack | stack |
| [HBASE-12336](https://issues.apache.org/jira/browse/HBASE-12336) | RegionServer failed to shutdown for NodeFailoverWorker thread |  Minor | . | Liu Shaohui | Liu Shaohui |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12235](https://issues.apache.org/jira/browse/HBASE-12235) | Backport to 0.94: HBASE-9002 TestDistributedLogSplitting.testRecoverdEdits should test correct region |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-12381](https://issues.apache.org/jira/browse/HBASE-12381) | Add maven enforcer rules for build assumptions |  Minor | build | Sean Busbey | Sean Busbey |


