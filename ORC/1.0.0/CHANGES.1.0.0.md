
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

## Release 1.0.0 - 2016-01-25



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-18](https://issues.apache.org/jira/browse/ORC-18) | Replace Buffer with DataBuffer\<char\> and implement a posix-style read() for InputStreams |  Major | C++ | Aliaksei Sandryhaila | Aliaksei Sandryhaila |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-9](https://issues.apache.org/jira/browse/ORC-9) | Create a ColumnVectorBatch for Timestamps |  Major | C++, encoding | Owen O\'Malley | Owen O\'Malley |
| [ORC-22](https://issues.apache.org/jira/browse/ORC-22) | Make buffer block size configurable |  Major | C++ | Aliaksei Sandryhaila | Aliaksei Sandryhaila |
| [ORC-36](https://issues.apache.org/jira/browse/ORC-36) | create a program that lets developers create ORC files from future versions |  Major | . | Owen O\'Malley | Owen O\'Malley |
| [ORC-29](https://issues.apache.org/jira/browse/ORC-29) | ColumnPrinter should be able to print only specified columns |  Major | . | Aliaksei Sandryhaila | Aliaksei Sandryhaila |
| [ORC-39](https://issues.apache.org/jira/browse/ORC-39) | Create Dockerfiles for building and testing |  Major | . | Owen O\'Malley | Owen O\'Malley |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-24](https://issues.apache.org/jira/browse/ORC-24) | C++ reader for direct string encodings occasionally skips bytes |  Major | C++ | Owen O\'Malley | Owen O\'Malley |
| [ORC-25](https://issues.apache.org/jira/browse/ORC-25) | Clean up Coverity scans |  Major | . | Owen O\'Malley | Owen O\'Malley |
| [ORC-30](https://issues.apache.org/jira/browse/ORC-30) | Suppress warning on macos |  Major | . | Owen O\'Malley | Owen O\'Malley |
| [ORC-32](https://issues.apache.org/jira/browse/ORC-32) | Warnings under new version of xcode on MacOS. |  Major | . | Owen O\'Malley | Owen O\'Malley |
| [ORC-8](https://issues.apache.org/jira/browse/ORC-8) | Replace tool implementation to use Reader interface |  Major | . | Owen O\'Malley | Owen O\'Malley |
| [ORC-38](https://issues.apache.org/jira/browse/ORC-38) | Fix compilation errors on RHEL 5 |  Major | C++ | Owen O\'Malley | Owen O\'Malley |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ORC-3](https://issues.apache.org/jira/browse/ORC-3) | Import native code from github |  Major | C++ | Owen O\'Malley | Owen O\'Malley |
| [ORC-23](https://issues.apache.org/jira/browse/ORC-23) | Simplify the C++ directory structure a bit |  Major | C++ | Owen O\'Malley | Owen O\'Malley |


