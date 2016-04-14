
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

## Release 0.2.0 - 2016-03-07

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-62](https://issues.apache.org/jira/browse/YETUS-62) | add auto-formatting of usage options |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-241](https://issues.apache.org/jira/browse/YETUS-241) | revamp parameterized site |  Major | build, website and documentation | Sean Busbey | Sean Busbey |
| [YETUS-187](https://issues.apache.org/jira/browse/YETUS-187) | maven javac/javadoc can't use calcdiffs |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-70](https://issues.apache.org/jira/browse/YETUS-70) | add support for make, including cmake and autoconf |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-282](https://issues.apache.org/jira/browse/YETUS-282) | Allow the specification of a base JIRA URL |  Major | Release Doc Maker | Pathangi Jatinshravan | Pathangi Jatinshravan |
| [YETUS-229](https://issues.apache.org/jira/browse/YETUS-229) | split --jenkins up |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-204](https://issues.apache.org/jira/browse/YETUS-204) | shelldocs lint mode |  Major | ShellDocs | Allen Wittenauer | Kengo Seki |
| [YETUS-263](https://issues.apache.org/jira/browse/YETUS-263) | Personality for Accumulo |  Major | Test Patch | Josh Elser | Josh Elser |
| [YETUS-214](https://issues.apache.org/jira/browse/YETUS-214) | release doc maker should have option to specify output directory |  Major | Release Doc Maker | Sean Busbey | Pathangi Jatinshravan |
| [YETUS-205](https://issues.apache.org/jira/browse/YETUS-205) | shelldocs lint test for precommit |  Major | Test Patch | Allen Wittenauer | Kengo Seki |
| [YETUS-78](https://issues.apache.org/jira/browse/YETUS-78) | add support for orc |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-285](https://issues.apache.org/jira/browse/YETUS-285) | flag to enable/disable docker privileged mode |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-240](https://issues.apache.org/jira/browse/YETUS-240) | Skip checkstyle/findbugs during mvninstall |  Major | Test Patch | Josh Elser | Josh Elser |
| [YETUS-191](https://issues.apache.org/jira/browse/YETUS-191) | plugins that require external executables should verify those external executables exist. |  Major | Test Patch | Allen Wittenauer | Marco Zühlke |
| [YETUS-273](https://issues.apache.org/jira/browse/YETUS-273) | Misleading warning messages when FINDBUGS\_HOME is not set |  Trivial | Test Patch | John Zhuge | Marco Zühlke |
| [YETUS-280](https://issues.apache.org/jira/browse/YETUS-280) | build systems should be able to predetermine module order |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-173](https://issues.apache.org/jira/browse/YETUS-173) | report fixed issues |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-272](https://issues.apache.org/jira/browse/YETUS-272) | add a way to flag/veto patches to code which jenkins doesn't test |  Minor | Test Patch | Steve Loughran | Allen Wittenauer |
| [YETUS-287](https://issues.apache.org/jira/browse/YETUS-287) | Update year to 2016 on website footer |  Blocker | website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-281](https://issues.apache.org/jira/browse/YETUS-281) | hadoop: use built-in dependency order |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-190](https://issues.apache.org/jira/browse/YETUS-190) | markdown table rendering on yetus website is ugly |  Blocker | website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-226](https://issues.apache.org/jira/browse/YETUS-226) | Document release process |  Blocker | website and documentation | Sean Busbey | Sean Busbey |
| [YETUS-308](https://issues.apache.org/jira/browse/YETUS-308) | improve guidance on website maintenance |  Minor | website and documentation | Sean Busbey | Sean Busbey |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-209](https://issues.apache.org/jira/browse/YETUS-209) | releasedocmaker's error message is unintelligible if a non-existent project is specified |  Minor | Release Doc Maker | Kengo Seki | Kengo Seki |
| [YETUS-232](https://issues.apache.org/jira/browse/YETUS-232) | releasedocmaker with range option fails if project name is specified in lower case |  Major | Release Doc Maker | Kengo Seki | Kengo Seki |
| [YETUS-221](https://issues.apache.org/jira/browse/YETUS-221) | asflicense check exits multi-module Maven build early if there are pre-existing license problems. |  Major | Test Patch | Chris Nauroth | Allen Wittenauer |
| [YETUS-249](https://issues.apache.org/jira/browse/YETUS-249) | asflicense with ant can fail and succeed simultaneously |  Major | Test Patch | Kengo Seki | Kengo Seki |
| [YETUS-258](https://issues.apache.org/jira/browse/YETUS-258) | build.sh should detect missing third party dependecies and suggest how to install |  Major | build | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [YETUS-260](https://issues.apache.org/jira/browse/YETUS-260) | distclean step is not working |  Critical | Test Patch | Marco Zühlke | Marco Zühlke |
| [YETUS-182](https://issues.apache.org/jira/browse/YETUS-182) | document git hash in patchnames doc |  Major | Test Patch, website and documentation | Allen Wittenauer | Marco Zühlke |
| [YETUS-251](https://issues.apache.org/jira/browse/YETUS-251) | default patch-naming-rule points to old yetus url |  Major | Test Patch | Sean Busbey | Marco Zühlke |
| [YETUS-267](https://issues.apache.org/jira/browse/YETUS-267) | use curl -L when given a patch URL |  Minor | Test Patch | Josh Elser | Josh Elser |
| [YETUS-265](https://issues.apache.org/jira/browse/YETUS-265) | maven javadocs aren't calcdiff'd correctly |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-271](https://issues.apache.org/jira/browse/YETUS-271) | findbugs.sh will -1 if there are no java source code in the module. |  Major | Test Patch | Akira AJISAKA | Allen Wittenauer |
| [YETUS-275](https://issues.apache.org/jira/browse/YETUS-275) | removing files(?) causes pylint file open failures |  Major | Test Patch | Allen Wittenauer | Marco Zühlke |
| [YETUS-104](https://issues.apache.org/jira/browse/YETUS-104) | Update document about plugin functions |  Major | website and documentation | Kengo Seki | Marco Zühlke |
| [YETUS-235](https://issues.apache.org/jira/browse/YETUS-235) | releasedocmaker does not give an error if a non-existent version is given |  Major | Release Doc Maker | Sean Busbey | Kengo Seki |
| [YETUS-290](https://issues.apache.org/jira/browse/YETUS-290) | reference to another function in calcdiffs' description is wrong |  Trivial | Test Patch | Kengo Seki | Marco Zühlke |
| [YETUS-201](https://issues.apache.org/jira/browse/YETUS-201) | dsec file hanging around |  Trivial | Test Patch | Allen Wittenauer | Marco Zühlke |
| [YETUS-236](https://issues.apache.org/jira/browse/YETUS-236) | Binary artifact LICENSE/NOTICE claims to include several third party dependencies that are not present. |  Blocker | build | Sean Busbey | Allen Wittenauer |
| [YETUS-299](https://issues.apache.org/jira/browse/YETUS-299) | RAT exclusions must include symlinks for 0.1.0 release |  Blocker | build | Sean Busbey | Sean Busbey |
| [YETUS-284](https://issues.apache.org/jira/browse/YETUS-284) | maven dependency solver needs enhancements |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-215](https://issues.apache.org/jira/browse/YETUS-215) | cli flag for "license" does the opposite of docs |  Critical | Release Doc Maker | Sean Busbey | Allen Wittenauer |
| [YETUS-298](https://issues.apache.org/jira/browse/YETUS-298) | precommit jira plugin will try to download deleted attachments |  Critical | Test Patch | Sean Busbey | Allen Wittenauer |
| [YETUS-252](https://issues.apache.org/jira/browse/YETUS-252) | 'Max memory used' is unexplained, |  Major | website and documentation | stack | Allen Wittenauer |
| [YETUS-233](https://issues.apache.org/jira/browse/YETUS-233) | rdm release notes in markdown are corrupting underscores in some instances |  Major | Release Doc Maker | Allen Wittenauer | Allen Wittenauer |
| [YETUS-144](https://issues.apache.org/jira/browse/YETUS-144) | mvn install usually required on mvn builds |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-319](https://issues.apache.org/jira/browse/YETUS-319) | broken links on contrib page |  Blocker | website and documentation | Allen Wittenauer | Sean Busbey |
| [YETUS-297](https://issues.apache.org/jira/browse/YETUS-297) | when verify\_multijdk\_test is no, use JAVA\_HOME, not JDK\_DIR\_LIST |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-323](https://issues.apache.org/jira/browse/YETUS-323) | Update copyright statement for the new year |  Blocker | build | Sean Busbey | Sean Busbey |
| [YETUS-318](https://issues.apache.org/jira/browse/YETUS-318) | Release 0.2.0 |  Major | website and documentation | Allen Wittenauer | Allen Wittenauer |


