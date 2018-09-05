
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

## Release 0.8.0 - 2018-08-24



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-609](https://issues.apache.org/jira/browse/YETUS-609) | releasedocmaker indexer uses wrong filename |  Blocker | Release Doc Maker | Allen Wittenauer | Allen Wittenauer |
| [YETUS-643](https://issues.apache.org/jira/browse/YETUS-643) | default custom maven repo should use workspace when in jenkins mode |  Critical | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-657](https://issues.apache.org/jira/browse/YETUS-657) | volumes on non-existent files creates a directory |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-620](https://issues.apache.org/jira/browse/YETUS-620) | reject patches if they contain files with names/paths over a certain length |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-46](https://issues.apache.org/jira/browse/YETUS-46) | releasedocmaker should support JIRA authentication |  Major | Release Doc Maker | Allen Wittenauer | Allen Wittenauer |
| [YETUS-45](https://issues.apache.org/jira/browse/YETUS-45) | the test patch script should check for filenames that differ only in case |  Major | Test Patch | Owen O'Malley | Allen Wittenauer |
| [YETUS-658](https://issues.apache.org/jira/browse/YETUS-658) | Built-in Support For Unit Test Excluding |  Critical | Test Patch | Jack Bearden | Jack Bearden |
| [YETUS-591](https://issues.apache.org/jira/browse/YETUS-591) | Match git SHA1 with github pull request # |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-640](https://issues.apache.org/jira/browse/YETUS-640) | add hadolint (Dockerfile linter) support |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-605](https://issues.apache.org/jira/browse/YETUS-605) | jenkins-admin lacks version information |  Major | Test Patch | Allen Wittenauer | Akira Ajisaka |
| [YETUS-603](https://issues.apache.org/jira/browse/YETUS-603) | Update years to 2018 |  Major | website and documentation | Allen Wittenauer | Akira Ajisaka |
| [YETUS-618](https://issues.apache.org/jira/browse/YETUS-618) | Update release process to replace md5 with  sha512 |  Blocker | build | Allen Wittenauer | Akira Ajisaka |
| [YETUS-635](https://issues.apache.org/jira/browse/YETUS-635) | Maven plugin should fail when partially enabled |  Critical | Test Patch | Sean Busbey | Sean Busbey |
| [YETUS-607](https://issues.apache.org/jira/browse/YETUS-607) | Update bundle and remove version constraint from middleman-livereload |  Major | website and documentation | Allen Wittenauer | Jack Bearden |
| [YETUS-242](https://issues.apache.org/jira/browse/YETUS-242) | hadoop: add -Drequire.valgrind |  Trivial | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-406](https://issues.apache.org/jira/browse/YETUS-406) | Publish Yetus Audience Annotations to Maven Central/JCenter |  Minor | Audience Annotations, website and documentation | Michael Kobit | Allen Wittenauer |
| [YETUS-602](https://issues.apache.org/jira/browse/YETUS-602) | Add Sizzle to LICENSE |  Blocker | website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-606](https://issues.apache.org/jira/browse/YETUS-606) | jenkins-admin --help should not use .py |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-642](https://issues.apache.org/jira/browse/YETUS-642) | reaper generated shelldocs output is busted |  Major | Test Patch, website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-611](https://issues.apache.org/jira/browse/YETUS-611) | xml test should specfically say which files are broken |  Trivial | Test Patch | Allen Wittenauer | Allen Wittenauer |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-614](https://issues.apache.org/jira/browse/YETUS-614) | github\_jira\_bridge is not working after the update of ASF JIRA |  Critical | Test Patch | Akira Ajisaka | Akira Ajisaka |
| [YETUS-616](https://issues.apache.org/jira/browse/YETUS-616) | mvn dep ordering should use -fae |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-619](https://issues.apache.org/jira/browse/YETUS-619) | audience-annotations-jdiff doclet does not work on Java 9 |  Minor | Audience Annotations | Grant Henke | Akira Ajisaka |
| [YETUS-621](https://issues.apache.org/jira/browse/YETUS-621) | docker-cleanup doesn't support robot or sentinel correctly |  Critical | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-622](https://issues.apache.org/jira/browse/YETUS-622) | docker-cleanup removes non-Yetus docker images even if not in sentinel mode |  Blocker | Test Patch | Kengo Seki | Kengo Seki |
| [YETUS-623](https://issues.apache.org/jira/browse/YETUS-623) | docker-cleanup doesn't support options which start with docker correctly |  Major | Test Patch | Kengo Seki | Kengo Seki |
| [YETUS-634](https://issues.apache.org/jira/browse/YETUS-634) | maven plugin dropping '--batch-mode' maven argument |  Minor | Test Patch | Sean Busbey | Sean Busbey |
| [YETUS-615](https://issues.apache.org/jira/browse/YETUS-615) | Fix a typo in smart-apply-patch.sh |  Trivial | Test Patch | Akira Ajisaka | abipc |
| [YETUS-610](https://issues.apache.org/jira/browse/YETUS-610) | version directory is always created, even when not requested |  Major | Release Doc Maker | Allen Wittenauer | Allen Wittenauer |
| [YETUS-639](https://issues.apache.org/jira/browse/YETUS-639) | hadoop: parallel tests on \< 2.8.0 are not guarateed to work |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-641](https://issues.apache.org/jira/browse/YETUS-641) | Hardcoded pylint version |  Minor | build | Jack Bearden | Jack Bearden |
| [YETUS-432](https://issues.apache.org/jira/browse/YETUS-432) | website generation mysteriously fails when releasedocmaker fails |  Major | build, website and documentation | Ajay Yadava | Allen Wittenauer |
| [YETUS-604](https://issues.apache.org/jira/browse/YETUS-604) | Release documentation for homebrew has wrong flag |  Major | website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-647](https://issues.apache.org/jira/browse/YETUS-647) | ssh-based git repos do not work correctly under docker |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-661](https://issues.apache.org/jira/browse/YETUS-661) | ant/gradle/maven assumes container $HOME and host $HOME are the same |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-646](https://issues.apache.org/jira/browse/YETUS-646) | curl grabbed the wrong patch |  Critical | Test Patch | Allen Wittenauer | Sean Busbey |
| [YETUS-660](https://issues.apache.org/jira/browse/YETUS-660) | checkstyle should report when it fails to execute |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-671](https://issues.apache.org/jira/browse/YETUS-671) | Remove 0.4.0 and 0.5.0 symlinks |  Major | website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-672](https://issues.apache.org/jira/browse/YETUS-672) | unit-test-filter-file.example and javadoc's script.js need an asf license exception |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-662](https://issues.apache.org/jira/browse/YETUS-662) | integration test runner |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-630](https://issues.apache.org/jira/browse/YETUS-630) | Add HDDS subproject to the Hadoop personality |  Major | Test Patch | Elek, Marton | Elek, Marton |
| [YETUS-668](https://issues.apache.org/jira/browse/YETUS-668) | EOL 0.4.0 and 0.5.0 |  Major | build, website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-669](https://issues.apache.org/jira/browse/YETUS-669) | 0.8.0 Release |  Major | build | Allen Wittenauer | Allen Wittenauer |


