
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

## Release 1.1.7 - Unreleased (as of 2016-07-29)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16241](https://issues.apache.org/jira/browse/HBASE-16241) | Allow specification of annotations to use when running check\_compatibility.sh |  Major | scripts | Dima Spivak | Dima Spivak |
| [HBASE-16266](https://issues.apache.org/jira/browse/HBASE-16266) | Do not throw ScannerTimeoutException when catch UnknownScannerException |  Major | Client, Scanners | Phil Yang | Phil Yang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16144](https://issues.apache.org/jira/browse/HBASE-16144) | Replication queue's lock will live forever if RS acquiring the lock has died prematurely |  Major | . | Phil Yang | Phil Yang |
| [HBASE-16237](https://issues.apache.org/jira/browse/HBASE-16237) | Blocks for hbase:meta table are not cached in L1 cache |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16281](https://issues.apache.org/jira/browse/HBASE-16281) | TestMasterReplication is flaky |  Major | . | Phil Yang | Phil Yang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16189](https://issues.apache.org/jira/browse/HBASE-16189) | [Rolling Upgrade] 2.0 hfiles cannot be opened by 1.x servers |  Critical | migration | Enis Soztutar | ramkrishna.s.vasudevan |


