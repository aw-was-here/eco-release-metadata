
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

## Release 0.3.0 - Unreleased (as of 2016-04-14)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-322](https://issues.apache.org/jira/browse/YETUS-322) | flip verify\_ result codes |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-300](https://issues.apache.org/jira/browse/YETUS-300) | CHANGED\_FILES, CHANGED\_MODULES, etc should really be arrays |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-330](https://issues.apache.org/jira/browse/YETUS-330) | show most recent release first on downloads page |  Minor | website and documentation | Sean Busbey | Sean Busbey |
| [YETUS-337](https://issues.apache.org/jira/browse/YETUS-337) | Upgrade version of pylint used in Dockerfile |  Major | Test Patch | Andrew Wang | Andrew Wang |
| [YETUS-237](https://issues.apache.org/jira/browse/YETUS-237) | Shelldocs should pass pylint |  Major | ShellDocs | Kengo Seki | Allen Wittenauer |
| [YETUS-306](https://issues.apache.org/jira/browse/YETUS-306) | author tag detector should produce a file with pointers to incidence |  Minor | Test Patch | Sean Busbey | Kengo Seki |
| [YETUS-361](https://issues.apache.org/jira/browse/YETUS-361) | Use Google's pylintrc file |  Major | Release Doc Maker | Andrew Wang | Andrew Wang |
| [YETUS-358](https://issues.apache.org/jira/browse/YETUS-358) | make use of BSD tar in build script explicit |  Blocker | build | Sean Busbey | Sean Busbey |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-335](https://issues.apache.org/jira/browse/YETUS-335) | switch Yetus Dockerfile to use ruby 2.0 |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-338](https://issues.apache.org/jira/browse/YETUS-338) | test-patch may not update patchfile in patchdir |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-345](https://issues.apache.org/jira/browse/YETUS-345) | mvn dependency dupe fix broke hadoop |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-334](https://issues.apache.org/jira/browse/YETUS-334) | mvn dependency ordering generates duplicates |  Critical | Test Patch | Phil Yang | Allen Wittenauer |
| [YETUS-303](https://issues.apache.org/jira/browse/YETUS-303) | better sorting options for releasedocmaker |  Major | Release Doc Maker | Allen Wittenauer | Allen Wittenauer |
| [YETUS-336](https://issues.apache.org/jira/browse/YETUS-336) | javadoc plugin giving conflicting answers on pass/fail |  Blocker | Test Patch | Sean Busbey | Allen Wittenauer |
| [YETUS-363](https://issues.apache.org/jira/browse/YETUS-363) | releasedocmaker fails due to the lack of dateutil module |  Major | Release Doc Maker | Kengo Seki | Allen Wittenauer |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-324](https://issues.apache.org/jira/browse/YETUS-324) | Refactor releasedocmaker.py option parsing into separate function |  Major | Release Doc Maker | Andrew Wang | Andrew Wang |
| [YETUS-325](https://issues.apache.org/jira/browse/YETUS-325) | Refactor releasedocmaker.py lint functionality into separate class |  Major | Release Doc Maker | Andrew Wang | Andrew Wang |
| [YETUS-332](https://issues.apache.org/jira/browse/YETUS-332) | make use of outputdir option consistent with cleaning |  Major | Release Doc Maker | Sean Busbey | Sean Busbey |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-329](https://issues.apache.org/jira/browse/YETUS-329) | update docs generation to use rel/ tags |  Major | build, website and documentation | Sean Busbey | Sean Busbey |


