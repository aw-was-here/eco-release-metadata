
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

## Release 0.13.0 - 2020-11-04



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-964](https://issues.apache.org/jira/browse/YETUS-964) | Replace prototool with buf |  Critical | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-982](https://issues.apache.org/jira/browse/YETUS-982) | Upgrade to Ubuntu Focal and update all dependencies/built-ins |  Major | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-986](https://issues.apache.org/jira/browse/YETUS-986) | Switch development branch to 'main' |  Major | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-995](https://issues.apache.org/jira/browse/YETUS-995) | vote table should have access to the log filename |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-994](https://issues.apache.org/jira/browse/YETUS-994) | Add GitHub Status as a report type |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-966](https://issues.apache.org/jira/browse/YETUS-966) | don't reset on FETCH\_HEAD for git tags |  Critical | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1000](https://issues.apache.org/jira/browse/YETUS-1000) | GitHub Actions: use GitHub Checks for line comments support |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1012](https://issues.apache.org/jira/browse/YETUS-1012) | Major overhaul of precommit documentation |  Major | website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1017](https://issues.apache.org/jira/browse/YETUS-1017) | Rework post-processing comparison to de-duplicate code |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1019](https://issues.apache.org/jira/browse/YETUS-1019) | Rename 'whitespace' to 'blanks |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-992](https://issues.apache.org/jira/browse/YETUS-992) | Create and publish a github action |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1028](https://issues.apache.org/jira/browse/YETUS-1028) | Various missing github annotations |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1033](https://issues.apache.org/jira/browse/YETUS-1033) | Move homebrew tap into it's own repository |  Blocker | build, homebrew, website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1046](https://issues.apache.org/jira/browse/YETUS-1046) | remove jython releasedocmaker and shelldocs |  Major | build, Release Doc Maker, ShellDocs | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1061](https://issues.apache.org/jira/browse/YETUS-1061) | remove github user and password support |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1059](https://issues.apache.org/jira/browse/YETUS-1059) | Github Status Recovery Tool |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-989](https://issues.apache.org/jira/browse/YETUS-989) | Upgrade middleman to v4.3.10 to fix some security issues |  Major | website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-988](https://issues.apache.org/jira/browse/YETUS-988) | Update rubocop settings for homebrew |  Major | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-990](https://issues.apache.org/jira/browse/YETUS-990) | ENTRYPOINT for apache/yetus:(tag) container images |  Major | build, Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1054](https://issues.apache.org/jira/browse/YETUS-1054) | Support buildkit |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-970](https://issues.apache.org/jira/browse/YETUS-970) | Add an emoji column to the gitlab vote table |  Major | Precommit | Yuxuan Wang | Yuxuan Wang |
| [YETUS-967](https://issues.apache.org/jira/browse/YETUS-967) | Switch everything to https://downloads.apache.org |  Major | build, website and documentation | Allen Wittenauer | Akira Ajisaka |
| [YETUS-981](https://issues.apache.org/jira/browse/YETUS-981) | Update spotbugs to 4.1.2 in docker image |  Major | Precommit | Istvan Toth | Istvan Toth |
| [YETUS-978](https://issues.apache.org/jira/browse/YETUS-978) | missing exclusions file shouldn't be fatal |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-971](https://issues.apache.org/jira/browse/YETUS-971) | update gitlab code to use newer env vars |  Critical | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-917](https://issues.apache.org/jira/browse/YETUS-917) | Remove caches to shrink docker image size |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-921](https://issues.apache.org/jira/browse/YETUS-921) | Update docs to highlight Docker configuration functions |  Minor | website and documentation | Clay B. | Clay B. |
| [YETUS-21](https://issues.apache.org/jira/browse/YETUS-21) | patch to a unit test should only trigger that unit test |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1001](https://issues.apache.org/jira/browse/YETUS-1001) | Remove ASF Jenkins hacks from Jenkinsfile |  Major | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1004](https://issues.apache.org/jira/browse/YETUS-1004) | cleanup python3 a bit more in dockerfile |  Major | build, Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1008](https://issues.apache.org/jira/browse/YETUS-1008) | Add .asf.yaml to allow GitHub to JIRA integration |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [YETUS-1007](https://issues.apache.org/jira/browse/YETUS-1007) | Logging when adding GitHub commit statuses |  Major | Precommit | Akira Ajisaka | Akira Ajisaka |
| [YETUS-1006](https://issues.apache.org/jira/browse/YETUS-1006) | Determine git sha |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1003](https://issues.apache.org/jira/browse/YETUS-1003) | Autodetermine PATCH\_BRANCH\_DEFAULT on GitHub |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1014](https://issues.apache.org/jira/browse/YETUS-1014) | GitHub/GitLab: fill in project name from repo |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1016](https://issues.apache.org/jira/browse/YETUS-1016) | Various test-patch performance improvements |  Minor | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1021](https://issues.apache.org/jira/browse/YETUS-1021) | Lots of minor documentation updates post-overhaul |  Major | build, website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1038](https://issues.apache.org/jira/browse/YETUS-1038) | Disable jira and gitlab in action |  Major | github-action | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1037](https://issues.apache.org/jira/browse/YETUS-1037) | yetus-test-patch-action missing .asf.yaml |  Trivial | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1031](https://issues.apache.org/jira/browse/YETUS-1031) | Create yetus-test-patch-action release script |  Major | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1032](https://issues.apache.org/jira/browse/YETUS-1032) | Automate and update release documentation |  Major | build, github-action, website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1036](https://issues.apache.org/jira/browse/YETUS-1036) | Provide comprehensive changelogs and release notes |  Major | Release Doc Maker, website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1040](https://issues.apache.org/jira/browse/YETUS-1040) | all releasenotes page should not '--usetoday' |  Minor | website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-889](https://issues.apache.org/jira/browse/YETUS-889) | change golangci-lint to give all output |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1053](https://issues.apache.org/jira/browse/YETUS-1053) | Add Apache Creadur RAT to the docker image |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1064](https://issues.apache.org/jira/browse/YETUS-1064) | bufcompat does not generate annotations. |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1063](https://issues.apache.org/jira/browse/YETUS-1063) | Enhance documentation for docker-cleanup and docker in general |  Major | Precommit, website and documentation | Allen Wittenauer | Allen Wittenauer |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-972](https://issues.apache.org/jira/browse/YETUS-972) | Make javadoc phase and goal configurable in maven.sh |  Major | Precommit | Akira Ajisaka | Akira Ajisaka |
| [YETUS-974](https://issues.apache.org/jira/browse/YETUS-974) | start-build-env.sh fails |  Critical | build | Akira Ajisaka | Akira Ajisaka |
| [YETUS-985](https://issues.apache.org/jira/browse/YETUS-985) | binaries are not marked for execution in maven artifacts |  Blocker | build, Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-991](https://issues.apache.org/jira/browse/YETUS-991) | Downgrade pylint to 2.5.3 |  Blocker | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-998](https://issues.apache.org/jira/browse/YETUS-998) | Post vote table changes glitches |  Blocker | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1013](https://issues.apache.org/jira/browse/YETUS-1013) | The --sentinel option in test-patch.sh should also set ROBOT to true |  Critical | Precommit | Duo Zhang | Duo Zhang |
| [YETUS-940](https://issues.apache.org/jira/browse/YETUS-940) | Update for Semaphore CI 2.0 |  Minor | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1020](https://issues.apache.org/jira/browse/YETUS-1020) | golangci-lint is crashing |  Blocker | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-906](https://issues.apache.org/jira/browse/YETUS-906) | Site goal hangs when building Website/Documentation module |  Major | Release Doc Maker, website and documentation | Sean Busbey | Sean Busbey |
| [YETUS-1018](https://issues.apache.org/jira/browse/YETUS-1018) | CircleCI adding space to artifact URL |  Minor | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-980](https://issues.apache.org/jira/browse/YETUS-980) | jshint doesn't honor excludes file |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1022](https://issues.apache.org/jira/browse/YETUS-1022) | Get commit sha from github PR json |  Major | Precommit, website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1024](https://issues.apache.org/jira/browse/YETUS-1024) | github actions docs point to wrong repo, missing secrets |  Trivial | website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1025](https://issues.apache.org/jira/browse/YETUS-1025) | bufcompat doesn't get linecomments |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1027](https://issues.apache.org/jira/browse/YETUS-1027) | checkmake output is incorrect |  Blocker | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1026](https://issues.apache.org/jira/browse/YETUS-1026) | precommit docs lost utilities |  Blocker | website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1005](https://issues.apache.org/jira/browse/YETUS-1005) | Update Cirrus CI Support |  Minor | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1041](https://issues.apache.org/jira/browse/YETUS-1041) | new release script fixes |  Major | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1044](https://issues.apache.org/jira/browse/YETUS-1044) | jars are not getting signed with build-and-sign |  Major | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1039](https://issues.apache.org/jira/browse/YETUS-1039) | Homebrew is still broken |  Major | homebrew | Nick Dimiduk | Allen Wittenauer |
| [YETUS-1056](https://issues.apache.org/jira/browse/YETUS-1056) | blanks gives wrong advice |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1050](https://issues.apache.org/jira/browse/YETUS-1050) | perlcritic should not force --brutal |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1043](https://issues.apache.org/jira/browse/YETUS-1043) | github action website linkchecker doesn't work for releases |  Major | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1067](https://issues.apache.org/jira/browse/YETUS-1067) | mvn site fails on empty release |  Minor | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1066](https://issues.apache.org/jira/browse/YETUS-1066) | Fix spelling mistakes |  Major | website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1070](https://issues.apache.org/jira/browse/YETUS-1070) | Various github bugs/issues |  Critical | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1068](https://issues.apache.org/jira/browse/YETUS-1068) | Docs for yetus-maven-plugin are out of date |  Major | website and documentation | Allen Wittenauer | Allen Wittenauer |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-1035](https://issues.apache.org/jira/browse/YETUS-1035) | Add test4tests to action test filter |  Trivial | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1055](https://issues.apache.org/jira/browse/YETUS-1055) | Add test code for yetuslib |  Major | build, Precommit | Allen Wittenauer | Allen Wittenauer |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-1047](https://issues.apache.org/jira/browse/YETUS-1047) | Replace yetus-minimaven-plugin with yetus-maven-plugin |  Major | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-1034](https://issues.apache.org/jira/browse/YETUS-1034) | Release 0.13.0 |  Major | build | Allen Wittenauer | Allen Wittenauer |


