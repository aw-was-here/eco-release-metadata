
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

## Release 1.1.0 - Unreleased (as of 2015-09-04)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-1976](https://issues.apache.org/jira/browse/BIGTOP-1976) | Replace Pair type with Apache Commons Lang Pair type |  Minor | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1149](https://issues.apache.org/jira/browse/BIGTOP-1149) | Package Kite |  Major | . | Bruno Mahé | YoungWoo Kim |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2005](https://issues.apache.org/jira/browse/BIGTOP-2005) | Remove SCALA\_HOME requirement |  Minor | build, spark | RJ Nowling | RJ Nowling |
| [BIGTOP-1997](https://issues.apache.org/jira/browse/BIGTOP-1997) | Bump bigtop-groovy runtime to 2.4.4 |  Major | debian, rpm | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1993](https://issues.apache.org/jira/browse/BIGTOP-1993) | Bump groovy to 2.4.4 in the development toolchain |  Major | toolchain | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1974](https://issues.apache.org/jira/browse/BIGTOP-1974) | Revise SPARK\_HOME/conf/spark-env.sh |  Major | spark | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1971](https://issues.apache.org/jira/browse/BIGTOP-1971) | Support Spark SQL CLI with Apache Hive out of the box |  Major | spark | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1964](https://issues.apache.org/jira/browse/BIGTOP-1964) | Upgrade Tez version to 0.6.2 |  Major | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1955](https://issues.apache.org/jira/browse/BIGTOP-1955) | Upgrade Ignite Hadoop component version from 1.2.0 to 1.3.0 |  Major | build | Ivan Veselovsky | Ivan Veselovsky |
| [BIGTOP-1941](https://issues.apache.org/jira/browse/BIGTOP-1941) | Upgrade Phoenix to 4.4.0 |  Major | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1923](https://issues.apache.org/jira/browse/BIGTOP-1923) | Bump Ignite to 1.2 with major fixes |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1921](https://issues.apache.org/jira/browse/BIGTOP-1921) | Puppet recipe for YCSB |  Minor | deployment | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1920](https://issues.apache.org/jira/browse/BIGTOP-1920) | Include YCSB in Bigtop |  Minor | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1914](https://issues.apache.org/jira/browse/BIGTOP-1914) | improve puppet README.md file |  Trivial | documentation | Martin Bukatovic | Martin Bukatovic |
| [BIGTOP-1910](https://issues.apache.org/jira/browse/BIGTOP-1910) | Adjust the dependency for hue-beeswax |  Major | hue | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1888](https://issues.apache.org/jira/browse/BIGTOP-1888) | Upgrade Flume to 1.6.0 |  Minor | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1809](https://issues.apache.org/jira/browse/BIGTOP-1809) | Remove gridgain-hadoop component once ignite-hadoop gets added |  Critical | build | Ivan Veselovsky | Ivan Veselovsky |
| [BIGTOP-1126](https://issues.apache.org/jira/browse/BIGTOP-1126) | Add Hama to Bigtop |  Major | . | Edward J. Yoon | Minho Kim |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2008](https://issues.apache.org/jira/browse/BIGTOP-2008) | build.gradle has out-of-date version |  Minor | build | RJ Nowling | RJ Nowling |
| [BIGTOP-2007](https://issues.apache.org/jira/browse/BIGTOP-2007) | bigtop.mk version of the stack needs to be bumped to 1.1.0-SNAPSHOT |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2004](https://issues.apache.org/jira/browse/BIGTOP-2004) | Download task fails with Gradle 2.6 |  Major | build | RJ Nowling | RJ Nowling |
| [BIGTOP-2003](https://issues.apache.org/jira/browse/BIGTOP-2003) | Bigtop puppet fails to deploy on Ubuntu due to a hiera 1.3.0 bug |  Major | vm | Evans Ye | Evans Ye |
| [BIGTOP-1999](https://issues.apache.org/jira/browse/BIGTOP-1999) | website link to the release bits is broken and points to the top-level mirror's directory |  Major | website | Konstantin Boudnik | Olaf Flebbe |
| [BIGTOP-1967](https://issues.apache.org/jira/browse/BIGTOP-1967) | Update the front-page of the website with new CI hostname |  Major | website | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1966](https://issues.apache.org/jira/browse/BIGTOP-1966) | site's index.xml is malformatted |  Blocker | website | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1963](https://issues.apache.org/jira/browse/BIGTOP-1963) | Upgrade Mahout to 0.11.0 |  Major | general | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1958](https://issues.apache.org/jira/browse/BIGTOP-1958) | Upgrade default repositories and docker images to 1.0 |  Blocker | deployment | Evans Ye | Evans Ye |
| [BIGTOP-1956](https://issues.apache.org/jira/browse/BIGTOP-1956) | Multi RS HBase requires unique hbase.tmp.dir to be set for each RS on a node |  Major | hbase | Biju Nair | Biju Nair |
| [BIGTOP-1954](https://issues.apache.org/jira/browse/BIGTOP-1954) | Change the component name in the MAINTAINERS.txt |  Major | general | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1951](https://issues.apache.org/jira/browse/BIGTOP-1951) | Fix licenses in the source files |  Blocker | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1950](https://issues.apache.org/jira/browse/BIGTOP-1950) | Upgrade maven-assembly plugin: StackOverFlowException is thrown |  Blocker | build, tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1949](https://issues.apache.org/jira/browse/BIGTOP-1949) | Sqoop 1.4.5 artifacts aren't getting resolved in the release... |  Blocker | build, tests | Konstantin Boudnik | YoungWoo Kim |
| [BIGTOP-1946](https://issues.apache.org/jira/browse/BIGTOP-1946) | Missing ASL header in some of iTest files |  Blocker | tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1938](https://issues.apache.org/jira/browse/BIGTOP-1938) | kafka packages /usr/bin on RPM |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1937](https://issues.apache.org/jira/browse/BIGTOP-1937) | redhat-lsb is required by kafka daemon |  Major | build | Evans Ye | Evans Ye |
| [BIGTOP-1917](https://issues.apache.org/jira/browse/BIGTOP-1917) | Simplify gradle creating apt/yum repositories for better CI |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1916](https://issues.apache.org/jira/browse/BIGTOP-1916) | Update Website for 1.0 |  Major | website | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1902](https://issues.apache.org/jira/browse/BIGTOP-1902) | typo in bigtop-deploy/vm/vagrant-puppet-vm/vagrantconfig.yaml |  Trivial | deployment | Minying Lu | Olaf Flebbe |
| [BIGTOP-1896](https://issues.apache.org/jira/browse/BIGTOP-1896) | bigtop\_toolchain broken bei ant update |  Major | build | Olaf Flebbe | Evans Ye |
| [BIGTOP-1894](https://issues.apache.org/jira/browse/BIGTOP-1894) | Snappy development packages are missing from bigtop\_toolchain |  Major | build | Olaf Flebbe | Olaf Flebbe |
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
| [BIGTOP-2000](https://issues.apache.org/jira/browse/BIGTOP-2000) | Add BigTop Data Generators to maintainers file |  Minor | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1995](https://issues.apache.org/jira/browse/BIGTOP-1995) | Update BigPetStore to use external locations  data |  Major | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1992](https://issues.apache.org/jira/browse/BIGTOP-1992) | Fix RAT check errors resulting from BPS data generator move |  Blocker | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1990](https://issues.apache.org/jira/browse/BIGTOP-1990) | Add gradle multi-project build files for bigtop-data-generators |  Minor | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1986](https://issues.apache.org/jira/browse/BIGTOP-1986) | Extract location dataset from BigPetStore data generator |  Minor | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1985](https://issues.apache.org/jira/browse/BIGTOP-1985) | Extract name generator from BigPetStore data generator |  Minor | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1984](https://issues.apache.org/jira/browse/BIGTOP-1984) | Extract samplers library from BigPetStore data generator |  Minor | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1983](https://issues.apache.org/jira/browse/BIGTOP-1983) | Move BigPetStore data generator to bigtop-data-generators |  Minor | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1975](https://issues.apache.org/jira/browse/BIGTOP-1975) | Smoke tests for Spark SQL |  Major | spark | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1973](https://issues.apache.org/jira/browse/BIGTOP-1973) | Add new tests for HDFS Balancer functionality |  Minor | tests | Venkata Srinivasa Rao Kolla | Venkata Srinivasa Rao Kolla |
| [BIGTOP-1965](https://issues.apache.org/jira/browse/BIGTOP-1965) | Remove the link to 0.8.0 from the website |  Major | website | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1947](https://issues.apache.org/jira/browse/BIGTOP-1947) | Fix RAT plugin configuration to be able to RAT-validate all published artifacts |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1898](https://issues.apache.org/jira/browse/BIGTOP-1898) | Dockerfiles to build bigtop/puppet docker images for 1.0 release |  Major | . | Evans Ye | Evans Ye |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-1953](https://issues.apache.org/jira/browse/BIGTOP-1953) | Upgrade bigtop\_toolchain to Maven 3.3.3 |  Major | toolchain | Jonathan Kelly | Olaf Flebbe |
| [BIGTOP-1925](https://issues.apache.org/jira/browse/BIGTOP-1925) | Add ywkim as a maintainer for YCSB |  Trivial | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1821](https://issues.apache.org/jira/browse/BIGTOP-1821) | Add smoke tests for Ignite Hadoop Bigtop module |  Major | tests | Ivan Veselovsky | Ivan Veselovsky |
| [BIGTOP-1795](https://issues.apache.org/jira/browse/BIGTOP-1795) | Upgrade bigtop\_toolchain to Maven 3.2.5 |  Major | toolchain | Jonathan Kelly | Jonathan Kelly |


