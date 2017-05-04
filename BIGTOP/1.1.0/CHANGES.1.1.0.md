
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

## Release 1.1.0 - 2016-01-30



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2363](https://issues.apache.org/jira/browse/BIGTOP-2363) | User Guide for version 1.1.0 is blank |  Major | documentation | Sijee | Olaf Flebbe |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-1149](https://issues.apache.org/jira/browse/BIGTOP-1149) | Package Kite |  Major | . | Bruno Mahé | YoungWoo Kim |
| [BIGTOP-1976](https://issues.apache.org/jira/browse/BIGTOP-1976) | Replace Pair type with Apache Commons Lang Pair type |  Minor | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1746](https://issues.apache.org/jira/browse/BIGTOP-1746) | Introduce the concept of roles in bigtop cluster deployment |  Major | deployment | vishnu gajendran | vishnu gajendran |
| [BIGTOP-1769](https://issues.apache.org/jira/browse/BIGTOP-1769) | Zeppelin Integration |  Major | general | Jongyoul Lee | Jonathan Kelly |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-1910](https://issues.apache.org/jira/browse/BIGTOP-1910) | Adjust the dependency for hue-beeswax |  Major | hue | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1914](https://issues.apache.org/jira/browse/BIGTOP-1914) | improve puppet README.md file |  Trivial | documentation | Martin Bukatovic | Martin Bukatovic |
| [BIGTOP-1923](https://issues.apache.org/jira/browse/BIGTOP-1923) | Bump Ignite to 1.2 with major fixes |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1920](https://issues.apache.org/jira/browse/BIGTOP-1920) | Include YCSB in Bigtop |  Minor | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1921](https://issues.apache.org/jira/browse/BIGTOP-1921) | Puppet recipe for YCSB |  Minor | deployment | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1941](https://issues.apache.org/jira/browse/BIGTOP-1941) | Upgrade Phoenix to 4.4.0 |  Major | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1888](https://issues.apache.org/jira/browse/BIGTOP-1888) | Upgrade Flume to 1.6.0 |  Minor | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1809](https://issues.apache.org/jira/browse/BIGTOP-1809) | Remove gridgain-hadoop component once ignite-hadoop gets added |  Critical | build | Ivan Veselovsky | Ivan Veselovsky |
| [BIGTOP-1955](https://issues.apache.org/jira/browse/BIGTOP-1955) | Upgrade Ignite Hadoop component version from 1.2.0 to 1.3.0 |  Major | build | Ivan Veselovsky | Ivan Veselovsky |
| [BIGTOP-1964](https://issues.apache.org/jira/browse/BIGTOP-1964) | Upgrade Tez version to 0.6.2 |  Major | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1126](https://issues.apache.org/jira/browse/BIGTOP-1126) | Add Hama to Bigtop |  Major | general | Edward J. Yoon | Minho Kim |
| [BIGTOP-1971](https://issues.apache.org/jira/browse/BIGTOP-1971) | Support Spark SQL CLI with Apache Hive out of the box |  Major | spark | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1974](https://issues.apache.org/jira/browse/BIGTOP-1974) | Revise SPARK\_HOME/conf/spark-env.sh |  Major | spark | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1997](https://issues.apache.org/jira/browse/BIGTOP-1997) | Bump bigtop-groovy runtime to 2.4.4 |  Major | debian, rpm | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1993](https://issues.apache.org/jira/browse/BIGTOP-1993) | Bump groovy to 2.4.4 in the development toolchain |  Major | toolchain | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2005](https://issues.apache.org/jira/browse/BIGTOP-2005) | Remove SCALA\_HOME requirement |  Minor | build, spark | RJ Nowling | RJ Nowling |
| [BIGTOP-2018](https://issues.apache.org/jira/browse/BIGTOP-2018) | Create a puppetizing script |  Major | deployment | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2020](https://issues.apache.org/jira/browse/BIGTOP-2020) | Add Gradle RAT plugin to the top-level project |  Major | build | RJ Nowling | RJ Nowling |
| [BIGTOP-2065](https://issues.apache.org/jira/browse/BIGTOP-2065) | Update deployment README.md to reflect on better deployment experience |  Major | documentation | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1970](https://issues.apache.org/jira/browse/BIGTOP-1970) | Ignite IGFS now fully supports mutiltenancy: deployment should configure it with HDFS backing |  Major | deployment | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2080](https://issues.apache.org/jira/browse/BIGTOP-2080) | Investigate removing Scala from the toolchain |  Minor | toolchain | RJ Nowling | RJ Nowling |
| [BIGTOP-1943](https://issues.apache.org/jira/browse/BIGTOP-1943) | Upgrade SCALA version to 2.10.4 |  Major | toolchain | YoungWoo Kim | RJ Nowling |
| [BIGTOP-2063](https://issues.apache.org/jira/browse/BIGTOP-2063) | Provide default config to deploy hive on top of Ignite |  Major | deployment | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2091](https://issues.apache.org/jira/browse/BIGTOP-2091) | Build ignite-hadoop assembly with specific version of Spark |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1908](https://issues.apache.org/jira/browse/BIGTOP-1908) | Move bigtop-deploy\'s dockerfiles into a centralized docker place |  Major | build, docker | Evans Ye | Evans Ye |
| [BIGTOP-2103](https://issues.apache.org/jira/browse/BIGTOP-2103) | [Docker] Move bigtop/slaves image build to gradle |  Major | build, docker | Evans Ye | Evans Ye |
| [BIGTOP-1309](https://issues.apache.org/jira/browse/BIGTOP-1309) | Gradle environment overhaul |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1942](https://issues.apache.org/jira/browse/BIGTOP-1942) | Upgrade Phoenix to 4.6.0 |  Major | build | YoungWoo Kim | Jonathan Kelly |
| [BIGTOP-2102](https://issues.apache.org/jira/browse/BIGTOP-2102) | Upgrade YCSB to 0.4.0 |  Major | build | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2143](https://issues.apache.org/jira/browse/BIGTOP-2143) | [Puppet] Automatically generate default repo |  Major | deployment | Evans Ye | Evans Ye |
| [BIGTOP-2153](https://issues.apache.org/jira/browse/BIGTOP-2153) | Simplify and complete storage dir creation |  Trivial | deployment | Michael Weiser | Michael Weiser |
| [BIGTOP-2142](https://issues.apache.org/jira/browse/BIGTOP-2142) | Source cleanup: bigtop-repos shouldn\'t be top-level. |  Major | build | Konstantin Boudnik | Sergey Soldatov |
| [BIGTOP-1915](https://issues.apache.org/jira/browse/BIGTOP-1915) | Upgrade Oozie to 4.2.0 |  Minor | . | YoungWoo Kim | Mike Grimes |
| [BIGTOP-2110](https://issues.apache.org/jira/browse/BIGTOP-2110) | [Docker] Cache packages required by gradle to execute into bigtop/slaves images |  Major | build, docker | Evans Ye | Evans Ye |
| [BIGTOP-2164](https://issues.apache.org/jira/browse/BIGTOP-2164) | Phoenix Queryserver should write it\'s logs into /var/log/phoenix/ |  Trivial | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2163](https://issues.apache.org/jira/browse/BIGTOP-2163) | Add a phoenix-pherf sub-package for Phoenix |  Major | debian, rpm | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2141](https://issues.apache.org/jira/browse/BIGTOP-2141) | Have a way to specify alternative BOM file in the build time |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2081](https://issues.apache.org/jira/browse/BIGTOP-2081) | implement a nexus docker container for CI |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2192](https://issues.apache.org/jira/browse/BIGTOP-2192) | Start generating ubuntu-14.04 deployment image |  Major | deployment | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2194](https://issues.apache.org/jira/browse/BIGTOP-2194) | Add Ubuntu configuration to the docker provisioner |  Major | deployment | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2239](https://issues.apache.org/jira/browse/BIGTOP-2239) | Smoke tests should have a single location for logger configuration |  Major | tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2259](https://issues.apache.org/jira/browse/BIGTOP-2259) | Check for smoke-test projects should be generalized |  Major | tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1944](https://issues.apache.org/jira/browse/BIGTOP-1944) | Upgrade Spark version to 1.5.1 |  Major | spark | YoungWoo Kim | Jonathan Kelly |
| [BIGTOP-2119](https://issues.apache.org/jira/browse/BIGTOP-2119) | Bump Mahout version to 0.11.1 |  Major | general | Suneel Marthi | Andrew Musselman |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-1838](https://issues.apache.org/jira/browse/BIGTOP-1838) | Pig build does not publish artifacts of build |  Minor | . | Rob Leidle | Konstantin Boudnik |
| [BIGTOP-1892](https://issues.apache.org/jira/browse/BIGTOP-1892) | Current required version of gradle 2.4 is not used everywhere |  Minor | deployment | Martin Bukatovic | Martin Bukatovic |
| [BIGTOP-1902](https://issues.apache.org/jira/browse/BIGTOP-1902) | typo in bigtop-deploy/vm/vagrant-puppet-vm/vagrantconfig.yaml |  Trivial | deployment | Minying Lu | Olaf Flebbe |
| [BIGTOP-1896](https://issues.apache.org/jira/browse/BIGTOP-1896) | bigtop\_toolchain broken bei ant update |  Major | build | Olaf Flebbe | Evans Ye |
| [BIGTOP-1893](https://issues.apache.org/jira/browse/BIGTOP-1893) | Compilation of hadoop-yarn-client failed |  Major | build | Martin Bukatovic | Olaf Flebbe |
| [BIGTOP-1877](https://issues.apache.org/jira/browse/BIGTOP-1877) | Upgrade Crunch to 0.12.0 |  Major | debian, rpm | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1886](https://issues.apache.org/jira/browse/BIGTOP-1886) | Kafka server can not create a log-cleaner.log file |  Minor | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1937](https://issues.apache.org/jira/browse/BIGTOP-1937) | redhat-lsb is required by kafka daemon |  Major | build | Evans Ye | Evans Ye |
| [BIGTOP-1938](https://issues.apache.org/jira/browse/BIGTOP-1938) | kafka packages /usr/bin on RPM |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1946](https://issues.apache.org/jira/browse/BIGTOP-1946) | Missing ASL header in some of iTest files |  Blocker | tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1949](https://issues.apache.org/jira/browse/BIGTOP-1949) | Sqoop 1.4.5 artifacts aren\'t getting resolved in the release... |  Blocker | build, tests | Konstantin Boudnik | YoungWoo Kim |
| [BIGTOP-1950](https://issues.apache.org/jira/browse/BIGTOP-1950) | Upgrade maven-assembly plugin: StackOverFlowException is thrown |  Blocker | build, tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1954](https://issues.apache.org/jira/browse/BIGTOP-1954) | Change the component name in the MAINTAINERS.txt |  Major | general | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1917](https://issues.apache.org/jira/browse/BIGTOP-1917) | Simplify gradle creating apt/yum repositories for better CI |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1958](https://issues.apache.org/jira/browse/BIGTOP-1958) | Upgrade default repositories and docker images to 1.0 |  Blocker | deployment | Evans Ye | Evans Ye |
| [BIGTOP-1951](https://issues.apache.org/jira/browse/BIGTOP-1951) | Fix licenses in the source files |  Blocker | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1894](https://issues.apache.org/jira/browse/BIGTOP-1894) | Snappy development packages are missing from bigtop\_toolchain |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1916](https://issues.apache.org/jira/browse/BIGTOP-1916) | Update Website for 1.0 |  Major | website | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1966](https://issues.apache.org/jira/browse/BIGTOP-1966) | site\'s index.xml is malformatted |  Blocker | website | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1967](https://issues.apache.org/jira/browse/BIGTOP-1967) | Update the front-page of the website with new CI hostname |  Major | website | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1956](https://issues.apache.org/jira/browse/BIGTOP-1956) | Multi RS HBase requires unique hbase.tmp.dir to be set for each RS on a node |  Major | hbase | Biju Nair | Biju Nair |
| [BIGTOP-1963](https://issues.apache.org/jira/browse/BIGTOP-1963) | Upgrade Mahout to 0.11.0 |  Major | general | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1999](https://issues.apache.org/jira/browse/BIGTOP-1999) | website link to the release bits is broken and points to the top-level mirror\'s directory |  Major | website | Konstantin Boudnik | Olaf Flebbe |
| [BIGTOP-2004](https://issues.apache.org/jira/browse/BIGTOP-2004) | Download task fails with Gradle 2.6 |  Major | build | RJ Nowling | RJ Nowling |
| [BIGTOP-2007](https://issues.apache.org/jira/browse/BIGTOP-2007) | bigtop.mk version of the stack needs to be bumped to 1.1.0-SNAPSHOT |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2008](https://issues.apache.org/jira/browse/BIGTOP-2008) | build.gradle has out-of-date version |  Minor | build | RJ Nowling | RJ Nowling |
| [BIGTOP-2003](https://issues.apache.org/jira/browse/BIGTOP-2003) | Bigtop puppet fails to deploy on Ubuntu due to a hiera 1.3.0 bug |  Major | vm | Evans Ye | Evans Ye |
| [BIGTOP-1996](https://issues.apache.org/jira/browse/BIGTOP-1996) | Dockerfiles for bigtop-slaves |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1909](https://issues.apache.org/jira/browse/BIGTOP-1909) | Include compiled .mo files for HUE i18n |  Trivial | hue | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2019](https://issues.apache.org/jira/browse/BIGTOP-2019) | BigPetStore Spark isn\'t compiling due to changes in SQL API |  Major | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1805](https://issues.apache.org/jira/browse/BIGTOP-1805) | Upgrade Hadoop to 2.7 if released |  Major | hadoop | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1344](https://issues.apache.org/jira/browse/BIGTOP-1344) | spec files assume RPMs being built on Red Hat |  Major | rpm | Allen Wittenauer | Olaf Flebbe |
| [BIGTOP-2026](https://issues.apache.org/jira/browse/BIGTOP-2026) | Phoenix build defines HBASE\_VERSION in two different places. |  Major | debian, rpm | Konstantin Boudnik | Andrew Purtell |
| [BIGTOP-2038](https://issues.apache.org/jira/browse/BIGTOP-2038) | Pig destination name incorrect |  Major | pig | Tom Zeng | Tom Zeng |
| [BIGTOP-2043](https://issues.apache.org/jira/browse/BIGTOP-2043) | Kafka source incorrect |  Major | build | Tom Zeng | Tom Zeng |
| [BIGTOP-2042](https://issues.apache.org/jira/browse/BIGTOP-2042) | Tachyon name is incorrect |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2041](https://issues.apache.org/jira/browse/BIGTOP-2041) | Spark pkg name is incorrect |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2039](https://issues.apache.org/jira/browse/BIGTOP-2039) | Solr download URL is incorrect |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2044](https://issues.apache.org/jira/browse/BIGTOP-2044) | Unnecessary printout has been introduced by BIGTOP-1494 |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2017](https://issues.apache.org/jira/browse/BIGTOP-2017) | Rebase bigtop-slaves on bigtop-puppet |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1936](https://issues.apache.org/jira/browse/BIGTOP-1936) | Provide JDK8 for Bigtop |  Major | toolchain | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2046](https://issues.apache.org/jira/browse/BIGTOP-2046) | puppet module search path |  Major | build, deployment, toolchain | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2027](https://issues.apache.org/jira/browse/BIGTOP-2027) | Bump gradle version, the wrapper to 2.7 |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2050](https://issues.apache.org/jira/browse/BIGTOP-2050) | Description of clean tasks have null entries |  Major | build | RJ Nowling | Konstantin Boudnik |
| [BIGTOP-1987](https://issues.apache.org/jira/browse/BIGTOP-1987) | Recover resources/kmeans\_data.txt for Spark smokes |  Major | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2037](https://issues.apache.org/jira/browse/BIGTOP-2037) | BIGTOP-1746 Added Files Without Apache License Headers |  Major | deployment | RJ Nowling | Kengo Seki |
| [BIGTOP-2053](https://issues.apache.org/jira/browse/BIGTOP-2053) | After rebasing on Hadoop 2.7.1 yarn module should be returned to ignite-hadoop build |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2057](https://issues.apache.org/jira/browse/BIGTOP-2057) | null check doesn\'t safeguard against non-existing values in the BOM config |  Blocker | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2056](https://issues.apache.org/jira/browse/BIGTOP-2056) | Remove top-level check-env.sh |  Major | build | Konstantin Boudnik | Olaf Flebbe |
| [BIGTOP-2052](https://issues.apache.org/jira/browse/BIGTOP-2052) | Remove obsolete environment variables |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2014](https://issues.apache.org/jira/browse/BIGTOP-2014) | [VM provisioner] Missing FQDN on Ubuntu causes puppet deployment malfunction |  Major | vm | Evans Ye | Evans Ye |
| [BIGTOP-1913](https://issues.apache.org/jira/browse/BIGTOP-1913) | Update hive to 1.2.1 |  Major | hive | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2054](https://issues.apache.org/jira/browse/BIGTOP-2054) | Update Pig |  Major | build, pig | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2066](https://issues.apache.org/jira/browse/BIGTOP-2066) | init-hdfs.sh is broken by recent hadoop update |  Major | hadoop | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2068](https://issues.apache.org/jira/browse/BIGTOP-2068) | Cannot Build Bigtop-Utils packages |  Critical | build | Alex Elent | Konstantin Boudnik |
| [BIGTOP-2071](https://issues.apache.org/jira/browse/BIGTOP-2071) | Gstring.empty doesn\'t exist |  Blocker | build | RJ Nowling | RJ Nowling |
| [BIGTOP-1960](https://issues.apache.org/jira/browse/BIGTOP-1960) | The smoke-test wrapper in bigtop-deploy can only be used in redhat series of Linux |  Minor | deployment, tests | Evans Ye | Evans Ye |
| [BIGTOP-2059](https://issues.apache.org/jira/browse/BIGTOP-2059) | Bump Ignite to 1.4 |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2082](https://issues.apache.org/jira/browse/BIGTOP-2082) | Remove x86 Assembler Code from zookeeper |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2086](https://issues.apache.org/jira/browse/BIGTOP-2086) | Install essential puppet modules along with puppet itself |  Major | toolchain | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2061](https://issues.apache.org/jira/browse/BIGTOP-2061) | toolchain is failing because add-apt-repository command isn\'t available off-hand |  Major | toolchain | Konstantin Boudnik |  |
| [BIGTOP-2084](https://issues.apache.org/jira/browse/BIGTOP-2084) | rename all puppet modules to have an underscore rather a dash |  Major | deployment | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2090](https://issues.apache.org/jira/browse/BIGTOP-2090) | Remove left-over junk after BIGTOP-2053 |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2088](https://issues.apache.org/jira/browse/BIGTOP-2088) | Support protobuf installation for OPENPOWER |  Major | toolchain | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2089](https://issues.apache.org/jira/browse/BIGTOP-2089) | Fix bigtop.sh generation |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2074](https://issues.apache.org/jira/browse/BIGTOP-2074) | spark-worker doesn\'t start during deploy from master |  Major | deployment | Konstantin Boudnik | Evans Ye |
| [BIGTOP-2094](https://issues.apache.org/jira/browse/BIGTOP-2094) | ignite-hadoop fails to deploy after BIGTOP-2084 |  Major | deployment | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2098](https://issues.apache.org/jira/browse/BIGTOP-2098) | Update bigtop\_deploy to current state of puppetize.sh |  Major | deployment | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2114](https://issues.apache.org/jira/browse/BIGTOP-2114) | hive is broken after BIGTOP-2104 |  Critical | build | Sergey Soldatov | Sergey Soldatov |
| [BIGTOP-1905](https://issues.apache.org/jira/browse/BIGTOP-1905) | Update Hue build for the upcoming 3.9 release |  Major | hue | Erick Tryzelaar | Erick Tryzelaar |
| [BIGTOP-2028](https://issues.apache.org/jira/browse/BIGTOP-2028) | Enhance puppet config of zookeeper to support kerberized clients |  Major | deployment | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2040](https://issues.apache.org/jira/browse/BIGTOP-2040) | Mahout can not be build with Maven 3.0.5 - build containers need to be upgraded |  Major | build | Konstantin Boudnik | Evans Ye |
| [BIGTOP-2121](https://issues.apache.org/jira/browse/BIGTOP-2121) | Missing \':\' in bigtop::roles description |  Major | deployment | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2120](https://issues.apache.org/jira/browse/BIGTOP-2120) | opensuse: Hue packages are broken after BIGTOP-1905 |  Major | . | Evans Ye | Olaf Flebbe |
| [BIGTOP-2126](https://issues.apache.org/jira/browse/BIGTOP-2126) | Fix default repo locations in the deployment site.pp |  Minor | deployment | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2127](https://issues.apache.org/jira/browse/BIGTOP-2127) | opensuse: fix kerberos python module |  Major | hue | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2128](https://issues.apache.org/jira/browse/BIGTOP-2128) | ignite-hadoop man page still refers to the Incubator |  Major | debian, rpm | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1690](https://issues.apache.org/jira/browse/BIGTOP-1690) | Puppet should automatically create data directories |  Critical | deployment | Konstantin Boudnik | Sergey Soldatov |
| [BIGTOP-2139](https://issues.apache.org/jira/browse/BIGTOP-2139) | crunch compile fails with Insufficient memory on POWER |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2140](https://issues.apache.org/jira/browse/BIGTOP-2140) | hbase compile fails with Insufficient memory on POWER |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2131](https://issues.apache.org/jira/browse/BIGTOP-2131) | [Docker] bigtop slaves images should be built without cache |  Major | docker | Evans Ye | Evans Ye |
| [BIGTOP-2144](https://issues.apache.org/jira/browse/BIGTOP-2144) | Update default repos in Bigtop Provisioner |  Major | deployment | Evans Ye | Evans Ye |
| [BIGTOP-2150](https://issues.apache.org/jira/browse/BIGTOP-2150) | Reversing directional build behavior |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2152](https://issues.apache.org/jira/browse/BIGTOP-2152) | Fix conflict with libressl-devel from mysql-devel |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2155](https://issues.apache.org/jira/browse/BIGTOP-2155) | Fix Hue 3.9.0 build failed on Fedora |  Major | build, hue, rpm | Evans Ye | Evans Ye |
| [BIGTOP-2156](https://issues.apache.org/jira/browse/BIGTOP-2156) | Fix Sqoop 1.4.5 build failed on OpenSuSE |  Major | toolchain | Evans Ye | Evans Ye |
| [BIGTOP-2159](https://issues.apache.org/jira/browse/BIGTOP-2159) | unable to build RPM for zeppelin |  Blocker | build, rpm | Sergey Soldatov | Sergey Soldatov |
| [BIGTOP-2016](https://issues.apache.org/jira/browse/BIGTOP-2016) | tez does not build on opensuse |  Blocker | build | Olaf Flebbe | Evans Ye |
| [BIGTOP-2162](https://issues.apache.org/jira/browse/BIGTOP-2162) | phoenix-core-\*-tests.jar should be located at $PHOENIX\_HOME |  Major | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2168](https://issues.apache.org/jira/browse/BIGTOP-2168) | A erroneous typo in FailureVars#loadProps method |  Major | tests | Konstantin Boudnik | Dasha Boudnik |
| [BIGTOP-2173](https://issues.apache.org/jira/browse/BIGTOP-2173) | smoke-tests need to pass-through system properties |  Major | tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2176](https://issues.apache.org/jira/browse/BIGTOP-2176) | Package version of ignite-hadoop has illegal "-" character |  Major | build, rpm | Konstantin Boudnik |  |
| [BIGTOP-2181](https://issues.apache.org/jira/browse/BIGTOP-2181) | Setting Ignite version to use \'.\' broke Zeppelin build. |  Critical | build | Konstantin Boudnik | Sergey Soldatov |
| [BIGTOP-2177](https://issues.apache.org/jira/browse/BIGTOP-2177) | Build dependecies list has wrong component name for ignite |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2188](https://issues.apache.org/jira/browse/BIGTOP-2188) | bigtop/puppet:ubuntu-14.04 image does not support ppc64le |  Major | docker | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2187](https://issues.apache.org/jira/browse/BIGTOP-2187) | toolchain creates user with different ids on different systems |  Major | toolchain | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2171](https://issues.apache.org/jira/browse/BIGTOP-2171) | shared gradle directory on slave containers should be writable for non-root users |  Major | docker | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2172](https://issues.apache.org/jira/browse/BIGTOP-2172) | get rid of gradlew inside of subprojects |  Major | tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2196](https://issues.apache.org/jira/browse/BIGTOP-2196) | Docker configuration for ubuntu-15.04-ppc64le |  Major | docker | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2191](https://issues.apache.org/jira/browse/BIGTOP-2191) | openjdk-7 is missing in bigtop/slave:ubuntu-14.04-ppc64le docker image |  Critical | build, docker, ppc64le, toolchain | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2198](https://issues.apache.org/jira/browse/BIGTOP-2198) | adding bigtop/slaves:ubuntu-15.04 support for ppc64le |  Major | docker | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2200](https://issues.apache.org/jira/browse/BIGTOP-2200) | Fix download path for protobuf ubuntu-15.04 on ppc64le |  Major | toolchain | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2201](https://issues.apache.org/jira/browse/BIGTOP-2201) | Fix BIGTOP-2200 again |  Major | toolchain | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2175](https://issues.apache.org/jira/browse/BIGTOP-2175) | BIGTOP\_HOME should be either asserter or replaced with setup logic |  Major | tests | Konstantin Boudnik | David Capwell |
| [BIGTOP-2190](https://issues.apache.org/jira/browse/BIGTOP-2190) | libprotobuf8 2.5.0 installation fails on ubuntu 14.04 for ppc64le |  Major | build, docker, toolchain | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2223](https://issues.apache.org/jira/browse/BIGTOP-2223) | .dockerignore doesn\'t have ASL header |  Major | build, docker | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2222](https://issues.apache.org/jira/browse/BIGTOP-2222) | Hadoop do-component-build should pull in and use BOM |  Minor | build | Andrew Purtell | Andrew Purtell |
| [BIGTOP-2221](https://issues.apache.org/jira/browse/BIGTOP-2221) | rpmbuild is missing in bigtop/slaves:trunk-opensuse-13.2 docker image |  Major | ci, toolchain | Evans Ye | Evans Ye |
| [BIGTOP-2189](https://issues.apache.org/jira/browse/BIGTOP-2189) | bigtop/slave:ubuntu-14.04 image does not support ppc64le |  Major | docker | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2215](https://issues.apache.org/jira/browse/BIGTOP-2215) | Enable autopurge in zookeeper |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1022](https://issues.apache.org/jira/browse/BIGTOP-1022) | Giraph build script should also specify ZooKeeper, HBase, and Hive versions |  Major | . | Andrew Purtell | Andrew Purtell |
| [BIGTOP-2147](https://issues.apache.org/jira/browse/BIGTOP-2147) | Minor nits in bigpetstore-spark/README.md |  Trivial | blueprints | Kengo Seki | Kengo Seki |
| [BIGTOP-2148](https://issues.apache.org/jira/browse/BIGTOP-2148) | generator.SparkDriver outputs empty data in cluster mode |  Major | blueprints | Kengo Seki | Kengo Seki |
| [BIGTOP-2242](https://issues.apache.org/jira/browse/BIGTOP-2242) | Running ./gradlew should only require JAVA\_HOME for test task |  Critical | build, tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2244](https://issues.apache.org/jira/browse/BIGTOP-2244) | CI provisioner tests are failing after BIGTOP-2227 change |  Major | build, tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2236](https://issues.apache.org/jira/browse/BIGTOP-2236) | GRADLE\_USER\_HOME should be set for bigtop/slaves images only |  Major | docker, toolchain | Evans Ye | Evans Ye |
| [BIGTOP-2247](https://issues.apache.org/jira/browse/BIGTOP-2247) | Expand HDFS smoke test suite |  Major | tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2246](https://issues.apache.org/jira/browse/BIGTOP-2246) | Add smoke tests for HCFS |  Major | . | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2243](https://issues.apache.org/jira/browse/BIGTOP-2243) | :itest-common:test is broken without JAVA\_HOME being set |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2256](https://issues.apache.org/jira/browse/BIGTOP-2256) | Promote return codes from docker to the CI while building images |  Major | docker | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2255](https://issues.apache.org/jira/browse/BIGTOP-2255) | bigtop/deploy:ubuntu-15.04 image does not support ppc64le |  Critical | build, docker | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2252](https://issues.apache.org/jira/browse/BIGTOP-2252) | provisional hdfs ssh keys couldn\'t be found during deployment |  Major | deployment | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1940](https://issues.apache.org/jira/browse/BIGTOP-1940) | Consider removing tests expecting \'sudo\' from skip-list |  Major | tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2240](https://issues.apache.org/jira/browse/BIGTOP-2240) | add -XX:PermSize=1024m -XX:MaxPermSize=1024m to build environment |  Critical | build, tests | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2272](https://issues.apache.org/jira/browse/BIGTOP-2272) | moved hdfs ssh key are failing rat check |  Blocker | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2083](https://issues.apache.org/jira/browse/BIGTOP-2083) | smoke-tests are still on hadoop 2.6.0 |  Major | tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2237](https://issues.apache.org/jira/browse/BIGTOP-2237) | Nullify the standard output when generating gradle cache |  Major | docker | Evans Ye | Evans Ye |
| [BIGTOP-2238](https://issues.apache.org/jira/browse/BIGTOP-2238) | Provisioner should propagate hdfs ssh keys for testing |  Major | deployment, tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2276](https://issues.apache.org/jira/browse/BIGTOP-2276) | Zeppeling added war\_tempdir location, which needs to be set |  Major | debian, rpm | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2275](https://issues.apache.org/jira/browse/BIGTOP-2275) | Update configuration files for jsvc |  Major | build, jsvc, ppc64le | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2281](https://issues.apache.org/jira/browse/BIGTOP-2281) | Add HIVE-12875 to Bigtop |  Major | hive | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2288](https://issues.apache.org/jira/browse/BIGTOP-2288) | workaround to fix invalid leveldbjni in maven repository |  Major | hadoop, ppc64le | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2299](https://issues.apache.org/jira/browse/BIGTOP-2299) | test resources are breaking rat |  Blocker | tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2344](https://issues.apache.org/jira/browse/BIGTOP-2344) | distributions does not mention ppc64el, i386 obsolete |  Major | build, ppc64le | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2574](https://issues.apache.org/jira/browse/BIGTOP-2574) | gpdb: Multiple lintian errors |  Major | build | Olaf Flebbe | Olaf Flebbe |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2158](https://issues.apache.org/jira/browse/BIGTOP-2158) | Update README.md to reflect the acceptance of CTR model |  Major | documentation | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2232](https://issues.apache.org/jira/browse/BIGTOP-2232) | Add smoke tests for HDFS |  Major | tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2249](https://issues.apache.org/jira/browse/BIGTOP-2249) | Add YARN smoke tests |  Major | tests | Konstantin Boudnik | Konstantin Boudnik |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-1898](https://issues.apache.org/jira/browse/BIGTOP-1898) | Dockerfiles to build bigtop/puppet docker images for 1.0 release |  Major | . | Evans Ye | Evans Ye |
| [BIGTOP-1947](https://issues.apache.org/jira/browse/BIGTOP-1947) | Fix RAT plugin configuration to be able to RAT-validate all published artifacts |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1965](https://issues.apache.org/jira/browse/BIGTOP-1965) | Remove the link to 0.8.0 from the website |  Major | website | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1973](https://issues.apache.org/jira/browse/BIGTOP-1973) | Add new tests for HDFS Balancer functionality |  Minor | tests | Venkata Srinivasa Rao Kolla | Venkata Srinivasa Rao Kolla |
| [BIGTOP-1975](https://issues.apache.org/jira/browse/BIGTOP-1975) | Smoke tests for Spark SQL |  Major | spark | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1983](https://issues.apache.org/jira/browse/BIGTOP-1983) | Move BigPetStore data generator to bigtop-data-generators |  Minor | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1984](https://issues.apache.org/jira/browse/BIGTOP-1984) | Extract samplers library from BigPetStore data generator |  Minor | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1985](https://issues.apache.org/jira/browse/BIGTOP-1985) | Extract name generator from BigPetStore data generator |  Minor | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1990](https://issues.apache.org/jira/browse/BIGTOP-1990) | Add gradle multi-project build files for bigtop-data-generators |  Minor | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1986](https://issues.apache.org/jira/browse/BIGTOP-1986) | Extract location dataset from BigPetStore data generator |  Minor | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1992](https://issues.apache.org/jira/browse/BIGTOP-1992) | Fix RAT check errors resulting from BPS data generator move |  Blocker | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1995](https://issues.apache.org/jira/browse/BIGTOP-1995) | Update BigPetStore to use external locations  data |  Major | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-2000](https://issues.apache.org/jira/browse/BIGTOP-2000) | Add BigTop Data Generators to maintainers file |  Minor | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-2009](https://issues.apache.org/jira/browse/BIGTOP-2009) | Add new tests for chgrp, cp, ls, mv, du, put, get, mkdir, stat and touchz |  Minor | general | Venkata Srinivasa Rao Kolla | Venkata Srinivasa Rao Kolla |
| [BIGTOP-1981](https://issues.apache.org/jira/browse/BIGTOP-1981) | Add new tests for test, text, count commands |  Minor | general | Venkata Srinivasa Rao Kolla | Venkata Srinivasa Rao Kolla |
| [BIGTOP-1494](https://issues.apache.org/jira/browse/BIGTOP-1494) | Introduce Groovy DSL to replace bigtop.mk |  Major | build | jay vyas | Konstantin Boudnik |
| [BIGTOP-2033](https://issues.apache.org/jira/browse/BIGTOP-2033) | Build order of the stack is broken |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1991](https://issues.apache.org/jira/browse/BIGTOP-1991) | Add BigTop Weatherman |  Minor | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-2051](https://issues.apache.org/jira/browse/BIGTOP-2051) | Get rid of hair-brain environment vars left after make-based build |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2025](https://issues.apache.org/jira/browse/BIGTOP-2025) | Make BOM to be a directional graph |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2055](https://issues.apache.org/jira/browse/BIGTOP-2055) | Refactor packages.gradle to get rid of excessive data containers; make code cleaner |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1499](https://issues.apache.org/jira/browse/BIGTOP-1499) | released source code  is not same with source code in branch |  Blocker | build | Guo Ruijing | Konstantin Boudnik |
| [BIGTOP-1899](https://issues.apache.org/jira/browse/BIGTOP-1899) | Migrate CI master to EC2 instance donated by Amazon EMR team |  Major | ci, general | Evans Ye | Evans Ye |
| [BIGTOP-2096](https://issues.apache.org/jira/browse/BIGTOP-2096) | ignite-hadoop service should restart upon changes in the package or configs |  Major | deployment, ignite | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2107](https://issues.apache.org/jira/browse/BIGTOP-2107) | Ignite package still shows website at the incubator |  Major | ignite | Konstantin Boudnik | Olaf Flebbe |
| [BIGTOP-2097](https://issues.apache.org/jira/browse/BIGTOP-2097) | cleaning up the ignite-service |  Major | debian, ignite | Konstantin Boudnik | Olaf Flebbe |
| [BIGTOP-2104](https://issues.apache.org/jira/browse/BIGTOP-2104) | Packages upgrade to Spark 1.5.1 |  Major | debian, rpm | Konstantin Boudnik | Jonathan Kelly |
| [BIGTOP-2105](https://issues.apache.org/jira/browse/BIGTOP-2105) | Puppet recipes improvements after Spark is bumped to 1.5.1 |  Major | deployment | Konstantin Boudnik | Jonathan Kelly |
| [BIGTOP-2087](https://issues.apache.org/jira/browse/BIGTOP-2087) | The 1.0 release package artifacts on Bigtop jenkins is broken due to CI transition |  Critical | build | Evans Ye | Konstantin Boudnik |
| [BIGTOP-1901](https://issues.apache.org/jira/browse/BIGTOP-1901) | Provide bigtop/deploy images on dockerhub for CI and users to consume docker provisioner |  Major | deployment | Evans Ye | Evans Ye |
| [BIGTOP-2113](https://issues.apache.org/jira/browse/BIGTOP-2113) | Spark master doesn\'t bind to the host: ignores SPARK\_MASTER\_IP |  Blocker | spark | Konstantin Boudnik | Sergey Soldatov |
| [BIGTOP-2122](https://issues.apache.org/jira/browse/BIGTOP-2122) | Add zeppelin packages |  Major | debian, rpm | Konstantin Boudnik | Jonathan Kelly |
| [BIGTOP-2149](https://issues.apache.org/jira/browse/BIGTOP-2149) | Zeppeling 0.5.5 has been officially released. Change the source ref |  Major | build | Konstantin Boudnik | Sergey Soldatov |
| [BIGTOP-2166](https://issues.apache.org/jira/browse/BIGTOP-2166) | Zeppelin shouldn\'t be build against constant version of Ignite |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2174](https://issues.apache.org/jira/browse/BIGTOP-2174) | Bump up ignite-hadoop version to the latest 1.5.0-b1 |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2123](https://issues.apache.org/jira/browse/BIGTOP-2123) | Add zeppelin Puppet recipes |  Major | deployment | Konstantin Boudnik | Jonathan Kelly |
| [BIGTOP-2169](https://issues.apache.org/jira/browse/BIGTOP-2169) | Zeppeling has more upstream dependencies |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2167](https://issues.apache.org/jira/browse/BIGTOP-2167) | Zeppelin interpreter list doesn\'t include Ignite |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2185](https://issues.apache.org/jira/browse/BIGTOP-2185) | Exclude Zeppelin interpreter.json from RAT check |  Major | deployment | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2219](https://issues.apache.org/jira/browse/BIGTOP-2219) | Comb the smoke-tests to make code base easier for refactoring |  Major | tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2226](https://issues.apache.org/jira/browse/BIGTOP-2226) | Remove gradle wrapper folder in smoke-tests |  Major | tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2235](https://issues.apache.org/jira/browse/BIGTOP-2235) | Allow smoke-tests to use filename regexps instead of explicite listings |  Major | tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2234](https://issues.apache.org/jira/browse/BIGTOP-2234) | TestBlockRecovery incorrectly fails on a single node cluster |  Major | tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2245](https://issues.apache.org/jira/browse/BIGTOP-2245) | TestFuseHCFS might fall on \'+\' op. involving String and GString; class name is wrong |  Major | tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2154](https://issues.apache.org/jira/browse/BIGTOP-2154) | spark-shell doesn\'t start anymore without Hive libs in the classpath |  Blocker | spark | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2267](https://issues.apache.org/jira/browse/BIGTOP-2267) | Zeppeling 0.5.6 is out; let\'s bump it in our stack |  Major | build | Konstantin Boudnik |  |
| [BIGTOP-2271](https://issues.apache.org/jira/browse/BIGTOP-2271) | Update maven rat config to match one from gradle |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2277](https://issues.apache.org/jira/browse/BIGTOP-2277) | release assembly needs to include bigtop\_toolchain |  Blocker | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2278](https://issues.apache.org/jira/browse/BIGTOP-2278) | Wrap separate maven release steps into convenient gradle task |  Major | build | Konstantin Boudnik | Konstantin Boudnik |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-1795](https://issues.apache.org/jira/browse/BIGTOP-1795) | Upgrade bigtop\_toolchain to Maven 3.2.5 |  Major | toolchain | Jonathan Kelly | Jonathan Kelly |
| [BIGTOP-1925](https://issues.apache.org/jira/browse/BIGTOP-1925) | Add ywkim as a maintainer for YCSB |  Trivial | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1821](https://issues.apache.org/jira/browse/BIGTOP-1821) | Add smoke tests for Ignite Hadoop Bigtop module |  Major | tests | Ivan Veselovsky | Ivan Veselovsky |
| [BIGTOP-1953](https://issues.apache.org/jira/browse/BIGTOP-1953) | Upgrade bigtop\_toolchain to Maven 3.3.3 |  Major | toolchain | Jonathan Kelly | Olaf Flebbe |
| [BIGTOP-2069](https://issues.apache.org/jira/browse/BIGTOP-2069) | Update README.md to reflect CTR trial |  Major | documentation | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2146](https://issues.apache.org/jira/browse/BIGTOP-2146) | Upgrade bigtop toolchain ant version to 1.9.6 |  Major | toolchain | Evans Ye | Olaf Flebbe |
| [BIGTOP-2214](https://issues.apache.org/jira/browse/BIGTOP-2214) | Bump up ignite-hadoop version to the latest stable 1.5.0.final |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1897](https://issues.apache.org/jira/browse/BIGTOP-1897) | Umbrella JIRA for CI overhaul |  Blocker | . | Evans Ye | Evans Ye |
| [BIGTOP-2078](https://issues.apache.org/jira/browse/BIGTOP-2078) | Define Bigtop 1.1 release BOM |  Blocker | general | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2297](https://issues.apache.org/jira/browse/BIGTOP-2297) | Update provisioner pointers to (future) 1.1 release repos |  Major | provisioner | Konstantin Boudnik | Konstantin Boudnik |


