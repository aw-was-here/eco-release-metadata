
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


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-6339](https://issues.apache.org/jira/browse/MAPREDUCE-6339) | Job history file is not flushed correctly because isTimerActive flag is not set true when flushTimerTask is scheduled. |  Critical | mrv2 | zhihai xu | zhihai xu |
| [MAPREDUCE-6324](https://issues.apache.org/jira/browse/MAPREDUCE-6324) | Uber jobs fail to update AMRM token when it rolls over |  Blocker | mr-am | Jason Lowe | Jason Lowe |
| [MAPREDUCE-6259](https://issues.apache.org/jira/browse/MAPREDUCE-6259) | IllegalArgumentException due to missing job submit time |  Major | jobhistoryserver | zhihai xu | zhihai xu |
| [MAPREDUCE-6252](https://issues.apache.org/jira/browse/MAPREDUCE-6252) | JobHistoryServer should not fail when encountering a missing directory |  Major | jobhistoryserver | Craig Welch | Craig Welch |
| [MAPREDUCE-6251](https://issues.apache.org/jira/browse/MAPREDUCE-6251) | JobClient needs additional retries at a higher level to address not-immediately-consistent dfs corner cases |  Major | jobhistoryserver, mrv2 | Craig Welch | Craig Welch |
| [MAPREDUCE-6238](https://issues.apache.org/jira/browse/MAPREDUCE-6238) | MR2 can't run local jobs with -libjars command options which is a regression from MR1 |  Critical | mrv2 | zhihai xu | zhihai xu |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


