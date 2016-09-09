
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

## Release 0.4.0 - Unreleased (as of 2016-09-09)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-390](https://issues.apache.org/jira/browse/YETUS-390) | qbt needs an "abbreviated email" mode |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-341](https://issues.apache.org/jira/browse/YETUS-341) | docker cleanup in sentinel mode doesn't know about Created |  Major | Test Patch | Allen Wittenauer | Allen Wittenauer |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-293](https://issues.apache.org/jira/browse/YETUS-293) | archiving functionality |  Major | Test Patch | Colin P. McCabe | Allen Wittenauer |
| [YETUS-428](https://issues.apache.org/jira/browse/YETUS-428) | Provide fallback option to mark issues as incompatible |  Major | Release Doc Maker | Ajay Yadava | Ajay Yadava |
| [YETUS-415](https://issues.apache.org/jira/browse/YETUS-415) | shelldocs ability to ignore a file |  Major | ShellDocs | Allen Wittenauer | Ajay Yadava |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-424](https://issues.apache.org/jira/browse/YETUS-424) | Show more helpful error message in case of missing dependency |  Major | Release Doc Maker | Ajay Yadava | Ajay Yadava |
| [YETUS-425](https://issues.apache.org/jira/browse/YETUS-425) | Remove empty tables while generating changelog |  Minor | Release Doc Maker | Ajay Yadava | Ajay Yadava |
| [YETUS-423](https://issues.apache.org/jira/browse/YETUS-423) | Make sortorder and sorttype of type choices |  Minor | Release Doc Maker | Ajay Yadava | Ajay Yadava |
| [YETUS-427](https://issues.apache.org/jira/browse/YETUS-427) | Document the -V option for releasedocmaker |  Major | website and documentation | Ajay Yadava | Ajay Yadava |
| [YETUS-312](https://issues.apache.org/jira/browse/YETUS-312) | include more context on whitespace plugin feedback |  Minor | Test Patch | Sean Busbey | Ajay Yadava |
| [YETUS-48](https://issues.apache.org/jira/browse/YETUS-48) | Document python version releasedocmaker supports |  Minor | Release Doc Maker | Kengo Seki | Ajay Yadava |
| [YETUS-434](https://issues.apache.org/jira/browse/YETUS-434) | Add .pyc files to .gitignore |  Major | build | Ajay Yadava | Ajay Yadava |
| [YETUS-430](https://issues.apache.org/jira/browse/YETUS-430) | Refactor releasedocmaker.py in separate modules |  Major | Release Doc Maker | Ajay Yadava | Ajay Yadava |
| [YETUS-444](https://issues.apache.org/jira/browse/YETUS-444) | Improve documentation for Test Format Support |  Trivial | website and documentation | Ajay Yadava | Ajay Yadava |
| [YETUS-455](https://issues.apache.org/jira/browse/YETUS-455) | Print help when no args passed to releasedocmaker.py |  Minor | Release Doc Maker | Andrew Wang | Andrew Wang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-404](https://issues.apache.org/jira/browse/YETUS-404) | build.sh fails if python-dateutil is not installed |  Trivial | build | Aldrin Piri | Aldrin Piri |
| [YETUS-409](https://issues.apache.org/jira/browse/YETUS-409) | Some fixes and improvements for "Cleanup" section in "Managing a Release" document |  Major | website and documentation | Kengo Seki | Kengo Seki |
| [YETUS-403](https://issues.apache.org/jira/browse/YETUS-403) | hadoop personality needs better handling of homebrew |  Major | Test Patch | Allen Wittenauer | Kengo Seki |
| [YETUS-419](https://issues.apache.org/jira/browse/YETUS-419) | releasedocmaker should retry when the connection fails |  Major | Release Doc Maker | Akira Ajisaka | Akira Ajisaka |
| [YETUS-380](https://issues.apache.org/jira/browse/YETUS-380) | "Release Notes" button doesn't appear immediately in some cases |  Trivial | website and documentation | Kengo Seki | Kengo Seki |
| [YETUS-414](https://issues.apache.org/jira/browse/YETUS-414) | ctest logs are really broken |  Blocker | Test Patch | Allen Wittenauer | Allen Wittenauer |
| [YETUS-407](https://issues.apache.org/jira/browse/YETUS-407) | DOAP is broken |  Major | website and documentation | Sebb | Kengo Seki |
| [YETUS-405](https://issues.apache.org/jira/browse/YETUS-405) | Minor typo for python-dateutil package |  Minor | Release Doc Maker, website and documentation | Kengo Seki | Karen Clark |
| [YETUS-426](https://issues.apache.org/jira/browse/YETUS-426) | Parser error on specifying just -V |  Major | Release Doc Maker | Ajay Yadava | Ajay Yadava |
| [YETUS-101](https://issues.apache.org/jira/browse/YETUS-101) | Nonexistent hook in the build tool support document |  Minor | website and documentation | Kengo Seki | Ajay Yadava |
| [YETUS-91](https://issues.apache.org/jira/browse/YETUS-91) | Clean up comments in 01-common.sh |  Minor | Test Patch | Kengo Seki | Ajay Yadava |
| [YETUS-437](https://issues.apache.org/jira/browse/YETUS-437) | TOCs are broken in some documents |  Minor | website and documentation | Kengo Seki | Ajay Yadava |
| [YETUS-438](https://issues.apache.org/jira/browse/YETUS-438) | Minor issues on newly added sections in releasedocmaker document |  Minor | website and documentation | Kengo Seki | Ajay Yadava |
| [YETUS-184](https://issues.apache.org/jira/browse/YETUS-184) | link patch naming guide into regular website docs |  Major | Test Patch, website and documentation | Sean Busbey | Ajay Yadava |
| [YETUS-112](https://issues.apache.org/jira/browse/YETUS-112) | test-patch build system documentation missing expected args for required |  Major | Test Patch, website and documentation | Sean Busbey | Karen Clark |
| [YETUS-433](https://issues.apache.org/jira/browse/YETUS-433) | releasedocmaker generates empty index and readme for non-semver versioning |  Major | Release Doc Maker | Ajay Yadava | Ajay Yadava |
| [YETUS-309](https://issues.apache.org/jira/browse/YETUS-309) | pylint plugin false positives |  Major | Test Patch | Sean Busbey | Dima Spivak |
| [YETUS-442](https://issues.apache.org/jira/browse/YETUS-442) | JIRA plugin will not fallback to normal patch if it fails to find a github pull |  Minor | Test Patch | Casey Brotherton | Casey Brotherton |
| [YETUS-443](https://issues.apache.org/jira/browse/YETUS-443) | github pull request regular expression in the jira plugin should be more complete |  Minor | Test Patch | Casey Brotherton | Casey Brotherton |
| [YETUS-448](https://issues.apache.org/jira/browse/YETUS-448) | Fix the docs for supported python versions |  Major | website and documentation | Ajay Yadava | Ajay Yadava |
| [YETUS-456](https://issues.apache.org/jira/browse/YETUS-456) | Typos in documentation |  Trivial | website and documentation | Ajay Yadava | Ajay Yadava |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-339](https://issues.apache.org/jira/browse/YETUS-339) | Make the site config file pass rubocop |  Major | build, website and documentation | Sean Busbey | Kengo Seki |


