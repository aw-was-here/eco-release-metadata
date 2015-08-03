
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

## Release 1.1.0 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-1149](https://issues.apache.org/jira/browse/BIGTOP-1149) | Package Kite |  Major | . | Bruno Mahé | YoungWoo Kim |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-1941](https://issues.apache.org/jira/browse/BIGTOP-1941) | Upgrade Phoenix to 4.4.0 |  Major | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1923](https://issues.apache.org/jira/browse/BIGTOP-1923) | Bump Ignite to 1.2 with major fixes |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1921](https://issues.apache.org/jira/browse/BIGTOP-1921) | Puppet recipe for YCSB |  Minor | deployment | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1920](https://issues.apache.org/jira/browse/BIGTOP-1920) | Include YCSB in Bigtop |  Minor | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1914](https://issues.apache.org/jira/browse/BIGTOP-1914) | improve puppet README.md file |  Trivial | documentation | Martin Bukatovic | Martin Bukatovic |
| [BIGTOP-1910](https://issues.apache.org/jira/browse/BIGTOP-1910) | Adjust the dependency for hue-beeswax |  Major | hue | YoungWoo Kim | YoungWoo Kim |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-1950](https://issues.apache.org/jira/browse/BIGTOP-1950) | Upgrade maven-assembly plugin: StackOverFlowException is thrown |  Blocker | build, tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1949](https://issues.apache.org/jira/browse/BIGTOP-1949) | Sqoop 1.4.5 artifacts aren't getting resolved in the release... |  Blocker | build, tests | Konstantin Boudnik | YoungWoo Kim |
| [BIGTOP-1946](https://issues.apache.org/jira/browse/BIGTOP-1946) | Missing ASL header in some of iTest files |  Blocker | tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1938](https://issues.apache.org/jira/browse/BIGTOP-1938) | kafka packages /usr/bin on RPM |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1937](https://issues.apache.org/jira/browse/BIGTOP-1937) | redhat-lsb is required by kafka daemon |  Major | build | Evans Ye | Evans Ye |
| [BIGTOP-1902](https://issues.apache.org/jira/browse/BIGTOP-1902) | typo in bigtop-deploy/vm/vagrant-puppet-vm/vagrantconfig.yaml |  Trivial | deployment | Minying Lu | Olaf Flebbe |
| [BIGTOP-1896](https://issues.apache.org/jira/browse/BIGTOP-1896) | bigtop\_toolchain broken bei ant update |  Major | build | Olaf Flebbe | Evans Ye |
| [BIGTOP-1893](https://issues.apache.org/jira/browse/BIGTOP-1893) | Compilation of hadoop-yarn-client failed |  Major | build | Martin Bukatovic | Olaf Flebbe |
| [BIGTOP-1892](https://issues.apache.org/jira/browse/BIGTOP-1892) | Current required version of gradle 2.4 is not used everywhere |  Minor | deployment | Martin Bukatovic | Martin Bukatovic |
| [BIGTOP-1886](https://issues.apache.org/jira/browse/BIGTOP-1886) | Kafka server can not create a log-cleaner.log file |  Minor | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1877](https://issues.apache.org/jira/browse/BIGTOP-1877) | Upgrade Crunch to 0.12.0 |  Major | debian, rpm | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1838](https://issues.apache.org/jira/browse/BIGTOP-1838) | Pig build does not publish artifacts of build |  Minor | . | Rob Leidle | Konstantin Boudnik |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-1898](https://issues.apache.org/jira/browse/BIGTOP-1898) | Dockerfiles to build bigtop/puppet docker images for 1.0 release |  Major | . | Evans Ye | Evans Ye |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-1925](https://issues.apache.org/jira/browse/BIGTOP-1925) | Add ywkim as a maintainer for YCSB |  Trivial | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1795](https://issues.apache.org/jira/browse/BIGTOP-1795) | Upgrade bigtop\_toolchain to Maven 3.2.5 |  Major | toolchain | Jonathan Kelly | Jonathan Kelly |


