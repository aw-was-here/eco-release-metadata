
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

## Release 0.3.0 - 2016-05-23



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-322](https://issues.apache.org/jira/browse/YETUS-322) | flip verify\_ result codes |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-300](https://issues.apache.org/jira/browse/YETUS-300) | CHANGED\_FILES, CHANGED\_MODULES, etc should really be arrays |  Blocker | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-156](https://issues.apache.org/jira/browse/YETUS-156) | [Umbrella] build driver |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-330](https://issues.apache.org/jira/browse/YETUS-330) | show most recent release first on downloads page |  Minor | website and documentation | Sean Busbey | Sean Busbey |
| [YETUS-337](https://issues.apache.org/jira/browse/YETUS-337) | Upgrade version of pylint used in Dockerfile |  Major | Precommit | Andrew Wang | Andrew Wang |
| [YETUS-237](https://issues.apache.org/jira/browse/YETUS-237) | Shelldocs should pass pylint |  Major | ShellDocs | Kengo Seki | Allen Wittenauer |
| [YETUS-306](https://issues.apache.org/jira/browse/YETUS-306) | author tag detector should produce a file with pointers to incidence |  Minor | Precommit | Sean Busbey | Kengo Seki |
| [YETUS-361](https://issues.apache.org/jira/browse/YETUS-361) | Use Google's pylintrc file |  Major | Release Doc Maker | Andrew Wang | Andrew Wang |
| [YETUS-358](https://issues.apache.org/jira/browse/YETUS-358) | make use of BSD tar in build script explicit |  Blocker | build | Sean Busbey | Sean Busbey |
| [YETUS-289](https://issues.apache.org/jira/browse/YETUS-289) | shelldocs should output error positions in lint mode |  Major | ShellDocs | Kengo Seki | Allen Wittenauer |
| [YETUS-382](https://issues.apache.org/jira/browse/YETUS-382) | launch-test-patch.sh has shellcheck issues |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-381](https://issues.apache.org/jira/browse/YETUS-381) | fix config.rb rubocop issues |  Major | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-321](https://issues.apache.org/jira/browse/YETUS-321) | releasedocmaker.py lint mode enhancements |  Major | Release Doc Maker | Andrew Wang | Andrew Wang |
| [YETUS-383](https://issues.apache.org/jira/browse/YETUS-383) | fix releasedocmaker pylint issues |  Major | build, Release Doc Maker | Allen Wittenauer | Allen Wittenauer |
| [YETUS-387](https://issues.apache.org/jira/browse/YETUS-387) | fix some dockerfile issues |  Blocker | build, Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-331](https://issues.apache.org/jira/browse/YETUS-331) | post-r0.2.0 doc feedback |  Major | website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-364](https://issues.apache.org/jira/browse/YETUS-364) | make building source archive POSIX-compliant |  Major | build | Kengo Seki | Kengo Seki |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-335](https://issues.apache.org/jira/browse/YETUS-335) | switch Yetus Dockerfile to use ruby 2.0 |  Blocker | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-338](https://issues.apache.org/jira/browse/YETUS-338) | test-patch may not update patchfile in patchdir |  Blocker | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-345](https://issues.apache.org/jira/browse/YETUS-345) | mvn dependency dupe fix broke hadoop |  Blocker | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-334](https://issues.apache.org/jira/browse/YETUS-334) | mvn dependency ordering generates duplicates |  Critical | Precommit | Phil Yang | Allen Wittenauer |
| [YETUS-303](https://issues.apache.org/jira/browse/YETUS-303) | better sorting options for releasedocmaker |  Major | Release Doc Maker | Allen Wittenauer | Allen Wittenauer |
| [YETUS-336](https://issues.apache.org/jira/browse/YETUS-336) | javadoc plugin giving conflicting answers on pass/fail |  Blocker | Precommit | Sean Busbey | Allen Wittenauer |
| [YETUS-363](https://issues.apache.org/jira/browse/YETUS-363) | releasedocmaker fails due to the lack of dateutil module |  Major | Release Doc Maker | Kengo Seki | Allen Wittenauer |
| [YETUS-366](https://issues.apache.org/jira/browse/YETUS-366) | Wrapper script generated by build.sh doesn't work if the user is in the same location and executes it with a relative path |  Minor | build | Kengo Seki | Allen Wittenauer |
| [YETUS-370](https://issues.apache.org/jira/browse/YETUS-370) | multiple compile test types confuse later runs |  Blocker | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-377](https://issues.apache.org/jira/browse/YETUS-377) | clean up whitespace |  Major | website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-65](https://issues.apache.org/jira/browse/YETUS-65) | fix shellcheck 4.1 errors |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-359](https://issues.apache.org/jira/browse/YETUS-359) | shellcheck needs UTF-8 protection |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-388](https://issues.apache.org/jira/browse/YETUS-388) | test-patch fails when no maven found |  Blocker | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-391](https://issues.apache.org/jira/browse/YETUS-391) | test-patch regards git 1.7.1x is lower than 1.7.3 |  Major | Precommit | Kengo Seki | Kengo Seki |
| [YETUS-394](https://issues.apache.org/jira/browse/YETUS-394) | Minor fixes to contributor guide and website |  Trivial | website and documentation | Aldrin Piri | Aldrin Piri |
| [YETUS-393](https://issues.apache.org/jira/browse/YETUS-393) | docker check fails for 1.10+ |  Blocker | Precommit | Allen Wittenauer | Allen Wittenauer |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-324](https://issues.apache.org/jira/browse/YETUS-324) | Refactor releasedocmaker.py option parsing into separate function |  Major | Release Doc Maker | Andrew Wang | Andrew Wang |
| [YETUS-325](https://issues.apache.org/jira/browse/YETUS-325) | Refactor releasedocmaker.py lint functionality into separate class |  Major | Release Doc Maker | Andrew Wang | Andrew Wang |
| [YETUS-332](https://issues.apache.org/jira/browse/YETUS-332) | make use of outputdir option consistent with cleaning |  Major | Release Doc Maker | Sean Busbey | Sean Busbey |
| [YETUS-347](https://issues.apache.org/jira/browse/YETUS-347) | change docker's extraargs to be an array |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-348](https://issues.apache.org/jira/browse/YETUS-348) | add ability to write console report to a file |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-349](https://issues.apache.org/jira/browse/YETUS-349) | core engine changes for build driver |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-350](https://issues.apache.org/jira/browse/YETUS-350) | plug-in changes for build driver |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-353](https://issues.apache.org/jira/browse/YETUS-353) | runtime wrapper for build driver |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-351](https://issues.apache.org/jira/browse/YETUS-351) | documentation changes for build driver |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-352](https://issues.apache.org/jira/browse/YETUS-352) | hadoop and hbase personality changes for build driver |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-354](https://issues.apache.org/jira/browse/YETUS-354) | findbugs in build driver has problems |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-371](https://issues.apache.org/jira/browse/YETUS-371) | build driver: speed up checkstyle |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-357](https://issues.apache.org/jira/browse/YETUS-357) | build driver for hadoop shouldn't union unit tests |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-372](https://issues.apache.org/jira/browse/YETUS-372) | build driver: unit tests still mentions patches |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-373](https://issues.apache.org/jira/browse/YETUS-373) | build driver: maven install should be smarter |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-356](https://issues.apache.org/jira/browse/YETUS-356) | build driver: author plug-in still mentions patches |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-374](https://issues.apache.org/jira/browse/YETUS-374) | need a way to ignore results from a list of tests |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-375](https://issues.apache.org/jira/browse/YETUS-375) | build driver: maven install actually needs to be dumber |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-376](https://issues.apache.org/jira/browse/YETUS-376) | add ability to write report to an HTML formatted file |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-384](https://issues.apache.org/jira/browse/YETUS-384) | In build driver mode, some plugins have misleading status text |  Minor | Precommit | Sean Busbey | Allen Wittenauer |
| [YETUS-385](https://issues.apache.org/jira/browse/YETUS-385) | test plugin for author tag detection should have a way to opt-out of specific instances |  Major | Precommit | Sean Busbey | Allen Wittenauer |
| [YETUS-378](https://issues.apache.org/jira/browse/YETUS-378) | flink, hbase, jmeter personalities custom tests need to be made qbt aware |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-326](https://issues.apache.org/jira/browse/YETUS-326) | Make releasedocmaker.py lint filters configurable |  Major | Release Doc Maker | Andrew Wang | Andrew Wang |
| [YETUS-386](https://issues.apache.org/jira/browse/YETUS-386) | document --html-report-file and clean up htmlout's comments |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-329](https://issues.apache.org/jira/browse/YETUS-329) | update docs generation to use rel/ tags |  Major | build, website and documentation | Sean Busbey | Sean Busbey |
| [YETUS-379](https://issues.apache.org/jira/browse/YETUS-379) | Release 0.3.0 |  Major | website and documentation | Kengo Seki | Kengo Seki |


