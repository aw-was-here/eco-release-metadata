
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

## Release 0.94.28 - Unreleased (as of 2016-09-08)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13344](https://issues.apache.org/jira/browse/HBASE-13344) | Add enforcer rule that matches our JDK support statement |  Minor | build | Sean Busbey | Matt Warhaftig |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13651](https://issues.apache.org/jira/browse/HBASE-13651) | Handle StoreFileScanner FileNotFoundException |  Minor | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13454](https://issues.apache.org/jira/browse/HBASE-13454) | SecureClient#setupIOStreams should handle all Exceptions |  Major | Client, security | Jianwei Cui | Jianwei Cui |
| [HBASE-12921](https://issues.apache.org/jira/browse/HBASE-12921) | Port HBASE-5356 'region\_mover.rb can hang if table region it belongs to is deleted' to 0.94 |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-14799](https://issues.apache.org/jira/browse/HBASE-14799) | Commons-collections object deserialization remote command execution vulnerability |  Critical | dependencies, security | Andrew Purtell | Andrew Purtell |
| [HBASE-14830](https://issues.apache.org/jira/browse/HBASE-14830) | Fix broken links in 0.94 generated docs |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-15054](https://issues.apache.org/jira/browse/HBASE-15054) | Allow 0.94 to compile with JDK8 |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-15084](https://issues.apache.org/jira/browse/HBASE-15084) | Remove references to repository.codehaus.org |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-15104](https://issues.apache.org/jira/browse/HBASE-15104) | Occasional failures due to NotServingRegionException in IT tests |  Major | integration tests | huaxiang sun | huaxiang sun |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14748](https://issues.apache.org/jira/browse/HBASE-14748) | Update 0.94 apidocs and xref on website |  Major | build | Misty Stanley-Jones | Misty Stanley-Jones |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14747](https://issues.apache.org/jira/browse/HBASE-14747) | Make it possible to build Javadoc and xref reports for 0.94 again |  Major | build | Misty Stanley-Jones | Misty Stanley-Jones |


