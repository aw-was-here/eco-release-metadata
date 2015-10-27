
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

## Release 0.1.0 - Unreleased (as of 2015-10-27)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-121](https://issues.apache.org/jira/browse/YETUS-121) | support non-java-build-tool asflicense |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-114](https://issues.apache.org/jira/browse/YETUS-114) | Add no-op build tool for projects that don't have one. |  Major | Test Patch | Sean Busbey | Sean Busbey |
| [YETUS-86](https://issues.apache.org/jira/browse/YETUS-86) | add C/C++ compile support |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-33](https://issues.apache.org/jira/browse/YETUS-33) | committer mode for smart-apply-patch |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-26](https://issues.apache.org/jira/browse/YETUS-26) | rebrand for yetus |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-5](https://issues.apache.org/jira/browse/YETUS-5) | Support per-instance maven repos |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-128](https://issues.apache.org/jira/browse/YETUS-128) | Jira plugin should be configurable to accept issue status other than 'Patch Available' |  Major | Test Patch | Kengo Seki | Kengo Seki |
| [YETUS-110](https://issues.apache.org/jira/browse/YETUS-110) | typo fixes on test-patch basic documentation |  Trivial | website and documentation | Tony Kurc | Tony Kurc |
| [YETUS-98](https://issues.apache.org/jira/browse/YETUS-98) | enable parallel tests on hadoop |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-31](https://issues.apache.org/jira/browse/YETUS-31) | releasedocmaker should use the Important flag in jira |  Major | Release Doc Maker | Allen Wittenauer | Kengo Seki |
| [YETUS-2](https://issues.apache.org/jira/browse/YETUS-2) | Build website |  Critical | website and documentation | Sean Busbey | Allen Wittenauer |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-129](https://issues.apache.org/jira/browse/YETUS-129) | Add Geode personality |  Minor | Test Patch | jun aoki | jun aoki |
| [YETUS-127](https://issues.apache.org/jira/browse/YETUS-127) | small additional note for test-patch.sh --plugins parameter. |  Trivial | Test Patch | jun aoki | jun aoki |
| [YETUS-120](https://issues.apache.org/jira/browse/YETUS-120) | Add missing @params to patchfiles.sh |  Trivial | Test Patch, website and documentation | jun aoki | jun aoki |
| [YETUS-117](https://issues.apache.org/jira/browse/YETUS-117) | Nonexistent function invocation in the nobuild plugin |  Minor | Test Patch | Kengo Seki | Kengo Seki |
| [YETUS-113](https://issues.apache.org/jira/browse/YETUS-113) | On non-docker reexec, test patch mistakenly uses 'plugins' arg instead of 'user-plugins' |  Critical | Test Patch | Sean Busbey | Sean Busbey |
| [YETUS-102](https://issues.apache.org/jira/browse/YETUS-102) | Some underscores in the documents are not correctly escaped |  Trivial | website and documentation | Kengo Seki | Kengo Seki |
| [YETUS-97](https://issues.apache.org/jira/browse/YETUS-97) | branch detection cut bug |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-96](https://issues.apache.org/jira/browse/YETUS-96) | multijdkdirs shouldn't show errors on bad input |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-95](https://issues.apache.org/jira/browse/YETUS-95) | docker not working on jenkins w/hadoop |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-92](https://issues.apache.org/jira/browse/YETUS-92) | checkstyle bogus screen output |  Major | Test Patch | Allen Wittenauer | Kengo Seki |
| [YETUS-88](https://issues.apache.org/jira/browse/YETUS-88) | Dockerfile is missing bats |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-85](https://issues.apache.org/jira/browse/YETUS-85) | test types aren't getting initialized |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-82](https://issues.apache.org/jira/browse/YETUS-82) | personality\_plugins with multiple entries doesn't work |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-74](https://issues.apache.org/jira/browse/YETUS-74) | document test formats |  Major | Test Patch, website and documentation | Allen Wittenauer | Kengo Seki |
| [YETUS-72](https://issues.apache.org/jira/browse/YETUS-72) | Unassigned variable ${STARTDIR}? |  Major | Test Patch | Kengo Seki | Kengo Seki |
| [YETUS-71](https://issues.apache.org/jira/browse/YETUS-71) | releasedocmaker shouldn't use all desc when no release notes field |  Major | Release Doc Maker | Allen Wittenauer | Kengo Seki |
| [YETUS-68](https://issues.apache.org/jira/browse/YETUS-68) | Shellcheck plugin shows a warning against a removed file |  Major | Test Patch | Kengo Seki | Kengo Seki |
| [YETUS-67](https://issues.apache.org/jira/browse/YETUS-67) | XML plugin raises a false alarm against a removed file |  Major | Test Patch | Kengo Seki | Kengo Seki |
| [YETUS-66](https://issues.apache.org/jira/browse/YETUS-66) | Update apache license on all files |  Blocker | website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-63](https://issues.apache.org/jira/browse/YETUS-63) | The menu button on Yetus website is invisible when viewed from mobile devices |  Minor | website and documentation | Kengo Seki | Allen Wittenauer |
| [YETUS-55](https://issues.apache.org/jira/browse/YETUS-55) | fix recovery of broken rebase code |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-50](https://issues.apache.org/jira/browse/YETUS-50) | asflicense is easily tricked |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-41](https://issues.apache.org/jira/browse/YETUS-41) | github\_find\_jira\_title in test-patch github plugin returns 0 even if jira\_determine\_issue failed |  Major | Test Patch | Kengo Seki | Kengo Seki |
| [YETUS-40](https://issues.apache.org/jira/browse/YETUS-40) | patch file confuses test-patch (date format problems) |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-28](https://issues.apache.org/jira/browse/YETUS-28) | if CHANGED\_FILES is corrupt, find\_changed\_modules never returns |  Major | Test Patch | Allen Wittenauer | Kengo Seki |
| [YETUS-9](https://issues.apache.org/jira/browse/YETUS-9) | Update .gitignore to reflect Yetus instead of Hadoop |  Major | build | Allen Wittenauer | Allen Wittenauer |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-126](https://issues.apache.org/jira/browse/YETUS-126) | break jdiff doclet into independent artifact |  Major | Audience Annotations | Sean Busbey | Sean Busbey |
| [YETUS-59](https://issues.apache.org/jira/browse/YETUS-59) | Verify any Cat X runtime dependencies are optional |  Blocker | Test Patch | Sean Busbey | Allen Wittenauer |
| [YETUS-54](https://issues.apache.org/jira/browse/YETUS-54) | Add Yetus parent POM and top-level POM |  Major | Audience Annotations, build | Andrew Bayer | Sean Busbey |
| [YETUS-7](https://issues.apache.org/jira/browse/YETUS-7) | update top level LICENSE and NOTICE |  Blocker | website and documentation | Sean Busbey | Allen Wittenauer |
| [YETUS-3](https://issues.apache.org/jira/browse/YETUS-3) | update audience annotations for move to yetus tlp |  Blocker | Audience Annotations | Sean Busbey | Sean Busbey |
| [YETUS-1](https://issues.apache.org/jira/browse/YETUS-1) | Migration of repo history from Hadoop |  Blocker | build | Sean Busbey | Sean Busbey |


