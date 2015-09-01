
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
# Apache Hadoop Yetus Changelog

## Release HADOOP-12111 - Unreleased (as of 2015-09-01)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12156](https://issues.apache.org/jira/browse/HADOOP-12156) | modernize smart-apply-patch |  Major | yetus | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12129](https://issues.apache.org/jira/browse/HADOOP-12129) | rework test-patch bug system support |  Blocker | yetus | Allen Wittenauer | Allen Wittenauer |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12340](https://issues.apache.org/jira/browse/HADOOP-12340) | test-patch docker mode fails in downloading findbugs with curl |  Major | yetus | Kengo Seki | Kengo Seki |
| [HADOOP-12339](https://issues.apache.org/jira/browse/HADOOP-12339) | Wrong help message about --curl-cmd option |  Minor | yetus | Kengo Seki | Gabor Liptak |
| [HADOOP-12316](https://issues.apache.org/jira/browse/HADOOP-12316) | Potential false-positive and false-negative in parsing TAP output |  Major | yetus | Kengo Seki | Kengo Seki |
| [HADOOP-12315](https://issues.apache.org/jira/browse/HADOOP-12315) | hbaseprotoc\_postapply in the test-patch hbase personality can return a wrong status |  Major | yetus | Kengo Seki | Kengo Seki |
| [HADOOP-12314](https://issues.apache.org/jira/browse/HADOOP-12314) | check\_unittests in test-patch.sh can return a wrong status |  Major | yetus | Kengo Seki | Kengo Seki |
| [HADOOP-12310](https://issues.apache.org/jira/browse/HADOOP-12310) | final memory report sometimes generates spurious errors |  Major | yetus | Allen Wittenauer | Kengo Seki |
| [HADOOP-12303](https://issues.apache.org/jira/browse/HADOOP-12303) | test-patch pylint plugin fails silently and votes +1 incorrectly |  Major | yetus | Kengo Seki | Kengo Seki |
| [HADOOP-12297](https://issues.apache.org/jira/browse/HADOOP-12297) | test-patch's basedir and patch-dir must be directories under the user's home in docker mode if using boot2docker |  Major | yetus | Kengo Seki | Kengo Seki |
| [HADOOP-12289](https://issues.apache.org/jira/browse/HADOOP-12289) | Move recent yetus docker changes to the yetus dockerfile |  Major | yetus | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12287](https://issues.apache.org/jira/browse/HADOOP-12287) | add support for perlcritic |  Major | yetus | Allen Wittenauer | Kengo Seki |
| [HADOOP-12286](https://issues.apache.org/jira/browse/HADOOP-12286) | test-patch pylint plugin should support indent-string option |  Major | yetus | Kengo Seki | Kengo Seki |
| [HADOOP-12275](https://issues.apache.org/jira/browse/HADOOP-12275) | releasedocmaker: unreleased should still be dated |  Trivial | yetus | Allen Wittenauer | Kengo Seki |
| [HADOOP-12273](https://issues.apache.org/jira/browse/HADOOP-12273) | releasedocmaker.py fails with stacktrace if --project option is not specified |  Trivial | yetus | Kengo Seki | Kengo Seki |
| [HADOOP-12266](https://issues.apache.org/jira/browse/HADOOP-12266) | make test-patch plugins more consistent |  Major | yetus | Kengo Seki | Kengo Seki |
| [HADOOP-12265](https://issues.apache.org/jira/browse/HADOOP-12265) | Pylint should be installed in test-patch docker environment |  Major | yetus | Kengo Seki | Kengo Seki |
| [HADOOP-12256](https://issues.apache.org/jira/browse/HADOOP-12256) | add support for ruby-lint |  Major | yetus | Allen Wittenauer | Kengo Seki |
| [HADOOP-12255](https://issues.apache.org/jira/browse/HADOOP-12255) | Add support for rubocop |  Major | yetus | Allen Wittenauer | Kengo Seki |
| [HADOOP-12254](https://issues.apache.org/jira/browse/HADOOP-12254) | test-patch.sh should run findbugs if only findbugs-exclude.xml has changed |  Major | yetus | Varun Saxena | Kengo Seki |
| [HADOOP-12248](https://issues.apache.org/jira/browse/HADOOP-12248) | Add native support for TAP |  Major | yetus | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12247](https://issues.apache.org/jira/browse/HADOOP-12247) | Convert 'unit' to 'junit' |  Blocker | yetus | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12243](https://issues.apache.org/jira/browse/HADOOP-12243) | Rewrite grep -o's to be POSIX compliant |  Major | yetus | Kengo Seki | Kengo Seki |
| [HADOOP-12228](https://issues.apache.org/jira/browse/HADOOP-12228) | Document releasedocmaker |  Major | yetus | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12226](https://issues.apache.org/jira/browse/HADOOP-12226) | CHANGED\_MODULES is wrong for ant |  Major | yetus | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12225](https://issues.apache.org/jira/browse/HADOOP-12225) | Add docs-overview page |  Major | yetus | Sean Busbey | Sean Busbey |
| [HADOOP-12207](https://issues.apache.org/jira/browse/HADOOP-12207) | Add support for pylint |  Major | yetus | Allen Wittenauer | Kengo Seki |
| [HADOOP-12206](https://issues.apache.org/jira/browse/HADOOP-12206) | The preceding invocations of findlargest in test-patch effect the following invocation results |  Major | yetus | Kengo Seki | Kengo Seki |
| [HADOOP-12204](https://issues.apache.org/jira/browse/HADOOP-12204) | releasedocmaker should pass pylint |  Minor | yetus | Chris Nauroth | Kengo Seki |
| [HADOOP-12199](https://issues.apache.org/jira/browse/HADOOP-12199) | Optimize find\_changed\_modules |  Trivial | yetus | Allen Wittenauer | Kengo Seki |
| [HADOOP-12198](https://issues.apache.org/jira/browse/HADOOP-12198) | hadoop patches that hit multiple modules need to build at the union |  Major | yetus | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12197](https://issues.apache.org/jira/browse/HADOOP-12197) | smart-apply-patch shouldn't print successful dryrun in apply mode |  Major | yetus | Allen Wittenauer | Kengo Seki |
| [HADOOP-12196](https://issues.apache.org/jira/browse/HADOOP-12196) | shellcheck plugin is picking up target executables |  Major | yetus | Allen Wittenauer | Kengo Seki |
| [HADOOP-12188](https://issues.apache.org/jira/browse/HADOOP-12188) | javac warning file is always empty on ant-based projects |  Major | yetus | Kengo Seki | Kengo Seki |
| [HADOOP-12187](https://issues.apache.org/jira/browse/HADOOP-12187) | Whitespace plugin shows unexpected error messages if gitdiffcontent is empty |  Minor | yetus | Kengo Seki | Kengo Seki |
| [HADOOP-12165](https://issues.apache.org/jira/browse/HADOOP-12165) | author tests show entire run time not test time when skipped |  Trivial | yetus | Allen Wittenauer | Kengo Seki |
| [HADOOP-12157](https://issues.apache.org/jira/browse/HADOOP-12157) | test-patch should report max memory consumed |  Minor | yetus | Allen Wittenauer | Kengo Seki |
| [HADOOP-12147](https://issues.apache.org/jira/browse/HADOOP-12147) | bundled dockerfile should use the JDK version of openjdk, not JRE |  Trivial | yetus | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12142](https://issues.apache.org/jira/browse/HADOOP-12142) | Test code modification is not detected if test directory is at the top level of the project |  Major | yetus | Kengo Seki | Kengo Seki |
| [HADOOP-12134](https://issues.apache.org/jira/browse/HADOOP-12134) | Pig personality always fails at precheck\_javac and check\_patch\_javac |  Major | yetus | Kengo Seki | Kengo Seki |
| [HADOOP-12130](https://issues.apache.org/jira/browse/HADOOP-12130) | document features added in 12113 |  Major | yetus | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12127](https://issues.apache.org/jira/browse/HADOOP-12127) | some personalities are still using releaseaudit instead of asflicense |  Trivial | yetus | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12121](https://issues.apache.org/jira/browse/HADOOP-12121) | smarter branch detection |  Major | yetus | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12113](https://issues.apache.org/jira/browse/HADOOP-12113) | update test-patch branch to latest code |  Major | yetus | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11914](https://issues.apache.org/jira/browse/HADOOP-11914) | test-patch.sh confused by certain patch formats |  Critical | yetus | Allen Wittenauer | Kengo Seki |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


