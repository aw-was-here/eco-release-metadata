
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

## Release 1.14.0 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2574](https://issues.apache.org/jira/browse/KUDU-2574) | add unique Cluster ID to Kudu cluster instances |  Major | client, master | Dan Burkert | Grant Henke |
| [KUDU-3012](https://issues.apache.org/jira/browse/KUDU-3012) | Throttle "Applying an operation in a closed session" warning log |  Major | client | Grant Henke | Mahesh Reddy |
| [KUDU-3187](https://issues.apache.org/jira/browse/KUDU-3187) | Enhance the HMS plugin to check if synchronization is enabled |  Major | hms | Grant Henke | Grant Henke |
| [KUDU-3201](https://issues.apache.org/jira/browse/KUDU-3201) | Support gzipped HMS notifications (GzipJSONMessageEncoder) |  Major | hms | Grant Henke | Grant Henke |
| [KUDU-3195](https://issues.apache.org/jira/browse/KUDU-3195) | Make DMS flush policy more robust when maintenance threads are idle |  Major | tserver | Alexey Serbin |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2884](https://issues.apache.org/jira/browse/KUDU-2884) | 'kudu hms fix' CLI tool mistakenly reports on non-matching master addresses |  Major | CLI, hms | Alexey Serbin | Grant Henke |
| [KUDU-1728](https://issues.apache.org/jira/browse/KUDU-1728) | Parallelize tablet copy operations |  Major | consensus, tablet | Mike Percy |  |
| [KUDU-3157](https://issues.apache.org/jira/browse/KUDU-3157) | kudu-spark2 jar is now including slf4j classes |  Major | spark | Jeff Evans | Grant Henke |
| [KUDU-3198](https://issues.apache.org/jira/browse/KUDU-3198) | Unable to delete a full row from a table with 64 columns when using java client |  Major | java | YifanZhang |  |
| [KUDU-3149](https://issues.apache.org/jira/browse/KUDU-3149) | Lock contention between registering ops and computing maintenance op stats |  Critical | perf, tserver | Andrew Wong | Andrew Wong |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-3200](https://issues.apache.org/jira/browse/KUDU-3200) | KuduTestHarness is not working from JDK 12 onward |  Major | . | Alex Dettinger | Grant Henke |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-3182](https://issues.apache.org/jira/browse/KUDU-3182) | 'last\_known\_addr' is not specified for single master Raft configuration |  Major | consensus, master | Bankim Bhavsar | Bankim Bhavsar |
| [KUDU-3191](https://issues.apache.org/jira/browse/KUDU-3191) | Fail tablet replicas that suffer from KUDU-2233 instead of crashing |  Major | compaction | Andrew Wong | Andrew Wong |
| [KUDU-3192](https://issues.apache.org/jira/browse/KUDU-3192) | Leverage cluster ID when playing HMS notifications |  Major | hms | Andrew Wong | Grant Henke |


