
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

## Release 3.0.0 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-2428](https://issues.apache.org/jira/browse/YARN-2428) | LCE default banned user list should have yarn |  Trivial | nodemanager | Allen Wittenauer | Varun Saxena |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-3360](https://issues.apache.org/jira/browse/YARN-3360) | Add JMX metrics to TimelineDataManager |  Major | timelineserver | Jason Lowe | Jason Lowe |
| [YARN-3199](https://issues.apache.org/jira/browse/YARN-3199) | Fair Scheduler documentation improvements |  Minor | fairscheduler | Rohit Agarwal | Rohit Agarwal |
| [YARN-3168](https://issues.apache.org/jira/browse/YARN-3168) | Convert site documentation from apt to markdown |  Major | documentation | Allen Wittenauer | Gururaj Shetty |
| [YARN-2796](https://issues.apache.org/jira/browse/YARN-2796) | deprecate sbin/yarn-daemon.sh |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [YARN-2472](https://issues.apache.org/jira/browse/YARN-2472) | yarn-daemons.sh should just call yarn directly |  Major | scripts | Allen Wittenauer | Masatake Iwasaki |
| [YARN-2438](https://issues.apache.org/jira/browse/YARN-2438) | yarn-env.sh cleanup |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [YARN-2437](https://issues.apache.org/jira/browse/YARN-2437) | start-yarn.sh/stop-yarn should give info |  Major | scripts | Allen Wittenauer | Varun Saxena |
| [YARN-2280](https://issues.apache.org/jira/browse/YARN-2280) | Resource manager web service fields are not accessible |  Trivial | resourcemanager | Krisztian Horvath | Krisztian Horvath |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-3002](https://issues.apache.org/jira/browse/YARN-3002) | YARN documentation needs updating post-shell rewrite |  Major | documentation | Allen Wittenauer | Allen Wittenauer |
| [YARN-2525](https://issues.apache.org/jira/browse/YARN-2525) | yarn logs command gives error on trunk |  Minor | scripts | Prakash Ramachandran | Akira AJISAKA |
| [YARN-2436](https://issues.apache.org/jira/browse/YARN-2436) | yarn application help doesn't work |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [YARN-2428](https://issues.apache.org/jira/browse/YARN-2428) | LCE default banned user list should have yarn |  Trivial | nodemanager | Allen Wittenauer | Varun Saxena |
| [YARN-524](https://issues.apache.org/jira/browse/YARN-524) | TestYarnVersionInfo failing if generated properties doesn't include an SVN URL |  Minor | api | Steve Loughran | Steve Loughran |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-644](https://issues.apache.org/jira/browse/YARN-644) | Basic null check is not performed on passed in arguments before using them in ContainerManagerImpl.startContainer |  Minor | nodemanager | Omkar Vinit Joshi | Varun Saxena |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


