
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

## Release 0.1.0 - 2015-12-14

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-5](https://issues.apache.org/jira/browse/YETUS-5) | Support per-instance maven repos |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-33](https://issues.apache.org/jira/browse/YETUS-33) | committer mode for smart-apply-patch |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-86](https://issues.apache.org/jira/browse/YETUS-86) | add C/C++ compile support |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-114](https://issues.apache.org/jira/browse/YETUS-114) | Add no-op build tool for projects that don't have one. |  Major | Test Patch | Sean Busbey | Sean Busbey |
| [YETUS-121](https://issues.apache.org/jira/browse/YETUS-121) | support non-java-build-tool asflicense |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-143](https://issues.apache.org/jira/browse/YETUS-143) | add support for JMeter |  Minor | Test Patch | Kengo Seki | Kengo Seki |
| [YETUS-77](https://issues.apache.org/jira/browse/YETUS-77) | add bugzilla support |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-2](https://issues.apache.org/jira/browse/YETUS-2) | Build website |  Critical | website and documentation | Sean Busbey | Allen Wittenauer |
| [YETUS-26](https://issues.apache.org/jira/browse/YETUS-26) | rebrand for yetus |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-31](https://issues.apache.org/jira/browse/YETUS-31) | releasedocmaker should use the Important flag in jira |  Major | Release Doc Maker | Allen Wittenauer | Kengo Seki |
| [YETUS-98](https://issues.apache.org/jira/browse/YETUS-98) | enable parallel tests on hadoop |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-110](https://issues.apache.org/jira/browse/YETUS-110) | typo fixes on test-patch basic documentation |  Trivial | website and documentation | Tony Kurc | Tony Kurc |
| [YETUS-128](https://issues.apache.org/jira/browse/YETUS-128) | Jira plugin should be configurable to accept issue status other than 'Patch Available' |  Major | Test Patch | Kengo Seki | Kengo Seki |
| [YETUS-141](https://issues.apache.org/jira/browse/YETUS-141) | make module for jdiff doclet optional |  Major | Audience Annotations | Sean Busbey | Sean Busbey |
| [YETUS-161](https://issues.apache.org/jira/browse/YETUS-161) | fix spelling error in maven plugin |  Trivial | Test Patch | Tony Kurc | Tony Kurc |
| [YETUS-157](https://issues.apache.org/jira/browse/YETUS-157) | build tools should force compile if their control file is patched |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-177](https://issues.apache.org/jira/browse/YETUS-177) | add yetus\_abs to yetuslib |  Trivial | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-81](https://issues.apache.org/jira/browse/YETUS-81) | Publish generated apidocs on website |  Critical | Audience Annotations, Test Patch, website and documentation | Sean Busbey | Sean Busbey |
| [YETUS-163](https://issues.apache.org/jira/browse/YETUS-163) | parameterize site for releases |  Blocker | website and documentation | Sean Busbey | Sean Busbey |
| [YETUS-218](https://issues.apache.org/jira/browse/YETUS-218) | define project pylintrc file |  Major | build | Sean Busbey | Sean Busbey |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-28](https://issues.apache.org/jira/browse/YETUS-28) | if CHANGED\_FILES is corrupt, find\_changed\_modules never returns |  Major | Test Patch | Allen Wittenauer | Kengo Seki |
| [YETUS-55](https://issues.apache.org/jira/browse/YETUS-55) | fix recovery of broken rebase code |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-9](https://issues.apache.org/jira/browse/YETUS-9) | Update .gitignore to reflect Yetus instead of Hadoop |  Major | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-50](https://issues.apache.org/jira/browse/YETUS-50) | asflicense is easily tricked |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-63](https://issues.apache.org/jira/browse/YETUS-63) | The menu button on Yetus website is invisible when viewed from mobile devices |  Minor | website and documentation | Kengo Seki | Allen Wittenauer |
| [YETUS-40](https://issues.apache.org/jira/browse/YETUS-40) | patch file confuses test-patch (date format problems) |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-67](https://issues.apache.org/jira/browse/YETUS-67) | XML plugin raises a false alarm against a removed file |  Major | Test Patch | Kengo Seki | Kengo Seki |
| [YETUS-68](https://issues.apache.org/jira/browse/YETUS-68) | Shellcheck plugin shows a warning against a removed file |  Major | Test Patch | Kengo Seki | Kengo Seki |
| [YETUS-41](https://issues.apache.org/jira/browse/YETUS-41) | github\_find\_jira\_title in test-patch github plugin returns 0 even if jira\_determine\_issue failed |  Major | Test Patch | Kengo Seki | Kengo Seki |
| [YETUS-66](https://issues.apache.org/jira/browse/YETUS-66) | Update apache license on all files |  Blocker | website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-72](https://issues.apache.org/jira/browse/YETUS-72) | Unassigned variable ${STARTDIR}? |  Major | Test Patch | Kengo Seki | Kengo Seki |
| [YETUS-82](https://issues.apache.org/jira/browse/YETUS-82) | personality\_plugins with multiple entries doesn't work |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-85](https://issues.apache.org/jira/browse/YETUS-85) | test types aren't getting initialized |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-97](https://issues.apache.org/jira/browse/YETUS-97) | branch detection cut bug |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-95](https://issues.apache.org/jira/browse/YETUS-95) | docker not working on jenkins w/hadoop |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-96](https://issues.apache.org/jira/browse/YETUS-96) | multijdkdirs shouldn't show errors on bad input |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-88](https://issues.apache.org/jira/browse/YETUS-88) | Dockerfile is missing bats |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-74](https://issues.apache.org/jira/browse/YETUS-74) | document test formats |  Major | Test Patch, website and documentation | Allen Wittenauer | Kengo Seki |
| [YETUS-71](https://issues.apache.org/jira/browse/YETUS-71) | releasedocmaker shouldn't use all desc when no release notes field |  Major | Release Doc Maker | Allen Wittenauer | Kengo Seki |
| [YETUS-117](https://issues.apache.org/jira/browse/YETUS-117) | Nonexistent function invocation in the nobuild plugin |  Minor | Test Patch | Kengo Seki | Kengo Seki |
| [YETUS-113](https://issues.apache.org/jira/browse/YETUS-113) | On non-docker reexec, test patch mistakenly uses 'plugins' arg instead of 'user-plugins' |  Critical | Test Patch | Sean Busbey | Sean Busbey |
| [YETUS-102](https://issues.apache.org/jira/browse/YETUS-102) | Some underscores in the documents are not correctly escaped |  Trivial | website and documentation | Kengo Seki | Kengo Seki |
| [YETUS-92](https://issues.apache.org/jira/browse/YETUS-92) | checkstyle bogus screen output |  Major | Test Patch | Allen Wittenauer | Kengo Seki |
| [YETUS-120](https://issues.apache.org/jira/browse/YETUS-120) | Add missing @params to patchfiles.sh |  Trivial | Test Patch, website and documentation | jun aoki | jun aoki |
| [YETUS-129](https://issues.apache.org/jira/browse/YETUS-129) | Add Geode personality |  Minor | Test Patch | jun aoki | jun aoki |
| [YETUS-127](https://issues.apache.org/jira/browse/YETUS-127) | small additional note for test-patch.sh --plugins parameter. |  Trivial | Test Patch | jun aoki | jun aoki |
| [YETUS-137](https://issues.apache.org/jira/browse/YETUS-137) | hadoop triggers java tests for pure-bash patch |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-93](https://issues.apache.org/jira/browse/YETUS-93) | tap needs to verify directories |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-94](https://issues.apache.org/jira/browse/YETUS-94) | docker cleanup invalid date |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-132](https://issues.apache.org/jira/browse/YETUS-132) | javadoc test does not run if javac test is disabled |  Major | Test Patch | Kengo Seki | Kengo Seki |
| [YETUS-147](https://issues.apache.org/jira/browse/YETUS-147) | Failed test table mixes result from different JDKs |  Major | Test Patch | Marco Zühlke | Marco Zühlke |
| [YETUS-138](https://issues.apache.org/jira/browse/YETUS-138) | Skipping maven poms that don't package causes testing holes |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-134](https://issues.apache.org/jira/browse/YETUS-134) | asflicense test should not be always added |  Major | Test Patch | Kengo Seki | Kengo Seki |
| [YETUS-153](https://issues.apache.org/jira/browse/YETUS-153) | asflicense plugin does not work if asflicense-rat-excludes option is specified |  Major | Test Patch | Kengo Seki | Kengo Seki |
| [YETUS-133](https://issues.apache.org/jira/browse/YETUS-133) | Geode personality does not contain ASF license |  Major | Test Patch | Kengo Seki | Kengo Seki |
| [YETUS-103](https://issues.apache.org/jira/browse/YETUS-103) | Wrong hook name in the bug system support document |  Minor | website and documentation | Kengo Seki | Kengo Seki |
| [YETUS-142](https://issues.apache.org/jira/browse/YETUS-142) | compile gets limited to 'warning' in generic log handler |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-155](https://issues.apache.org/jira/browse/YETUS-155) | add usage for asflicense plugin |  Minor | Test Patch | Kengo Seki | Marco Zühlke |
| [YETUS-87](https://issues.apache.org/jira/browse/YETUS-87) | whitespace console message is misleading |  Trivial | Test Patch | Allen Wittenauer | Marco Zühlke |
| [YETUS-23](https://issues.apache.org/jira/browse/YETUS-23) | findbugs pre-apply check failures gives error as if convertXmlToText invocation fails |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-179](https://issues.apache.org/jira/browse/YETUS-179) | Clean up asflicense errors |  Blocker | build | Sean Busbey | Kengo Seki |
| [YETUS-174](https://issues.apache.org/jira/browse/YETUS-174) | releasedocmaker bug with ranges |  Major | Release Doc Maker | Allen Wittenauer | Kengo Seki |
| [YETUS-123](https://issues.apache.org/jira/browse/YETUS-123) | Various Docker mode fixes: plug-in issues, local patch file problems, availability, & Dockerfile re-usability |  Critical | Test Patch | Sean Busbey | Allen Wittenauer |
| [YETUS-176](https://issues.apache.org/jira/browse/YETUS-176) | hadoop: mvn site tests aren't getting run |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-154](https://issues.apache.org/jira/browse/YETUS-154) | Specifying help option before plugins option hides plugin-specific help messages |  Trivial | Test Patch | Kengo Seki | Marco Zühlke |
| [YETUS-186](https://issues.apache.org/jira/browse/YETUS-186) | non-existent dockerfile should fail or fallback |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-171](https://issues.apache.org/jira/browse/YETUS-171) | patches that don't apply are not getting reported back to JIRA |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-196](https://issues.apache.org/jira/browse/YETUS-196) | default dockerfile isn't being used |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-89](https://issues.apache.org/jira/browse/YETUS-89) | Variable name "HOW\_TO\_CONTRIBUTE" is misleading |  Trivial | Test Patch | Kengo Seki | Kengo Seki |
| [YETUS-193](https://issues.apache.org/jira/browse/YETUS-193) | Wrong format for return values in shelldoc generated docs |  Minor | website and documentation | Kengo Seki | Kengo Seki |
| [YETUS-170](https://issues.apache.org/jira/browse/YETUS-170) | hadoop mvninstall should run changed modules in dependency order |  Major | Test Patch | Vinayakumar B | Vinayakumar B |
| [YETUS-202](https://issues.apache.org/jira/browse/YETUS-202) | 171 incomplete |  Critical | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-210](https://issues.apache.org/jira/browse/YETUS-210) | Link to pylint stderr file is invalid on Jenkins |  Major | Test Patch | Kengo Seki | Kengo Seki |
| [YETUS-189](https://issues.apache.org/jira/browse/YETUS-189) | shelldocs ignoring --skipprnorep |  Critical | ShellDocs | Sean Busbey | Kengo Seki |
| [YETUS-211](https://issues.apache.org/jira/browse/YETUS-211) | shelldocs, release-doc-maker, and precommit all missing version info |  Blocker | Release Doc Maker, ShellDocs, Test Patch | Sean Busbey | Sean Busbey |
| [YETUS-219](https://issues.apache.org/jira/browse/YETUS-219) | pylint plugin displays grep error message if patch contains modification to python and other files |  Minor | Test Patch | Kengo Seki | Marco Zühlke |
| [YETUS-217](https://issues.apache.org/jira/browse/YETUS-217) | docker fallback mode isn't reliable |  Blocker | Test Patch | Tsuyoshi Ozawa | Allen Wittenauer |
| [YETUS-220](https://issues.apache.org/jira/browse/YETUS-220) | can't cat the version file in re-exec or dockermode |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-223](https://issues.apache.org/jira/browse/YETUS-223) | hadoop: not compiling libwebhdfs in docker mode under jenkins |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-212](https://issues.apache.org/jira/browse/YETUS-212) | "bundle exec middleman" fails due to the lack of js runtime |  Major | website and documentation | Kengo Seki | Kengo Seki |
| [YETUS-231](https://issues.apache.org/jira/browse/YETUS-231) | Fix dead links in README |  Trivial | website and documentation | Akihiro Suda | Akihiro Suda |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-7](https://issues.apache.org/jira/browse/YETUS-7) | update top level LICENSE and NOTICE |  Blocker | website and documentation | Sean Busbey | Allen Wittenauer |
| [YETUS-1](https://issues.apache.org/jira/browse/YETUS-1) | Migration of repo history from Hadoop |  Blocker | build | Sean Busbey | Sean Busbey |
| [YETUS-54](https://issues.apache.org/jira/browse/YETUS-54) | Add Yetus parent POM and top-level POM |  Major | Audience Annotations, build | Andrew Bayer | Sean Busbey |
| [YETUS-3](https://issues.apache.org/jira/browse/YETUS-3) | update audience annotations for move to yetus tlp |  Blocker | Audience Annotations | Sean Busbey | Sean Busbey |
| [YETUS-59](https://issues.apache.org/jira/browse/YETUS-59) | Verify any Cat X runtime dependencies are optional |  Blocker | Test Patch | Sean Busbey | Allen Wittenauer |
| [YETUS-126](https://issues.apache.org/jira/browse/YETUS-126) | break jdiff doclet into independent artifact |  Major | Audience Annotations | Sean Busbey | Sean Busbey |
| [YETUS-6](https://issues.apache.org/jira/browse/YETUS-6) | reorganize repo layout for break from Hadoop code base |  Blocker | build | Sean Busbey | Sean Busbey |
| [YETUS-64](https://issues.apache.org/jira/browse/YETUS-64) | file our DOAP |  Blocker | website and documentation | Sean Busbey | Allen Wittenauer |
| [YETUS-124](https://issues.apache.org/jira/browse/YETUS-124) | add exemplar drill personality |  Major | Test Patch | Sean Busbey | Kengo Seki |
| [YETUS-116](https://issues.apache.org/jira/browse/YETUS-116) | add checkstyle option for maven goal |  Minor | Test Patch | Tony Kurc | Tony Kurc |
| [YETUS-162](https://issues.apache.org/jira/browse/YETUS-162) | rename 'latest' documentation to 'in-progress' to denote non-release status. |  Major | website and documentation | Sean Busbey | Sean Busbey |
| [YETUS-118](https://issues.apache.org/jira/browse/YETUS-118) | set up yetus precommit job |  Critical | build | Sean Busbey | Sean Busbey |
| [YETUS-192](https://issues.apache.org/jira/browse/YETUS-192) | don't store intermediate markdown files for precommit's shelldocs. |  Major | build, website and documentation | Sean Busbey | Sean Busbey |
| [YETUS-216](https://issues.apache.org/jira/browse/YETUS-216) | create script to make release artifacts |  Major | build | Sean Busbey | Sean Busbey |
| [YETUS-228](https://issues.apache.org/jira/browse/YETUS-228) | Release 0.1.0 |  Major | website and documentation | Sean Busbey | Sean Busbey |


