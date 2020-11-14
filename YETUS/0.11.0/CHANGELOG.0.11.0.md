
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

## Release 0.11.0 - 2019-08-28



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-868](https://issues.apache.org/jira/browse/YETUS-868) | Patch modifying the excludes file should force a re-read |  Critical | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-870](https://issues.apache.org/jira/browse/YETUS-870) | remove support for PYLINT\_OPTIONS |  Trivial | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-873](https://issues.apache.org/jira/browse/YETUS-873) | Error on unprocessed options/parameters |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-856](https://issues.apache.org/jira/browse/YETUS-856) | Add markdownlint support |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-413](https://issues.apache.org/jira/browse/YETUS-413) | Slack integration |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-685](https://issues.apache.org/jira/browse/YETUS-685) | add junit xml as a reporting format |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-874](https://issues.apache.org/jira/browse/YETUS-874) | Add support for Cirrus CI from Cirrus Labs |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-858](https://issues.apache.org/jira/browse/YETUS-858) | Add support for golang |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-880](https://issues.apache.org/jira/browse/YETUS-880) | add support for prototool lint |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-583](https://issues.apache.org/jira/browse/YETUS-583) | switch to printf "%(..)T" on bash 4.2 |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-865](https://issues.apache.org/jira/browse/YETUS-865) | Remove announce@apache.org from release message |  Major | website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-866](https://issues.apache.org/jira/browse/YETUS-866) | Add a simple yetus binary tarball download script |  Major | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-885](https://issues.apache.org/jira/browse/YETUS-885) | Support more function formats in shelldocs |  Major | ShellDocs | Allen Wittenauer | Allen Wittenauer |
| [YETUS-888](https://issues.apache.org/jira/browse/YETUS-888) | update various web components |  Major | build, Precommit, website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-890](https://issues.apache.org/jira/browse/YETUS-890) | revive plugin is leaking data |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-892](https://issues.apache.org/jira/browse/YETUS-892) | add option to set markdown file extension |  Major | Release Doc Maker | Allen Wittenauer | Allen Wittenauer |
| [YETUS-307](https://issues.apache.org/jira/browse/YETUS-307) | upgrade to middleman v4 |  Major | website and documentation | Sean Busbey | Jack Bearden |
| [YETUS-896](https://issues.apache.org/jira/browse/YETUS-896) | Add an emoji column to the github vote table |  Major | Precommit | Guanghao Zhang | Duo Zhang |
| [YETUS-871](https://issues.apache.org/jira/browse/YETUS-871) | cleanup the junit output format |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-629](https://issues.apache.org/jira/browse/YETUS-629) | Remove System.out.println from Doclets |  Major | Audience Annotations | Grant Henke | Allen Wittenauer |
| [YETUS-343](https://issues.apache.org/jira/browse/YETUS-343) | Missing words in test-patch.sh usage message |  Minor | Precommit | Andrew Wang | Allen Wittenauer |
| [YETUS-864](https://issues.apache.org/jira/browse/YETUS-864) | fix middleman config for release of 0.10.0 |  Major | build, website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-867](https://issues.apache.org/jira/browse/YETUS-867) | Circle CI's master failing pull |  Blocker | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-869](https://issues.apache.org/jira/browse/YETUS-869) | git\_checkout is called twice |  Trivial | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-877](https://issues.apache.org/jira/browse/YETUS-877) | Typo in mvn-custom-repos parameter |  Trivial | website and documentation | Peter Somogyi | Peter Somogyi |
| [YETUS-879](https://issues.apache.org/jira/browse/YETUS-879) | pylint needs to have args flushed prior to execution |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-881](https://issues.apache.org/jira/browse/YETUS-881) | findbugs bw-compat support needs delete\_parameter() calls |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-882](https://issues.apache.org/jira/browse/YETUS-882) | command line patch files do not work in docker mode |  Blocker | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-860](https://issues.apache.org/jira/browse/YETUS-860) | mvn dependency order needs special handling for version change |  Critical | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-886](https://issues.apache.org/jira/browse/YETUS-886) | maven\_reorder\_module\_process is eating the directory stack |  Major | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-891](https://issues.apache.org/jira/browse/YETUS-891) | Incorrect link to yetus-dl.sh |  Minor | website and documentation | Peter Somogyi | Peter Somogyi |
| [YETUS-894](https://issues.apache.org/jira/browse/YETUS-894) | fix yetus semaphore CI build script |  Trivial | build, website and documentation | Allen Wittenauer | Allen Wittenauer |
| [YETUS-901](https://issues.apache.org/jira/browse/YETUS-901) | Update Haskell compiler so that shellcheck 0.7.0 compiles |  Major | Precommit | Sean Busbey | Allen Wittenauer |
| [YETUS-903](https://issues.apache.org/jira/browse/YETUS-903) | revive/golang/golanci aren't removing options from the stack |  Minor | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-904](https://issues.apache.org/jira/browse/YETUS-904) | junit report doesn't work properly under --docker |  Blocker | Precommit | Allen Wittenauer | Allen Wittenauer |
| [YETUS-907](https://issues.apache.org/jira/browse/YETUS-907) | Building website in the project provided container fails. |  Blocker | website and documentation | Sean Busbey | Sean Busbey |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YETUS-861](https://issues.apache.org/jira/browse/YETUS-861) | EOL 0.7.0 |  Major | build | Allen Wittenauer | Allen Wittenauer |
| [YETUS-899](https://issues.apache.org/jira/browse/YETUS-899) | Release 0.11.0 |  Major | build | Sean Busbey | Sean Busbey |


