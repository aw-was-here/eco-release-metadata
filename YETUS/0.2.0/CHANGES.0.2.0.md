
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

## Release 0.2.0 - Unreleased (as of 2016-01-16)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-241](https://issues.apache.org/jira/browse/YETUS-241) | revamp parameterized site |  Major | build, website and documentation | Sean Busbey | Sean Busbey |
| [YETUS-187](https://issues.apache.org/jira/browse/YETUS-187) | maven javac/javadoc can't use calcdiffs |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-62](https://issues.apache.org/jira/browse/YETUS-62) | add auto-formatting of usage options |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-285](https://issues.apache.org/jira/browse/YETUS-285) | flag to enable/disable docker privileged mode |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-263](https://issues.apache.org/jira/browse/YETUS-263) | Personality for Accumulo |  Major | Test Patch | Josh Elser | Josh Elser |
| [YETUS-214](https://issues.apache.org/jira/browse/YETUS-214) | release doc maker should have option to specify output directory |  Major | Release Doc Maker | Sean Busbey | Pathangi Jatinshravan |
| [YETUS-204](https://issues.apache.org/jira/browse/YETUS-204) | shelldocs lint mode |  Major | ShellDocs | Allen Wittenauer | Kengo Seki |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-280](https://issues.apache.org/jira/browse/YETUS-280) | build systems should be able to predetermine module order |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-273](https://issues.apache.org/jira/browse/YETUS-273) | Misleading warning messages when FINDBUGS\_HOME is not set |  Trivial | Test Patch | John Zhuge | Marco Zühlke |
| [YETUS-240](https://issues.apache.org/jira/browse/YETUS-240) | Skip checkstyle/findbugs during mvninstall |  Major | Test Patch | Josh Elser | Josh Elser |
| [YETUS-191](https://issues.apache.org/jira/browse/YETUS-191) | plugins that require external executables should verify those external executables exist. |  Major | Test Patch | Allen Wittenauer | Marco Zühlke |
| [YETUS-173](https://issues.apache.org/jira/browse/YETUS-173) | report fixed issues |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-271](https://issues.apache.org/jira/browse/YETUS-271) | findbugs.sh will -1 if there are no java source code in the module. |  Major | Test Patch | Akira AJISAKA | Allen Wittenauer |
| [YETUS-267](https://issues.apache.org/jira/browse/YETUS-267) | use curl -L when given a patch URL |  Minor | Test Patch | Josh Elser | Josh Elser |
| [YETUS-265](https://issues.apache.org/jira/browse/YETUS-265) | maven javadocs aren't calcdiff'd correctly |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-260](https://issues.apache.org/jira/browse/YETUS-260) | distclean step is not working |  Critical | Test Patch | Marco Zühlke | Marco Zühlke |
| [YETUS-258](https://issues.apache.org/jira/browse/YETUS-258) | build.sh should detect missing third party dependecies and suggest how to install |  Major | build | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [YETUS-251](https://issues.apache.org/jira/browse/YETUS-251) | default patch-naming-rule points to old yetus url |  Major | Test Patch | Sean Busbey | Marco Zühlke |
| [YETUS-249](https://issues.apache.org/jira/browse/YETUS-249) | asflicense with ant can fail and succeed simultaneously |  Major | Test Patch | Kengo Seki | Kengo Seki |
| [YETUS-232](https://issues.apache.org/jira/browse/YETUS-232) | releasedocmaker with range option fails if project name is specified in lower case |  Major | Release Doc Maker | Kengo Seki | Kengo Seki |
| [YETUS-221](https://issues.apache.org/jira/browse/YETUS-221) | asflicense check exits multi-module Maven build early if there are pre-existing license problems. |  Major | Test Patch | Chris Nauroth | Allen Wittenauer |
| [YETUS-209](https://issues.apache.org/jira/browse/YETUS-209) | releasedocmaker's error message is unintelligible if a non-existent project is specified |  Minor | Release Doc Maker | Kengo Seki | Kengo Seki |
| [YETUS-182](https://issues.apache.org/jira/browse/YETUS-182) | document git hash in patchnames doc |  Major | Test Patch, website and documentation | Allen Wittenauer | Marco Zühlke |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


