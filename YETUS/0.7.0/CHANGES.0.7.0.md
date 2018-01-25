
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
# Apache Yetus Changelog

## Release 0.7.0 - 2018-01-20



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-561](https://issues.apache.org/jira/browse/YETUS-561) | Ability to limit user process counts and Docker container's RAM usage |  Critical | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-568](https://issues.apache.org/jira/browse/YETUS-568) | break apart versioning of files and directories |  Major | Release Doc Maker | Allen Wittenauer | Allen Wittenauer |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-570](https://issues.apache.org/jira/browse/YETUS-570) | Report and optionally kill stale JVMs between unit test modules |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-244](https://issues.apache.org/jira/browse/YETUS-244) | make yetus available via homebrew |  Major | website and documentation | Sean Busbey | Allen Wittenauer |
| [YETUS-288](https://issues.apache.org/jira/browse/YETUS-288) | move precommit-admin from hadoop |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-580](https://issues.apache.org/jira/browse/YETUS-580) | build a wrapper around docker in jenkins mode |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-539](https://issues.apache.org/jira/browse/YETUS-539) | Foreach and switch in RootDocProcessor and StabilityOptions |  Major | Audience Annotations | Sean Busbey | Jan Hentschel |
| [YETUS-592](https://issues.apache.org/jira/browse/YETUS-592) | default user names based on project |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-594](https://issues.apache.org/jira/browse/YETUS-594) | Fix up the jenkins precommit script |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-581](https://issues.apache.org/jira/browse/YETUS-581) | bash 3 throws syntax errors on coproc statements |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-590](https://issues.apache.org/jira/browse/YETUS-590) | Dead link from basics to patch naming conventions |  Trivial | website and documentation | Doroszlai, Attila | Doroszlai, Attila |
| [YETUS-598](https://issues.apache.org/jira/browse/YETUS-598) | jira\_locate\_patch does not work after the update of ASF JIRA |  Blocker | Test Patch | Akira Ajisaka | Akira Ajisaka |
| [YETUS-600](https://issues.apache.org/jira/browse/YETUS-600) | pylint now throws "using config file" to stderr |  Critical | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-586](https://issues.apache.org/jira/browse/YETUS-586) | smart-apply-patch --committer misses new directories |  Critical | Test Patch | Allen Wittenauer | Akira Ajisaka |


