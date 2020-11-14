
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

## Release 0.9.0 - 2019-01-18



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-15](https://issues.apache.org/jira/browse/YETUS-15) | build environment |  Critical | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-681](https://issues.apache.org/jira/browse/YETUS-681) | Add robots plugin type |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-723](https://issues.apache.org/jira/browse/YETUS-723) | Overhaul the docker support for 2018 |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-750](https://issues.apache.org/jira/browse/YETUS-750) | don't try patch on a git format-patch file |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-751](https://issues.apache.org/jira/browse/YETUS-751) | line comments generate too many messages; not obvious how to disable |  Minor | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-721](https://issues.apache.org/jira/browse/YETUS-721) | personalities shouldn't directly set repository information |  Critical | Precommit | Allen Wittenauer | Allen Wittenauer |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-35](https://issues.apache.org/jira/browse/YETUS-35) | add support for jshint |  Major | Precommit | Kengo Seki | Allen Wittenauer |
| [YETUS-714](https://issues.apache.org/jira/browse/YETUS-714) | add yamllint support |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-690](https://issues.apache.org/jira/browse/YETUS-690) | releasedocmaker has a hard-coded reference to ASF JIRA |  Minor | Release Doc Maker | Allen Wittenauer | Allen Wittenauer |
| [YETUS-707](https://issues.apache.org/jira/browse/YETUS-707) | Fix typo in documentation |  Major | website and documentation | Fokko Driesprong | Fokko Driesprong |
| [YETUS-701](https://issues.apache.org/jira/browse/YETUS-701) | take jdk9 out of default dockerfile |  Major | build, Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-722](https://issues.apache.org/jira/browse/YETUS-722) | Upgrade bats to bats-core |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-717](https://issues.apache.org/jira/browse/YETUS-717) | Change hadolint plugin to support all Dockerfiles, not just 'Dockerfile' |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-725](https://issues.apache.org/jira/browse/YETUS-725) | Shortcut qbt calcdiffs |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-716](https://issues.apache.org/jira/browse/YETUS-716) | Upgrade pylint to support both python2 and python3 |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-699](https://issues.apache.org/jira/browse/YETUS-699) | HTML report doesn't generate links when console-urls is turned on |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-708](https://issues.apache.org/jira/browse/YETUS-708) | Clean up the source |  Major | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-738](https://issues.apache.org/jira/browse/YETUS-738) | Some Jenkinsfile improvements |  Major | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-37](https://issues.apache.org/jira/browse/YETUS-37) | make test-patch ruby-lint plugin configurable |  Major | Precommit | Kengo Seki | Allen Wittenauer |
| [YETUS-36](https://issues.apache.org/jira/browse/YETUS-36) | make test-patch rubocop plugin configurable |  Major | Precommit | Kengo Seki | Allen Wittenauer |
| [YETUS-733](https://issues.apache.org/jira/browse/YETUS-733) | javadocs need to be written for shelldocs |  Major | ShellDocs, website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-732](https://issues.apache.org/jira/browse/YETUS-732) | javadocs need to be written for releasedocmaker |  Major | Release Doc Maker, website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-748](https://issues.apache.org/jira/browse/YETUS-748) | docker socket group needs handling in dind mode |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-731](https://issues.apache.org/jira/browse/YETUS-731) | docs need to be written for yetus-maven-plugin |  Major | website and documentation | Allen Wittenauer | Allen Wittenauer |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-695](https://issues.apache.org/jira/browse/YETUS-695) | Fix pylint warnings |  Minor | Release Doc Maker, ShellDocs | Akira Ajisaka | Akira Ajisaka |
| [YETUS-710](https://issues.apache.org/jira/browse/YETUS-710) | test-patch.sh fails when using a git worktree "repository" |  Minor | Precommit | Lars Francke | Lars Francke |
| [YETUS-715](https://issues.apache.org/jira/browse/YETUS-715) | yetus always needs mvninstall from root |  Blocker | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-718](https://issues.apache.org/jira/browse/YETUS-718) | whitespace plugin only exempts root level Makefiles |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-730](https://issues.apache.org/jira/browse/YETUS-730) | Delete /root/.m2 from apache/yetus image |  Major | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-713](https://issues.apache.org/jira/browse/YETUS-713) | pylint: rewrite to make it easier to maintain and fix stderr output in brief report |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-719](https://issues.apache.org/jira/browse/YETUS-719) | github basic authentication is broken |  Blocker | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-729](https://issues.apache.org/jira/browse/YETUS-729) | in-progress docs post-mavenization are broken |  Blocker | website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-720](https://issues.apache.org/jira/browse/YETUS-720) | github/jira bridge collapses when jira issues list isn't defined |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-727](https://issues.apache.org/jira/browse/YETUS-727) | whitespace plugin: multiple fixes |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-739](https://issues.apache.org/jira/browse/YETUS-739) | yetus' mvn site fails when run with built-in dockerifle |  Blocker | build, Precommit, website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-746](https://issues.apache.org/jira/browse/YETUS-746) | precommit-apidocs aren't being generated |  Critical | website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-735](https://issues.apache.org/jira/browse/YETUS-735) | docker-cleanup throwing errors |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-755](https://issues.apache.org/jira/browse/YETUS-755) | bundler is breaking dockerfile building |  Blocker | build, Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-109](https://issues.apache.org/jira/browse/YETUS-109) | documentation: clarify --plugin |  Minor | Precommit, website and documentation | Tony Kurc | Allen Wittenauer |
| [YETUS-747](https://issues.apache.org/jira/browse/YETUS-747) | --dockerind usage information is wrong |  Trivial | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-737](https://issues.apache.org/jira/browse/YETUS-737) | perms are wrong on user\_params.txt |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-757](https://issues.apache.org/jira/browse/YETUS-757) | Jenkinsfile isn't defaulting to docker mode on |  Blocker | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-766](https://issues.apache.org/jira/browse/YETUS-766) | links are broken on in-progress page |  Minor | website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-764](https://issues.apache.org/jira/browse/YETUS-764) | test-patch running in a pipeline isn't getting killed |  Blocker | build, Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-765](https://issues.apache.org/jira/browse/YETUS-765) | test-patch generating linecomments errors |  Blocker | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-752](https://issues.apache.org/jira/browse/YETUS-752) | Jenkinsfile: only send mail to dev@ on apache.org |  Major | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-686](https://issues.apache.org/jira/browse/YETUS-686) | update homebrew formula with missing dependencies |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-770](https://issues.apache.org/jira/browse/YETUS-770) | yetus-maven-plugin build helper adds source files, not dirs |  Blocker | build | Allen Wittenauer | Allen Wittenauer |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-682](https://issues.apache.org/jira/browse/YETUS-682) | add gitlab as a supported bugsystem |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-683](https://issues.apache.org/jira/browse/YETUS-683) | Publish apache/yetus docker images on hub.docker.com |  Major | Precommit, website and documentation | Allen Wittenauer | Allen Wittenauer |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-712](https://issues.apache.org/jira/browse/YETUS-712) | Bump Hadolint to 1.15.0 |  Major | Precommit | Fokko Driesprong | Allen Wittenauer |
| [YETUS-736](https://issues.apache.org/jira/browse/YETUS-736) | Update docs, etc, post gitbox move |  Major | build, website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-768](https://issues.apache.org/jira/browse/YETUS-768) | Update year to 2019 |  Major | build, website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-767](https://issues.apache.org/jira/browse/YETUS-767) | 0.9.0 Release |  Major | build | Allen Wittenauer | Allen Wittenauer |


