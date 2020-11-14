
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

## Release 0.6.0 - 2017-10-31



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-535](https://issues.apache.org/jira/browse/YETUS-535) | Add RATIS personality to yetus |  Major | Precommit | Marton Elek | Marton Elek |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-538](https://issues.apache.org/jira/browse/YETUS-538) | set capacity on ArrayList init where possible |  Minor | Audience Annotations | Sean Busbey | Gézapeti |
| [YETUS-540](https://issues.apache.org/jira/browse/YETUS-540) | Remove unnecessary semicolons in audience annotations |  Trivial | Audience Annotations | Sean Busbey | Gézapeti |
| [YETUS-536](https://issues.apache.org/jira/browse/YETUS-536) | Jira plugin should output the information about curl failure in debug mode. |  Major | Precommit | Mano Kovacs | Mano Kovacs |
| [YETUS-543](https://issues.apache.org/jira/browse/YETUS-543) | Add shaded client related ITs to Hadoop exemplar personality |  Major | Precommit | Sean Busbey | Sean Busbey |
| [YETUS-556](https://issues.apache.org/jira/browse/YETUS-556) | hadoop personality should use echo to convey informational messages. |  Critical | Precommit | Sean Busbey | Sean Busbey |
| [YETUS-555](https://issues.apache.org/jira/browse/YETUS-555) | Docker may give an invalid UNIX date |  Critical | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-545](https://issues.apache.org/jira/browse/YETUS-545) | Hadoop personality: clean up some OS X & Windows issues |  Blocker | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-510](https://issues.apache.org/jira/browse/YETUS-510) | Build Tool report should include version |  Critical | Precommit | Mike Drob | Sean Busbey |
| [YETUS-553](https://issues.apache.org/jira/browse/YETUS-553) | Add configuration options for junit plugin |  Minor | Precommit | Mano Kovacs | Mano Kovacs |
| [YETUS-534](https://issues.apache.org/jira/browse/YETUS-534) | Provide a way to set snappy and isal location in hadoop personality |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-551](https://issues.apache.org/jira/browse/YETUS-551) | Rework the Dockerfile |  Major | build, Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-544](https://issues.apache.org/jira/browse/YETUS-544) | Parameters on the shebang line aren't portable |  Blocker | Release Doc Maker, ShellDocs | Allen Wittenauer | Allen Wittenauer |
| [YETUS-560](https://issues.apache.org/jira/browse/YETUS-560) | Fix option name inconsistency: build-url-patchdir vs build-url-artifacts |  Major | Precommit | Ádám Szita | Ádám Szita |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-565](https://issues.apache.org/jira/browse/YETUS-565) | Release 0.6.0 |  Major | website and documentation | Sean Busbey | Sean Busbey |


