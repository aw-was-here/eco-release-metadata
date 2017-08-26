
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
# Apache BigTop Changelog

## Release 1.3.0 - Unreleased (as of 2017-08-26)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2868](https://issues.apache.org/jira/browse/BIGTOP-2868) | Travis integration for Jar files. |  Major | ci | jay vyas | Ryan O'Meara |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2730](https://issues.apache.org/jira/browse/BIGTOP-2730) | Bump zookeeper to 3.4.10 |  Major | build | Yakir Gibraltar | Yakir Gibraltar |
| [BIGTOP-2819](https://issues.apache.org/jira/browse/BIGTOP-2819) | Polish the README.md for 1.2.1 release |  Major | documentation | Evans Ye | Evans Ye |
| [BIGTOP-2834](https://issues.apache.org/jira/browse/BIGTOP-2834) | spark charm: refactor for restricted networks; lib cleanup |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2843](https://issues.apache.org/jira/browse/BIGTOP-2843) | Add provisioner config yaml for ubuntu-16.04-aarch64 |  Major | build, ci, provisioner | Yuqi Gu | Yuqi Gu |
| [BIGTOP-2825](https://issues.apache.org/jira/browse/BIGTOP-2825) | Upgrade gradle to the latest 4.0 |  Major | build, toolchain | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2848](https://issues.apache.org/jira/browse/BIGTOP-2848) | Add provisioner docker yaml config file CentOS-7 AArch64 |  Major | build, ci, provisioner | Naresh Bhat | Naresh Bhat |
| [BIGTOP-2824](https://issues.apache.org/jira/browse/BIGTOP-2824) | [sandbox] Support CentOS 7 AArch64 sandbox |  Major | docker | Naresh Bhat | Naresh Bhat |
| [BIGTOP-2846](https://issues.apache.org/jira/browse/BIGTOP-2846) | Add DSL documentation for GIT-based builds |  Major | build, documentation | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2851](https://issues.apache.org/jira/browse/BIGTOP-2851) | [bigtop-puppet] Add Debian 8 AArch64 bigtop puppet |  Major | build, debian, docker | Naresh Bhat | Naresh Bhat |
| [BIGTOP-2852](https://issues.apache.org/jira/browse/BIGTOP-2852) | [bigtop-slaves] Add Debian 8 AArch64 bigtop-slaves |  Major | build, debian, docker | Naresh Bhat | Naresh Bhat |
| [BIGTOP-2853](https://issues.apache.org/jira/browse/BIGTOP-2853) | [sandbox] Add Debian 8 AArch64 sandbox |  Major | build, debian, sandbox | Naresh Bhat | Naresh Bhat |
| [BIGTOP-2857](https://issues.apache.org/jira/browse/BIGTOP-2857) | Add aarch64 support for fedora-25 |  Major | docker, toolchain | Jun He | Jun He |
| [BIGTOP-2858](https://issues.apache.org/jira/browse/BIGTOP-2858) | Add AArch64 support for Debian 9 |  Major | build, debian, docker, toolchain | Yuqi Gu | Yuqi Gu |
| [BIGTOP-2854](https://issues.apache.org/jira/browse/BIGTOP-2854) | Add provisioner docker yaml config file Debian 8 AArch64 |  Major | build, debian, provisioner | Naresh Bhat | Naresh Bhat |
| [BIGTOP-2839](https://issues.apache.org/jira/browse/BIGTOP-2839) | Bump Hadoop version to 2.7.4 |  Major | hadoop | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2856](https://issues.apache.org/jira/browse/BIGTOP-2856) | [sandbox] Add a condition in detect\_repo() |  Major | build, sandbox | Naresh Bhat | Naresh Bhat |
| [BIGTOP-2872](https://issues.apache.org/jira/browse/BIGTOP-2872) | Replace aarch64 orgnanization with the more-specific arm64v8 organization in Official docker |  Major | docker | Yuqi Gu | Yuqi Gu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2738](https://issues.apache.org/jira/browse/BIGTOP-2738) | spark-worker fails to start |  Critical | spark | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2737](https://issues.apache.org/jira/browse/BIGTOP-2737) | Spark charm doesn't handle HA or examples well |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2748](https://issues.apache.org/jira/browse/BIGTOP-2748) | Fix a puppet compatibilty issue |  Major | toolchain | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2749](https://issues.apache.org/jira/browse/BIGTOP-2749) | puppet: use jessie package on jessie, not trusty |  Major | debian | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2750](https://issues.apache.org/jira/browse/BIGTOP-2750) | puppet: increase compatibility with future versions |  Major | deployment | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2754](https://issues.apache.org/jira/browse/BIGTOP-2754) | Revert BIGTOP-2730: Upgrade Zookeeper to version 3.4.10 |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2753](https://issues.apache.org/jira/browse/BIGTOP-2753) | Initial support for Debian-9 |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2679](https://issues.apache.org/jira/browse/BIGTOP-2679) | Streamline CI Jobs |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2829](https://issues.apache.org/jira/browse/BIGTOP-2829) | [iTest] build failed during Maven integration test phase |  Blocker | tests | Evans Ye | Evans Ye |
| [BIGTOP-2832](https://issues.apache.org/jira/browse/BIGTOP-2832) | Toolchain failed to install on Debian 8 |  Blocker | toolchain | Evans Ye | Evans Ye |
| [BIGTOP-2836](https://issues.apache.org/jira/browse/BIGTOP-2836) | charm metric collector race condition |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2838](https://issues.apache.org/jira/browse/BIGTOP-2838) | Support ARM64 for  packages.gradle |  Major | build | Yuqi Gu | Yuqi Gu |
| [BIGTOP-2841](https://issues.apache.org/jira/browse/BIGTOP-2841) | Failed to build bigtop/slaves-ubuntu-16.04-aarch64 |  Major | toolchain | Jun He | Jun He |
| [BIGTOP-2847](https://issues.apache.org/jira/browse/BIGTOP-2847) | Building from git is broken |  Major | build | Konstantin Boudnik | Olaf Flebbe |
| [BIGTOP-2835](https://issues.apache.org/jira/browse/BIGTOP-2835) | puppet fails when bigtop::jdk\_preinstalled is true |  Major | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2859](https://issues.apache.org/jira/browse/BIGTOP-2859) | Missing HIVE\_VERSION when build hive rpms |  Major | hive | dengkai | dengkai |
| [BIGTOP-2844](https://issues.apache.org/jira/browse/BIGTOP-2844) | zeppelin charm: spark config should match zeppelin spark config |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2863](https://issues.apache.org/jira/browse/BIGTOP-2863) | Test build failed for incompatible JavaDoc format with JDK-8-121 and later |  Major | tests | Jun He | Jun He |
| [BIGTOP-2864](https://issues.apache.org/jira/browse/BIGTOP-2864) | Tez with "Class path contains multiple SLF4J bindings" warnings |  Minor | debian, rpm, tez | dengkai | dengkai |
| [BIGTOP-2866](https://issues.apache.org/jira/browse/BIGTOP-2866) | Fix rmr depricated and people\* No such file or directory error |  Major | spark, tests | Naresh Bhat | Naresh Bhat |
| [BIGTOP-2860](https://issues.apache.org/jira/browse/BIGTOP-2860) | Fix TestSpark.groovy syntax error |  Major | spark, tests | Yuqi Gu | Yuqi Gu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2833](https://issues.apache.org/jira/browse/BIGTOP-2833) | [puppetize.sh] Support centos-7-aarch64 support |  Major | toolchain | Naresh Bhat | Naresh Bhat |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2739](https://issues.apache.org/jira/browse/BIGTOP-2739) | refresh juju bundles with latest charm revs |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |


