
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
# Hadoop Changelog

## Release 2.7.1 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11851](https://issues.apache.org/jira/browse/HADOOP-11851) | s3n to swallow IOEs on inner stream close |  Minor | fs/s3 | Steve Loughran | Takenori Sato |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12078](https://issues.apache.org/jira/browse/HADOOP-12078) | The default retry policy does not handle RetriableException correctly |  Critical | ipc | Arpit Agarwal | Arpit Agarwal |
| [HADOOP-12058](https://issues.apache.org/jira/browse/HADOOP-12058) | Fix dead links to DistCp and Hadoop Archives pages. |  Minor | documentation, site | Kazuho Fujii | Kazuho Fujii |
| [HADOOP-11973](https://issues.apache.org/jira/browse/HADOOP-11973) | Ensure ZkDelegationTokenSecretManager namespace znodes get created with ACLs |  Major | security | Gregory Chanan | Gregory Chanan |
| [HADOOP-11966](https://issues.apache.org/jira/browse/HADOOP-11966) | Variable cygwin is undefined in hadoop-config.sh when executed through hadoop-daemon.sh. |  Critical | scripts | Chris Nauroth | Chris Nauroth |
| [HADOOP-11934](https://issues.apache.org/jira/browse/HADOOP-11934) | Use of JavaKeyStoreProvider in LdapGroupsMapping causes infinite loop |  Blocker | security | Mike Yoder | Larry McCay |
| [HADOOP-11891](https://issues.apache.org/jira/browse/HADOOP-11891) | OsSecureRandom should lazily fill its reservoir |  Major | security | Arun Suresh | Arun Suresh |
| [HADOOP-11872](https://issues.apache.org/jira/browse/HADOOP-11872) | "hadoop dfs" command prints message about using "yarn jar" on Windows(branch-2 only) |  Minor | scripts | Varun Vasudev | Varun Vasudev |
| [HADOOP-11868](https://issues.apache.org/jira/browse/HADOOP-11868) | Invalid user logins trigger large backtraces in server log |  Major | . | Chang Li | Chang Li |
| [HADOOP-11802](https://issues.apache.org/jira/browse/HADOOP-11802) | DomainSocketWatcher thread terminates sometimes after there is an I/O error during requestShortCircuitShm |  Major | . | Eric Payne | Colin Patrick McCabe |
| [HADOOP-11730](https://issues.apache.org/jira/browse/HADOOP-11730) | Regression: s3n read failure recovery broken |  Major | fs/s3 | Takenori Sato | Takenori Sato |
| [HADOOP-11663](https://issues.apache.org/jira/browse/HADOOP-11663) | Remove description about Java 6 from docs |  Minor | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-9658](https://issues.apache.org/jira/browse/HADOOP-9658) | SnappyCodec#checkNativeCodeLoaded may unexpectedly fail when native code is not loaded |  Major | . | Zhijie Shen | Zhijie Shen |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


