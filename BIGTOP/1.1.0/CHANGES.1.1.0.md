
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

## Release 1.1.0 - Unreleased (as of 2015-10-07)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-1976](https://issues.apache.org/jira/browse/BIGTOP-1976) | Replace Pair type with Apache Commons Lang Pair type |  Minor | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1746](https://issues.apache.org/jira/browse/BIGTOP-1746) | Introduce the concept of roles in bigtop cluster deployment |  Major | deployment | vishnu gajendran | vishnu gajendran |
| [BIGTOP-1149](https://issues.apache.org/jira/browse/BIGTOP-1149) | Package Kite |  Major | . | Bruno Mahé | YoungWoo Kim |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2080](https://issues.apache.org/jira/browse/BIGTOP-2080) | Investigate removing Scala from the toolchain |  Minor | toolchain | RJ Nowling | RJ Nowling |
| [BIGTOP-2065](https://issues.apache.org/jira/browse/BIGTOP-2065) | Update deployment README.md to reflect on better deployment experience |  Major | documentation | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2020](https://issues.apache.org/jira/browse/BIGTOP-2020) | Add Gradle RAT plugin to the top-level project |  Major | build | RJ Nowling | RJ Nowling |
| [BIGTOP-2018](https://issues.apache.org/jira/browse/BIGTOP-2018) | Create a puppetizing script |  Major | deployment | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2005](https://issues.apache.org/jira/browse/BIGTOP-2005) | Remove SCALA\_HOME requirement |  Minor | build, spark | RJ Nowling | RJ Nowling |
| [BIGTOP-1997](https://issues.apache.org/jira/browse/BIGTOP-1997) | Bump bigtop-groovy runtime to 2.4.4 |  Major | debian, rpm | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1993](https://issues.apache.org/jira/browse/BIGTOP-1993) | Bump groovy to 2.4.4 in the development toolchain |  Major | toolchain | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1974](https://issues.apache.org/jira/browse/BIGTOP-1974) | Revise SPARK\_HOME/conf/spark-env.sh |  Major | spark | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1971](https://issues.apache.org/jira/browse/BIGTOP-1971) | Support Spark SQL CLI with Apache Hive out of the box |  Major | spark | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1970](https://issues.apache.org/jira/browse/BIGTOP-1970) | Ignite IGFS now fully supports mutiltenancy: deployment should configure it with HDFS backing |  Major | deployment | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1964](https://issues.apache.org/jira/browse/BIGTOP-1964) | Upgrade Tez version to 0.6.2 |  Major | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1955](https://issues.apache.org/jira/browse/BIGTOP-1955) | Upgrade Ignite Hadoop component version from 1.2.0 to 1.3.0 |  Major | build | Ivan Veselovsky | Ivan Veselovsky |
| [BIGTOP-1943](https://issues.apache.org/jira/browse/BIGTOP-1943) | Upgrade SCALA version to 2.10.4 |  Major | toolchain | YoungWoo Kim | RJ Nowling |
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
| [BIGTOP-2071](https://issues.apache.org/jira/browse/BIGTOP-2071) | Gstring.empty doesn't exist |  Blocker | build | RJ Nowling | RJ Nowling |
| [BIGTOP-2068](https://issues.apache.org/jira/browse/BIGTOP-2068) | Cannot Build Bigtop-Utils packages |  Critical | build | Alex Elent | Konstantin Boudnik |
| [BIGTOP-2066](https://issues.apache.org/jira/browse/BIGTOP-2066) | init-hdfs.sh is broken by recent hadoop update |  Major | hadoop | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2057](https://issues.apache.org/jira/browse/BIGTOP-2057) | null check doesn't safeguard against non-existing values in the BOM config |  Blocker | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2056](https://issues.apache.org/jira/browse/BIGTOP-2056) | Remove top-level check-env.sh |  Major | build | Konstantin Boudnik | Olaf Flebbe |
| [BIGTOP-2054](https://issues.apache.org/jira/browse/BIGTOP-2054) | Update Pig |  Major | build, pig | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2053](https://issues.apache.org/jira/browse/BIGTOP-2053) | After rebasing on Hadoop 2.7.1 yarn module should be returned to ignite-hadoop build |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2052](https://issues.apache.org/jira/browse/BIGTOP-2052) | Remove obsolete environment variables |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2050](https://issues.apache.org/jira/browse/BIGTOP-2050) | Description of clean tasks have null entries |  Major | build | RJ Nowling | Konstantin Boudnik |
| [BIGTOP-2046](https://issues.apache.org/jira/browse/BIGTOP-2046) | puppet module search path |  Major | build, deployment, toolchain | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2044](https://issues.apache.org/jira/browse/BIGTOP-2044) | Unnecessary printout has been introduced by BIGTOP-1494 |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2043](https://issues.apache.org/jira/browse/BIGTOP-2043) | Kafka source incorrect |  Major | build | Tom Zeng | Tom Zeng |
| [BIGTOP-2042](https://issues.apache.org/jira/browse/BIGTOP-2042) | Tachyon name is incorrect |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2041](https://issues.apache.org/jira/browse/BIGTOP-2041) | Spark pkg name is incorrect |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2039](https://issues.apache.org/jira/browse/BIGTOP-2039) | Solr download URL is incorrect |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2038](https://issues.apache.org/jira/browse/BIGTOP-2038) | Pig destination name incorrect |  Major | pig | Tom Zeng | Tom Zeng |
| [BIGTOP-2037](https://issues.apache.org/jira/browse/BIGTOP-2037) | BIGTOP-1746 Added Files Without Apache License Headers |  Major | deployment | RJ Nowling | Kengo Seki |
| [BIGTOP-2027](https://issues.apache.org/jira/browse/BIGTOP-2027) | Bump gradle version, the wrapper to 2.7 |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2026](https://issues.apache.org/jira/browse/BIGTOP-2026) | Phoenix build defines HBASE\_VERSION in two different places. |  Major | debian, rpm | Konstantin Boudnik | Andrew Purtell |
| [BIGTOP-2019](https://issues.apache.org/jira/browse/BIGTOP-2019) | BigPetStore Spark isn't compiling due to changes in SQL API |  Major | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-2017](https://issues.apache.org/jira/browse/BIGTOP-2017) | Rebase bigtop-slaves on bigtop-puppet |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2014](https://issues.apache.org/jira/browse/BIGTOP-2014) | [VM provisioner] Missing FQDN on Ubuntu causes puppet deployment malfunction |  Major | vm | Evans Ye | Evans Ye |
| [BIGTOP-2008](https://issues.apache.org/jira/browse/BIGTOP-2008) | build.gradle has out-of-date version |  Minor | build | RJ Nowling | RJ Nowling |
| [BIGTOP-2007](https://issues.apache.org/jira/browse/BIGTOP-2007) | bigtop.mk version of the stack needs to be bumped to 1.1.0-SNAPSHOT |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2004](https://issues.apache.org/jira/browse/BIGTOP-2004) | Download task fails with Gradle 2.6 |  Major | build | RJ Nowling | RJ Nowling |
| [BIGTOP-2003](https://issues.apache.org/jira/browse/BIGTOP-2003) | Bigtop puppet fails to deploy on Ubuntu due to a hiera 1.3.0 bug |  Major | vm | Evans Ye | Evans Ye |
| [BIGTOP-1999](https://issues.apache.org/jira/browse/BIGTOP-1999) | website link to the release bits is broken and points to the top-level mirror's directory |  Major | website | Konstantin Boudnik | Olaf Flebbe |
| [BIGTOP-1996](https://issues.apache.org/jira/browse/BIGTOP-1996) | Dockerfiles for bigtop-slaves |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1987](https://issues.apache.org/jira/browse/BIGTOP-1987) | Recover resources/kmeans\_data.txt for Spark smokes |  Major | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1967](https://issues.apache.org/jira/browse/BIGTOP-1967) | Update the front-page of the website with new CI hostname |  Major | website | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1966](https://issues.apache.org/jira/browse/BIGTOP-1966) | site's index.xml is malformatted |  Blocker | website | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1963](https://issues.apache.org/jira/browse/BIGTOP-1963) | Upgrade Mahout to 0.11.0 |  Major | general | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1960](https://issues.apache.org/jira/browse/BIGTOP-1960) | The smoke-test wrapper in bigtop-deploy can only be used in redhat series of Linux |  Minor | deployment, tests | Evans Ye | Evans Ye |
| [BIGTOP-1958](https://issues.apache.org/jira/browse/BIGTOP-1958) | Upgrade default repositories and docker images to 1.0 |  Blocker | deployment | Evans Ye | Evans Ye |
| [BIGTOP-1956](https://issues.apache.org/jira/browse/BIGTOP-1956) | Multi RS HBase requires unique hbase.tmp.dir to be set for each RS on a node |  Major | hbase | Biju Nair | Biju Nair |
| [BIGTOP-1954](https://issues.apache.org/jira/browse/BIGTOP-1954) | Change the component name in the MAINTAINERS.txt |  Major | general | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1951](https://issues.apache.org/jira/browse/BIGTOP-1951) | Fix licenses in the source files |  Blocker | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1950](https://issues.apache.org/jira/browse/BIGTOP-1950) | Upgrade maven-assembly plugin: StackOverFlowException is thrown |  Blocker | build, tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1949](https://issues.apache.org/jira/browse/BIGTOP-1949) | Sqoop 1.4.5 artifacts aren't getting resolved in the release... |  Blocker | build, tests | Konstantin Boudnik | YoungWoo Kim |
| [BIGTOP-1946](https://issues.apache.org/jira/browse/BIGTOP-1946) | Missing ASL header in some of iTest files |  Blocker | tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1938](https://issues.apache.org/jira/browse/BIGTOP-1938) | kafka packages /usr/bin on RPM |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1937](https://issues.apache.org/jira/browse/BIGTOP-1937) | redhat-lsb is required by kafka daemon |  Major | build | Evans Ye | Evans Ye |
| [BIGTOP-1936](https://issues.apache.org/jira/browse/BIGTOP-1936) | Provide JDK8 for Bigtop |  Major | toolchain | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1917](https://issues.apache.org/jira/browse/BIGTOP-1917) | Simplify gradle creating apt/yum repositories for better CI |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1916](https://issues.apache.org/jira/browse/BIGTOP-1916) | Update Website for 1.0 |  Major | website | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1913](https://issues.apache.org/jira/browse/BIGTOP-1913) | Update hive to 1.2.1 |  Major | hive | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1909](https://issues.apache.org/jira/browse/BIGTOP-1909) | Include compiled .mo files for HUE i18n |  Trivial | hue | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1902](https://issues.apache.org/jira/browse/BIGTOP-1902) | typo in bigtop-deploy/vm/vagrant-puppet-vm/vagrantconfig.yaml |  Trivial | deployment | Minying Lu | Olaf Flebbe |
| [BIGTOP-1896](https://issues.apache.org/jira/browse/BIGTOP-1896) | bigtop\_toolchain broken bei ant update |  Major | build | Olaf Flebbe | Evans Ye |
| [BIGTOP-1894](https://issues.apache.org/jira/browse/BIGTOP-1894) | Snappy development packages are missing from bigtop\_toolchain |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1893](https://issues.apache.org/jira/browse/BIGTOP-1893) | Compilation of hadoop-yarn-client failed |  Major | build | Martin Bukatovic | Olaf Flebbe |
| [BIGTOP-1892](https://issues.apache.org/jira/browse/BIGTOP-1892) | Current required version of gradle 2.4 is not used everywhere |  Minor | deployment | Martin Bukatovic | Martin Bukatovic |
| [BIGTOP-1886](https://issues.apache.org/jira/browse/BIGTOP-1886) | Kafka server can not create a log-cleaner.log file |  Minor | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1877](https://issues.apache.org/jira/browse/BIGTOP-1877) | Upgrade Crunch to 0.12.0 |  Major | debian, rpm | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1838](https://issues.apache.org/jira/browse/BIGTOP-1838) | Pig build does not publish artifacts of build |  Minor | . | Rob Leidle | Konstantin Boudnik |
| [BIGTOP-1805](https://issues.apache.org/jira/browse/BIGTOP-1805) | Upgrade Hadoop to 2.7 if released |  Major | hadoop | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1344](https://issues.apache.org/jira/browse/BIGTOP-1344) | spec files assume RPMs being built on Red Hat |  Major | rpm | Allen Wittenauer | Olaf Flebbe |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2055](https://issues.apache.org/jira/browse/BIGTOP-2055) | Refactor packages.gradle to get rid of excessive data containers; make code cleaner |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2051](https://issues.apache.org/jira/browse/BIGTOP-2051) | Get rid of hair-brain environment vars left after make-based build |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2033](https://issues.apache.org/jira/browse/BIGTOP-2033) | Build order of the stack is broken |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2025](https://issues.apache.org/jira/browse/BIGTOP-2025) | Make BOM to be a directional graph |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2009](https://issues.apache.org/jira/browse/BIGTOP-2009) | Add new tests for chgrp, cp, ls, mv, du, put, get, mkdir, stat and touchz |  Minor | general | Venkata Srinivasa Rao Kolla | Venkata Srinivasa Rao Kolla |
| [BIGTOP-2000](https://issues.apache.org/jira/browse/BIGTOP-2000) | Add BigTop Data Generators to maintainers file |  Minor | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1995](https://issues.apache.org/jira/browse/BIGTOP-1995) | Update BigPetStore to use external locations  data |  Major | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1992](https://issues.apache.org/jira/browse/BIGTOP-1992) | Fix RAT check errors resulting from BPS data generator move |  Blocker | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1991](https://issues.apache.org/jira/browse/BIGTOP-1991) | Add BigTop Weatherman |  Minor | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1990](https://issues.apache.org/jira/browse/BIGTOP-1990) | Add gradle multi-project build files for bigtop-data-generators |  Minor | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1986](https://issues.apache.org/jira/browse/BIGTOP-1986) | Extract location dataset from BigPetStore data generator |  Minor | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1985](https://issues.apache.org/jira/browse/BIGTOP-1985) | Extract name generator from BigPetStore data generator |  Minor | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1984](https://issues.apache.org/jira/browse/BIGTOP-1984) | Extract samplers library from BigPetStore data generator |  Minor | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1983](https://issues.apache.org/jira/browse/BIGTOP-1983) | Move BigPetStore data generator to bigtop-data-generators |  Minor | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1981](https://issues.apache.org/jira/browse/BIGTOP-1981) | Add new tests for test, text, count commands |  Minor | general | Venkata Srinivasa Rao Kolla | Venkata Srinivasa Rao Kolla |
| [BIGTOP-1975](https://issues.apache.org/jira/browse/BIGTOP-1975) | Smoke tests for Spark SQL |  Major | spark | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1973](https://issues.apache.org/jira/browse/BIGTOP-1973) | Add new tests for HDFS Balancer functionality |  Minor | tests | Venkata Srinivasa Rao Kolla | Venkata Srinivasa Rao Kolla |
| [BIGTOP-1965](https://issues.apache.org/jira/browse/BIGTOP-1965) | Remove the link to 0.8.0 from the website |  Major | website | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1947](https://issues.apache.org/jira/browse/BIGTOP-1947) | Fix RAT plugin configuration to be able to RAT-validate all published artifacts |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1898](https://issues.apache.org/jira/browse/BIGTOP-1898) | Dockerfiles to build bigtop/puppet docker images for 1.0 release |  Major | . | Evans Ye | Evans Ye |
| [BIGTOP-1494](https://issues.apache.org/jira/browse/BIGTOP-1494) | Introduce Groovy DSL to replace bigtop.mk |  Major | build | jay vyas | Konstantin Boudnik |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2069](https://issues.apache.org/jira/browse/BIGTOP-2069) | Update README.md to reflect CTR trial |  Major | documentation | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1953](https://issues.apache.org/jira/browse/BIGTOP-1953) | Upgrade bigtop\_toolchain to Maven 3.3.3 |  Major | toolchain | Jonathan Kelly | Olaf Flebbe |
| [BIGTOP-1925](https://issues.apache.org/jira/browse/BIGTOP-1925) | Add ywkim as a maintainer for YCSB |  Trivial | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1821](https://issues.apache.org/jira/browse/BIGTOP-1821) | Add smoke tests for Ignite Hadoop Bigtop module |  Major | tests | Ivan Veselovsky | Ivan Veselovsky |
| [BIGTOP-1795](https://issues.apache.org/jira/browse/BIGTOP-1795) | Upgrade bigtop\_toolchain to Maven 3.2.5 |  Major | toolchain | Jonathan Kelly | Jonathan Kelly |


