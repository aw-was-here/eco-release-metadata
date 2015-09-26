
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
# Apache Orc Changelog

## Release 1.0.0 - Unreleased (as of 2015-09-26)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-22](https://issues.apache.org/jira/browse/ORC-22) | Make buffer block size configurable |  Major | C++ | Aliaksei Sandryhaila | Aliaksei Sandryhaila |
| [ORC-9](https://issues.apache.org/jira/browse/ORC-9) | Create a ColumnVectorBatch for Timestamps |  Major | C++, encoding | Owen O'Malley | Owen O'Malley |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-25](https://issues.apache.org/jira/browse/ORC-25) | Clean up Coverity scans |  Major | . | Owen O'Malley | Owen O'Malley |
| [ORC-24](https://issues.apache.org/jira/browse/ORC-24) | C++ reader for direct string encodings occasionally skips bytes |  Major | C++ | Owen O'Malley | Owen O'Malley |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-18](https://issues.apache.org/jira/browse/ORC-18) | Replace Buffer with DataBuffer\<char\> and implement a posix-style read() for InputStreams |  Major | C++ | Aliaksei Sandryhaila | Aliaksei Sandryhaila |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-23](https://issues.apache.org/jira/browse/ORC-23) | Simplify the C++ directory structure a bit |  Major | C++ | Owen O'Malley | Owen O'Malley |
| [ORC-3](https://issues.apache.org/jira/browse/ORC-3) | Import native code from github |  Major | C++ | Owen O'Malley | Owen O'Malley |


