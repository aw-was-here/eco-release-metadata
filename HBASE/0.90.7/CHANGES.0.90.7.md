
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

## Release 0.90.7 - Unreleased (as of 2016-09-08)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5801](https://issues.apache.org/jira/browse/HBASE-5801) | [hbck] Hbck should handle case where some regions have different HTD settings in .regioninfo files  (0.90 specific) |  Major | hbck | Jonathan Hsieh | Jimmy Xiang |
| [HBASE-5911](https://issues.apache.org/jira/browse/HBASE-5911) | hbck need an option -help to printout usage |  Trivial | hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6124](https://issues.apache.org/jira/browse/HBASE-6124) | Backport HBASE-6033 to 0.90, 0.92 and 0.94 |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6379](https://issues.apache.org/jira/browse/HBASE-6379) | [0.90 branch] Backport HBASE-6334 to 0.90 |  Major | test | Gregory Chanan | Gregory Chanan |
| [HBASE-6661](https://issues.apache.org/jira/browse/HBASE-6661) | Mark single parameter HTable constructors as deprecated in 0.90 and 0.92 |  Critical | . | Jean-Daniel Cryans | Ted Yu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5271](https://issues.apache.org/jira/browse/HBASE-5271) | Result.getValue and Result.getColumnLatest return the wrong column. |  Major | Client | Ghais Issa | Ghais Issa |
| [HBASE-5466](https://issues.apache.org/jira/browse/HBASE-5466) | Opening a table also opens the metatable and never closes it. |  Major | Client | Ashley Taylor | Ashley Taylor |
| [HBASE-5482](https://issues.apache.org/jira/browse/HBASE-5482) | In 0.90, balancer algo leading to same region balanced twice and picking same region with Src and Destination as same RS. |  Major | master | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5593](https://issues.apache.org/jira/browse/HBASE-5593) | Reverse DNS resolution in regionServerStartup() does not strip trailing dot |  Major | master | David S. Wang | David S. Wang |
| [HBASE-5637](https://issues.apache.org/jira/browse/HBASE-5637) | Fix failing 0.90 TestHMsg testcase introduced by HBASE-5563. |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5724](https://issues.apache.org/jira/browse/HBASE-5724) | Row cache of KeyValue should be cleared in readFields(). |  Major | . | Teruyoshi Zenmyo | Teruyoshi Zenmyo |
| [HBASE-5545](https://issues.apache.org/jira/browse/HBASE-5545) | region can't be opened for a long time. Because the creating File failed. |  Major | regionserver | gaojinchao | ramkrishna.s.vasudevan |
| [HBASE-5833](https://issues.apache.org/jira/browse/HBASE-5833) | 0.92 build has been failing pretty consistently on TestMasterFailover.... |  Major | . | stack | stack |
| [HBASE-5850](https://issues.apache.org/jira/browse/HBASE-5850) | Refuse operations from Admin before master is initialized - fix for all branches. |  Major | . | xufeng | xufeng |
| [HBASE-5615](https://issues.apache.org/jira/browse/HBASE-5615) | the master never does balance because of balancing the parent region |  Critical | . | xufeng | xufeng |
| [HBASE-6041](https://issues.apache.org/jira/browse/HBASE-6041) | NullPointerException prevents the master from starting up |  Major | master | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5904](https://issues.apache.org/jira/browse/HBASE-5904) | is\_enabled from shell returns differently from pre- and post- HBASE-5155 |  Blocker | Zookeeper | David S. Wang | David S. Wang |
| [HBASE-6385](https://issues.apache.org/jira/browse/HBASE-6385) | [0.90 branch] Backport HBASE-4195 to 0.90 |  Major | regionserver | Gregory Chanan | Gregory Chanan |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-6190](https://issues.apache.org/jira/browse/HBASE-6190) | TestPriorityCompactionQueue throws NPE |  Major | test | Jimmy Xiang | Jimmy Xiang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5751](https://issues.apache.org/jira/browse/HBASE-5751) | "hbase master stop" does not bring down backup masters |  Major | . | Lars Hofhansl | Gregory Chanan |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-3691](https://issues.apache.org/jira/browse/HBASE-3691) | Add compressor support for 'snappy', google's compressor |  Critical | . | stack |  |


