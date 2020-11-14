
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

## Release 0.10.0 - 2019-04-21



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-782](https://issues.apache.org/jira/browse/YETUS-782) | Remove ruby-lint support |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-688](https://issues.apache.org/jira/browse/YETUS-688) | convert key globals from strings to arrays |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-801](https://issues.apache.org/jira/browse/YETUS-801) | Remove deprecated private token support from Github |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-809](https://issues.apache.org/jira/browse/YETUS-809) | findbugs isn't finding bugs in qbt-mode |  Blocker | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-749](https://issues.apache.org/jira/browse/YETUS-749) | change findbugs to spotbugs |  Major | build, Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-724](https://issues.apache.org/jira/browse/YETUS-724) | github diff vs. patch |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-780](https://issues.apache.org/jira/browse/YETUS-780) | mvn site breaks when maven-built versions are added to the pom |  Blocker | build, website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-788](https://issues.apache.org/jira/browse/YETUS-788) | expose patch analysis |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-791](https://issues.apache.org/jira/browse/YETUS-791) | Add support for --cache-from to speed up building |  Major | build, Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-794](https://issues.apache.org/jira/browse/YETUS-794) | exclusion support |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-474](https://issues.apache.org/jira/browse/YETUS-474) | Option to releasedocmaker to write empty files when no JIRA issues match |  Blocker | build | Sean Busbey | Allen Wittenauer |
| [YETUS-679](https://issues.apache.org/jira/browse/YETUS-679) | dupname should report even in case of success |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-807](https://issues.apache.org/jira/browse/YETUS-807) | SemaphoreCI Support |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-819](https://issues.apache.org/jira/browse/YETUS-819) | Azure Pipelines Support |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-841](https://issues.apache.org/jira/browse/YETUS-841) | Support python's requirements.txt prior to pylint |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-759](https://issues.apache.org/jira/browse/YETUS-759) | shelldocs should be added to yetus-maven-plugin |  Major | ShellDocs, yetus-maven-plugin | Allen Wittenauer | Allen Wittenauer |
| [YETUS-853](https://issues.apache.org/jira/browse/YETUS-853) | "improvement" mode |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-795](https://issues.apache.org/jira/browse/YETUS-795) | Add SUBMARINE subproject to the Hadoop personality |  Trivial | Precommit | Sunil G | Sunil G |
| [YETUS-793](https://issues.apache.org/jira/browse/YETUS-793) | patch analysis shouldn't require dry-run |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-677](https://issues.apache.org/jira/browse/YETUS-677) | dupname check does the work twice in qbt mode |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-816](https://issues.apache.org/jira/browse/YETUS-816) | Improve hadoop personality to support ozone/hdds projects |  Minor | Precommit | Marton Elek | Marton Elek |
| [YETUS-803](https://issues.apache.org/jira/browse/YETUS-803) | Drop the ignore warning from shelldocs |  Major | ShellDocs | Allen Wittenauer | Allen Wittenauer |
| [YETUS-817](https://issues.apache.org/jira/browse/YETUS-817) | upgrade to shellcheck 0.6.0 |  Major | build, Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-806](https://issues.apache.org/jira/browse/YETUS-806) | Configure docker-from-cache for Travis CI |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-799](https://issues.apache.org/jira/browse/YETUS-799) | Use real paths in docker container |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-836](https://issues.apache.org/jira/browse/YETUS-836) | Add a version field |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-842](https://issues.apache.org/jira/browse/YETUS-842) | remove pylintrc |  Major | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-845](https://issues.apache.org/jira/browse/YETUS-845) | shrink the docker image by fixing cabal |  Major | build, Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-846](https://issues.apache.org/jira/browse/YETUS-846) | hard-set pip and gem installs |  Minor | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-703](https://issues.apache.org/jira/browse/YETUS-703) | clean up some of the table of contents |  Minor | Precommit, website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-822](https://issues.apache.org/jira/browse/YETUS-822) | readme should mention docker images |  Minor | website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-811](https://issues.apache.org/jira/browse/YETUS-811) | Add an API for robots to do their own artifact URLs |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-808](https://issues.apache.org/jira/browse/YETUS-808) | cleanup the docker image cleanup output |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-783](https://issues.apache.org/jira/browse/YETUS-783) | download links for 0.8.0 vs 0.9.0 are different |  Blocker | website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-789](https://issues.apache.org/jira/browse/YETUS-789) | bugsystem\_linecomments\_trigger breaks if prevnum or linenum isn't numeric |  Blocker | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-771](https://issues.apache.org/jira/browse/YETUS-771) | Dockerfile.patchspecific doesn't work when gid isn't defined |  Minor | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-758](https://issues.apache.org/jira/browse/YETUS-758) | docker-cleanup doesn't always clean |  Minor | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-786](https://issues.apache.org/jira/browse/YETUS-786) | JENKINS\_URL is not always populated in a pipeline docker agent |  Blocker | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-796](https://issues.apache.org/jira/browse/YETUS-796) | multijdk doesn't ignore non-existent directory |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-797](https://issues.apache.org/jira/browse/YETUS-797) | patches that remove modules trigger offset\_clock assert |  Critical | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-775](https://issues.apache.org/jira/browse/YETUS-775) | do not delete the ${project.version} of the website |  Minor | website and documentation | Sean Busbey | Allen Wittenauer |
| [YETUS-762](https://issues.apache.org/jira/browse/YETUS-762) | findbugs warning in yetus-minimaven-plugin/bin4libs |  Minor | yetus-maven-plugin | Allen Wittenauer | Allen Wittenauer |
| [YETUS-813](https://issues.apache.org/jira/browse/YETUS-813) | Tie both pylint and astroid to working versions |  Critical | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-784](https://issues.apache.org/jira/browse/YETUS-784) |  javadocs for 0.9.0 off of master are broken |  Major | website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-785](https://issues.apache.org/jira/browse/YETUS-785) | Download page must not link to dist.apache.org |  Major | website and documentation | Sebb | Akira Ajisaka |
| [YETUS-776](https://issues.apache.org/jira/browse/YETUS-776) | build doesn't deploy all artifacts |  Critical | build | Sean Busbey | Allen Wittenauer |
| [YETUS-814](https://issues.apache.org/jira/browse/YETUS-814) | docker hub builds are out of sync |  Blocker | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-761](https://issues.apache.org/jira/browse/YETUS-761) | findbugs warning in yetus-maven-plugin/releasedocmaker |  Minor | Release Doc Maker, yetus-maven-plugin | Allen Wittenauer | Allen Wittenauer |
| [YETUS-823](https://issues.apache.org/jira/browse/YETUS-823) | releasedocmaker-jar-with-dependencies is missing dependencies |  Blocker | yetus-maven-plugin | Michael Stack | Allen Wittenauer |
| [YETUS-431](https://issues.apache.org/jira/browse/YETUS-431) | shelldocs is undocumented |  Major | ShellDocs, website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-833](https://issues.apache.org/jira/browse/YETUS-833) | start-build-env is failing |  Minor | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-847](https://issues.apache.org/jira/browse/YETUS-847) | /usr/local/bin/pip is python3.7 |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-829](https://issues.apache.org/jira/browse/YETUS-829) | Fix path(s) to shelldocs |  Minor | build, Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-849](https://issues.apache.org/jira/browse/YETUS-849) | Cut back on Azure Pipelines support |  Minor | build, website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-760](https://issues.apache.org/jira/browse/YETUS-760) | Update yetus-maven-plugin's releasedocmaker options |  Major | Release Doc Maker, yetus-maven-plugin | Allen Wittenauer | Allen Wittenauer |
| [YETUS-820](https://issues.apache.org/jira/browse/YETUS-820) | author throws grep error if excludes file is missing |  Trivial | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-772](https://issues.apache.org/jira/browse/YETUS-772) | RC verification document updates from 0.9.0 |  Minor | website and documentation | Kengo Seki | Allen Wittenauer |
| [YETUS-854](https://issues.apache.org/jira/browse/YETUS-854) | shellcheck is picking up extra files |  Critical | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-855](https://issues.apache.org/jira/browse/YETUS-855) | npm doesn't work in docker image |  Critical | Precommit | Allen Wittenauer | Allen Wittenauer |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-769](https://issues.apache.org/jira/browse/YETUS-769) | release documentation updates from 0.9.0 |  Major | build, website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-802](https://issues.apache.org/jira/browse/YETUS-802) | Remove docs for --github-token |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-828](https://issues.apache.org/jira/browse/YETUS-828) | Upgrade hadolint to 1.16.2 |  Minor | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-827](https://issues.apache.org/jira/browse/YETUS-827) | Upgrade python3 to 3.7 |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-838](https://issues.apache.org/jira/browse/YETUS-838) | upgrade some maven dependencies |  Trivial | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-859](https://issues.apache.org/jira/browse/YETUS-859) | Release 0.10.0 |  Major | build | Allen Wittenauer | Allen Wittenauer |


