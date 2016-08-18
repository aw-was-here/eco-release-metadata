
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
# Apache Zookeeper Changelog

## Release 3.5.3 - Unreleased (as of 2016-08-18)



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1898](https://issues.apache.org/jira/browse/ZOOKEEPER-1898) | ZooKeeper Java cli shell always returns "0" as exit code |  Critical | java client | Srinath Mantripragada | Abraham Fine |
| [ZOOKEEPER-2477](https://issues.apache.org/jira/browse/ZOOKEEPER-2477) | documentation should refer to Java cli shell and not C cli shell |  Major | documentation | Patrick Hunt | Abraham Fine |
| [ZOOKEEPER-1256](https://issues.apache.org/jira/browse/ZOOKEEPER-1256) | ClientPortBindTest is failing on Mac OS X |  Major | tests | Daniel Gómez Ferro | Flavio Junqueira |
| [ZOOKEEPER-2498](https://issues.apache.org/jira/browse/ZOOKEEPER-2498) | Potential resource leak in C client when processing unexpected / out of order response |  Major | c client | Michael Han | Michael Han |
| [ZOOKEEPER-2500](https://issues.apache.org/jira/browse/ZOOKEEPER-2500) | Fix compilation warnings for CliException classes |  Major | . | Abraham Fine | Abraham Fine |
| [ZOOKEEPER-2074](https://issues.apache.org/jira/browse/ZOOKEEPER-2074) | Incorrect exit codes for "./zkCli.sh cmd arg" |  Minor | . | Surendra Singh Lilhore | Abraham Fine |
| [ZOOKEEPER-2247](https://issues.apache.org/jira/browse/ZOOKEEPER-2247) | Zookeeper service becomes unavailable when leader fails to write transaction log |  Critical | . | Arshad Mohammad | Rakesh R |
| [ZOOKEEPER-2482](https://issues.apache.org/jira/browse/ZOOKEEPER-2482) | Flaky Test: org.apache.zookeeper.test.ClientPortBindTest.testBindByAddress |  Major | server, tests | Michael Han | Michael Han |


