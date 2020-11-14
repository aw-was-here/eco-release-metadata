
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

## Release 1.4.0 - 2019-06-15



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2947](https://issues.apache.org/jira/browse/BIGTOP-2947) | Project Frontier: Bigtop Integration Test Framework 2.0 |  Major | . | Evans Ye | Evans Ye |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-3135](https://issues.apache.org/jira/browse/BIGTOP-3135) | Remove deprecated giraph-site.xml |  Major | build, Init scripts | Yuqi Gu | Yuqi Gu |
| [BIGTOP-3152](https://issues.apache.org/jira/browse/BIGTOP-3152) | No need to Force the use of Netty over Hadoop RPC in Giraph |  Major | deployment | Yuqi Gu | Yuqi Gu |
| [BIGTOP-3085](https://issues.apache.org/jira/browse/BIGTOP-3085) | Hello world example for adding a new package |  Minor | documentation | Dagang Wei | Dagang Wei |
| [BIGTOP-1227](https://issues.apache.org/jira/browse/BIGTOP-1227) | Deploy artifacts to maven repository |  Major | build | Shengjun Xin | Mike Grimes |
| [BIGTOP-3204](https://issues.apache.org/jira/browse/BIGTOP-3204) | Upgrade flink from 1.4.2 to 1.6.0 or higher |  Major | flink | Guodong Xu | Guodong Xu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-3099](https://issues.apache.org/jira/browse/BIGTOP-3099) | Fix oozie build |  Major | . | Victor Mikhaylov | Victor Mikhaylov |
| [BIGTOP-3102](https://issues.apache.org/jira/browse/BIGTOP-3102) | docker-hadoop.sh WARNING: The scale command is deprecated |  Major | docker | Guodong Xu | Guodong Xu |
| [BIGTOP-3107](https://issues.apache.org/jira/browse/BIGTOP-3107) | QFS cannot compile with newer Oracle SDK |  Major | . | Arnaud Launay | Arnaud Launay |
| [BIGTOP-2892](https://issues.apache.org/jira/browse/BIGTOP-2892) | The download page should provide instructions to check hashes and signatures |  Major | website | Evans Ye | Evans Ye |
| [BIGTOP-3112](https://issues.apache.org/jira/browse/BIGTOP-3112) | Update release KEYS file from dist.apache.org to apache.org/dist |  Major | website | Evans Ye | Evans Ye |
| [BIGTOP-3113](https://issues.apache.org/jira/browse/BIGTOP-3113) | Update previous releases links to the archive.apache.org in the download page |  Major | website | Evans Ye | Evans Ye |
| [BIGTOP-2595](https://issues.apache.org/jira/browse/BIGTOP-2595) | Make Spark1 and Spark2 coexist |  Major | . | Olaf Flebbe |  |
| [BIGTOP-3125](https://issues.apache.org/jira/browse/BIGTOP-3125) | [provisioner] sbin/init is missed in puppet:opensuse-42.3 |  Major | docker, provisioner | Jun He | Jun He |
| [BIGTOP-3151](https://issues.apache.org/jira/browse/BIGTOP-3151) | Add flink smoke test |  Major | . | Jun He | Jun He |
| [BIGTOP-3184](https://issues.apache.org/jira/browse/BIGTOP-3184) | URLConnection check fails with exception when it should return false |  Major | build | Craig Foster | Craig Foster |
| [BIGTOP-3194](https://issues.apache.org/jira/browse/BIGTOP-3194) | Phoneix QueryServer PID file name in svc file is inconsistent with that in QueryServer's execution script |  Major | Init scripts | Junyang Li | Junyang Li |
| [BIGTOP-3208](https://issues.apache.org/jira/browse/BIGTOP-3208) | Exception in master branch (and branch-1.4): kafka-server failed to launch due to missing zookeeper AsyncCallback.MultiCallback |  Major | general | Guodong Xu | Evans Ye |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-3110](https://issues.apache.org/jira/browse/BIGTOP-3110) | [Puppet] Hive metastore can not startup successfully |  Major | deployment, hive | Evans Ye | Evans Ye |
| [BIGTOP-3114](https://issues.apache.org/jira/browse/BIGTOP-3114) | [Test] HBase Importtsv smoke tests are failing |  Major | tests | Evans Ye | Evans Ye |
| [BIGTOP-3117](https://issues.apache.org/jira/browse/BIGTOP-3117) | [Puppet] Can't run spark commands for Spark on Yarn deployment |  Major | deployment, spark | Evans Ye | Evans Ye |
| [BIGTOP-3120](https://issues.apache.org/jira/browse/BIGTOP-3120) | [Puppet] Annoying warning message from Ambari snippet |  Minor | deployment | Evans Ye | Olaf Flebbe |
| [BIGTOP-3115](https://issues.apache.org/jira/browse/BIGTOP-3115) | [Puppet] Alluxio master/worker can not startup successfully |  Major | deployment | Evans Ye | Evans Ye |
| [BIGTOP-3121](https://issues.apache.org/jira/browse/BIGTOP-3121) | [Provisioner] Can't create docker containers after using Docker Provisioner on Amazon Linux |  Major | provisioner | Evans Ye | Evans Ye |
| [BIGTOP-3118](https://issues.apache.org/jira/browse/BIGTOP-3118) | [Puppet] Failed to deploy GPDB |  Major | deployment | Evans Ye | Evans Ye |
| [BIGTOP-3124](https://issues.apache.org/jira/browse/BIGTOP-3124) | Remove package installation in provisioner/utils/smoke-tests.sh and polish the script |  Major | tests | Evans Ye | Evans Ye |
| [BIGTOP-3129](https://issues.apache.org/jira/browse/BIGTOP-3129) | Failed to run QFS smoke test |  Major | deployment, tests | Evans Ye | Evans Ye |
| [BIGTOP-3131](https://issues.apache.org/jira/browse/BIGTOP-3131) | Apex smoke test requires mvn to compile test jar |  Major | . | Evans Ye | Evans Ye |
| [BIGTOP-3133](https://issues.apache.org/jira/browse/BIGTOP-3133) | [Puppet] Add a module to deploy bigtop-utils |  Major | deployment | Evans Ye | Evans Ye |
| [BIGTOP-3132](https://issues.apache.org/jira/browse/BIGTOP-3132) | Bump Alluxio up to 1.8.1 |  Major | build | Evans Ye | Evans Ye |
| [BIGTOP-3134](https://issues.apache.org/jira/browse/BIGTOP-3134) | [Puppet] An upgrade to deploy Alluxio 1.8.1 |  Major | . | Evans Ye | Evans Ye |
| [BIGTOP-3130](https://issues.apache.org/jira/browse/BIGTOP-3130) | Failed to run Alluxio smoke test |  Major | tests | Evans Ye | Evans Ye |
| [BIGTOP-3136](https://issues.apache.org/jira/browse/BIGTOP-3136) | [Provisioner] Local built repo should have higher priority |  Major | deployment | Evans Ye | Evans Ye |
| [BIGTOP-3138](https://issues.apache.org/jira/browse/BIGTOP-3138) | Maven installation failed on debian-9 |  Major | . | Evans Ye | Evans Ye |
| [BIGTOP-3139](https://issues.apache.org/jira/browse/BIGTOP-3139) | Failed to deploy Ambari on CentOS/Fedora cause no service command available |  Major | . | Evans Ye | Evans Ye |
| [BIGTOP-3140](https://issues.apache.org/jira/browse/BIGTOP-3140) | [Test] TestHadoopExamples.groovy can have $USER = null when running in Docker |  Major | tests | Evans Ye | Evans Ye |
| [BIGTOP-3126](https://issues.apache.org/jira/browse/BIGTOP-3126) | [Puppet] Failed to deploy QFS due to Permission denied error at initailization |  Major | deployment | Evans Ye | Evans Ye |
| [BIGTOP-3122](https://issues.apache.org/jira/browse/BIGTOP-3122) | CI matrix for smoke tests |  Major | tests | Evans Ye | Evans Ye |
| [BIGTOP-3144](https://issues.apache.org/jira/browse/BIGTOP-3144) | [Test] QFS smoke test failed on multi-node cluster |  Major | tests | Evans Ye | Evans Ye |
| [BIGTOP-3147](https://issues.apache.org/jira/browse/BIGTOP-3147) | Nexus proxy cache configuration is broken |  Major | . | Evans Ye | Olaf Flebbe |
| [BIGTOP-3146](https://issues.apache.org/jira/browse/BIGTOP-3146) | gradlew is not available in bigtop-tests/smoke-tests for running run\_itest.sh |  Major | tests | Evans Ye | Evans Ye |
| [BIGTOP-3148](https://issues.apache.org/jira/browse/BIGTOP-3148) | Error out when configure-nexus encounter any issue |  Major | . | Evans Ye | Evans Ye |
| [BIGTOP-3149](https://issues.apache.org/jira/browse/BIGTOP-3149) | Support to enable Nexus proxy for Docker Provisioner |  Major | . | Evans Ye | Evans Ye |
| [BIGTOP-3141](https://issues.apache.org/jira/browse/BIGTOP-3141) | Release number is not honored by the build system |  Major | build | Evans Ye | Evans Ye |
| [BIGTOP-3009](https://issues.apache.org/jira/browse/BIGTOP-3009) | Add gradle repo-ind |  Major | . | Evans Ye | Evans Ye |
| [BIGTOP-3154](https://issues.apache.org/jira/browse/BIGTOP-3154) | [Provisioner] Failed to bootstrap provisioning environment on Debian/Ubuntu |  Major | provisioner | Evans Ye | Evans Ye |
| [BIGTOP-3157](https://issues.apache.org/jira/browse/BIGTOP-3157) | Failed to start Ambari server and agent on Fedora 26 |  Major | deployment | Evans Ye | Evans Ye |
| [BIGTOP-3153](https://issues.apache.org/jira/browse/BIGTOP-3153) | Switch to docker cp based solution to build inside containers |  Major | build | Evans Ye | Evans Ye |
| [BIGTOP-3150](https://issues.apache.org/jira/browse/BIGTOP-3150) | [Provisioner] Raise proper exit code and error messages when provisioning failed |  Major | provisioner | Evans Ye | Evans Ye |
| [BIGTOP-3160](https://issues.apache.org/jira/browse/BIGTOP-3160) | [Provisioner] Treat both exit code 0 and 2 as success for Puppet execution |  Major | provisioner | Evans Ye | Evans Ye |
| [BIGTOP-3159](https://issues.apache.org/jira/browse/BIGTOP-3159) | Failed to deploy Alluxio due to Puppet compatibility issue |  Major | deployment | Evans Ye | Evans Ye |
| [BIGTOP-3167](https://issues.apache.org/jira/browse/BIGTOP-3167) | Nexus is always enabled for ./gradlew XXX-ind |  Major | build | Evans Ye | Evans Ye |
| [BIGTOP-3169](https://issues.apache.org/jira/browse/BIGTOP-3169) | Enable local repo is not working on yum systems |  Major | deployment | Evans Ye | Evans Ye |
| [BIGTOP-3170](https://issues.apache.org/jira/browse/BIGTOP-3170) | Loop and wait for daemon to be started up for Alluxio |  Major | . | Evans Ye | Evans Ye |
| [BIGTOP-3166](https://issues.apache.org/jira/browse/BIGTOP-3166) | Update Kerberos module to comply with Puppet's syntax |  Major | deployment | Evans Ye | Evans Ye |
| [BIGTOP-3173](https://issues.apache.org/jira/browse/BIGTOP-3173) | Fix bugs and improve usability of COMPONENT-pkg-ind |  Major | build | Evans Ye | Evans Ye |
| [BIGTOP-3158](https://issues.apache.org/jira/browse/BIGTOP-3158) | [Test] Fix test specification with maven failsafe plugin |  Major | tests | Evans Ye | Evans Ye |
| [BIGTOP-3174](https://issues.apache.org/jira/browse/BIGTOP-3174) | ./gradlew repo-ind failed on Bigtop build slaves |  Major | build | Evans Ye | Evans Ye |
| [BIGTOP-3179](https://issues.apache.org/jira/browse/BIGTOP-3179) | Connection refused by www-us.apache.org mirror site |  Critical | build | Evans Ye | Evans Ye |
| [BIGTOP-3176](https://issues.apache.org/jira/browse/BIGTOP-3176) | [Build] Support non X86 archs for COMPONENT-pkg-ind |  Major | build | Evans Ye | Evans Ye |
| [BIGTOP-3175](https://issues.apache.org/jira/browse/BIGTOP-3175) | [Build] Support to specify commit SHA1 when building packages |  Major | build | Evans Ye | Evans Ye |
| [BIGTOP-3172](https://issues.apache.org/jira/browse/BIGTOP-3172) | [Provisioner] Support to specify components and smoke-tests when launching Docker Provisioner |  Major | provisioner | Evans Ye | Evans Ye |
| [BIGTOP-3177](https://issues.apache.org/jira/browse/BIGTOP-3177) | [Build] Exit w/o container left dangling when running docker in gradle wrapper |  Major | . | Evans Ye | Evans Ye |
| [BIGTOP-3180](https://issues.apache.org/jira/browse/BIGTOP-3180) | Gradle 5 incompatible issue |  Major | . | Evans Ye | Evans Ye |
| [BIGTOP-3181](https://issues.apache.org/jira/browse/BIGTOP-3181) | Build as non-root for COMPONENT-pkg-ind |  Major | . | Evans Ye | Evans Ye |
| [BIGTOP-3171](https://issues.apache.org/jira/browse/BIGTOP-3171) | Update Kafka Puppet module for version 1.1.1 |  Major | . | Evans Ye | Evans Ye |
| [BIGTOP-3164](https://issues.apache.org/jira/browse/BIGTOP-3164) | Bump Kafka to 1.1.1 |  Major | build | Evans Ye | Evans Ye |
| [BIGTOP-3163](https://issues.apache.org/jira/browse/BIGTOP-3163) | Bump Hadoop to 2.8.5 |  Major | build | Evans Ye | Evans Ye |
| [BIGTOP-2012](https://issues.apache.org/jira/browse/BIGTOP-2012) | Add new tests for webhdfs |  Minor | general | Venkata Srinivasa Rao Kolla | Venkata Srinivasa Rao Kolla |
| [BIGTOP-3185](https://issues.apache.org/jira/browse/BIGTOP-3185) | Bump Kafka to 2.1.1 |  Major | . | Evans Ye | Evans Ye |
| [BIGTOP-3186](https://issues.apache.org/jira/browse/BIGTOP-3186) | Bump Spark to 2.2.3 |  Major | . | Evans Ye | Evans Ye |
| [BIGTOP-3187](https://issues.apache.org/jira/browse/BIGTOP-3187) | Bump Flume to 1.9.0 |  Major | . | Evans Ye | Evans Ye |
| [BIGTOP-3189](https://issues.apache.org/jira/browse/BIGTOP-3189) | Allow to specify more properties/options at command line for docker provisioner |  Major | provisioner | Evans Ye | Evans Ye |
| [BIGTOP-3191](https://issues.apache.org/jira/browse/BIGTOP-3191) | Old Gradle version causes Kafka 2.1.1 build failed |  Major | build | Evans Ye | Evans Ye |
| [BIGTOP-3190](https://issues.apache.org/jira/browse/BIGTOP-3190) | Compatibility issue for Zeppelin with Spark 2.2.3 |  Major | build | Evans Ye | Evans Ye |
| [BIGTOP-3142](https://issues.apache.org/jira/browse/BIGTOP-3142) | Better user expereince when calling docker-hadoop.sh -d with no cluster running |  Major | provisioner | Evans Ye | Evans Ye |
| [BIGTOP-2993](https://issues.apache.org/jira/browse/BIGTOP-2993) | Switch to gradle XXX-pkg-ind feature developed in BIGTOP-2949 for Bigtop CI |  Major | . | Evans Ye | Evans Ye |
| [BIGTOP-3193](https://issues.apache.org/jira/browse/BIGTOP-3193) | Add REPO and MEMORY as options for docker-provisioner |  Major | provisioner | Evans Ye | Evans Ye |
| [BIGTOP-3192](https://issues.apache.org/jira/browse/BIGTOP-3192) | Remove Spark 1.6 from the stack |  Major | spark | Konstantin I Boudnik | Konstantin I Boudnik |
| [BIGTOP-3196](https://issues.apache.org/jira/browse/BIGTOP-3196) | Drop Apache Crunch in Bigtop distribution |  Major | build | Evans Ye | Evans Ye |
| [BIGTOP-3195](https://issues.apache.org/jira/browse/BIGTOP-3195) | Add pkgs-ind to package all artifacts inside docker |  Major | build | Evans Ye | Evans Ye |
| [BIGTOP-3197](https://issues.apache.org/jira/browse/BIGTOP-3197) | [Docker] Treat both exit code 0 and 2 as success for Puppet execution |  Major | docker | Evans Ye | Evans Ye |
| [BIGTOP-2994](https://issues.apache.org/jira/browse/BIGTOP-2994) | Document the new feature added in BIGTOP-2949 |  Major | . | Evans Ye | Evans Ye |
| [BIGTOP-2996](https://issues.apache.org/jira/browse/BIGTOP-2996) | Update Smoke Test CI matrix against Bigtop master Distros |  Major | . | Evans Ye | Evans Ye |
| [BIGTOP-3182](https://issues.apache.org/jira/browse/BIGTOP-3182) | Helper message and documentation of new XXX-ind features |  Major | documentation | Evans Ye | Evans Ye |
| [BIGTOP-3199](https://issues.apache.org/jira/browse/BIGTOP-3199) | Can not run smoke test inside docker-provisioner |  Major | provisioner, tests | Evans Ye | Evans Ye |
| [BIGTOP-3200](https://issues.apache.org/jira/browse/BIGTOP-3200) | Bugfix Integration test framework 2.0 and documentation |  Major | build, tests | Evans Ye | Evans Ye |
| [BIGTOP-3198](https://issues.apache.org/jira/browse/BIGTOP-3198) | [Sandbox] Support AARCH64/PPC64LE |  Major | sandbox | Evans Ye | Evans Ye |
| [BIGTOP-2995](https://issues.apache.org/jira/browse/BIGTOP-2995) | Add example CI pipeline to build end-to-end from a commit to smoke test |  Major | . | Evans Ye | Evans Ye |
| [BIGTOP-3155](https://issues.apache.org/jira/browse/BIGTOP-3155) | Setup manual smoke test for Pull Requests |  Major | ci | Evans Ye | Evans Ye |
| [BIGTOP-3203](https://issues.apache.org/jira/browse/BIGTOP-3203) | [Sandbox] Architecture string is a mess for Distributions |  Major | sandbox | Evans Ye | Evans Ye |
| [BIGTOP-3209](https://issues.apache.org/jira/browse/BIGTOP-3209) | Revert Kafka to 0.10.2.2 and Flume to 1.8.0 |  Major | build | Evans Ye | Evans Ye |
| [BIGTOP-3207](https://issues.apache.org/jira/browse/BIGTOP-3207) | [Provisioner] Do not exit when destroying got no cluster exists |  Major | provisioner | Evans Ye | Evans Ye |
| [BIGTOP-3206](https://issues.apache.org/jira/browse/BIGTOP-3206) | Missing /etc/init.d/functions when deploying Alluxio on Fedora 26 |  Major | deployment | Evans Ye | Evans Ye |
| [BIGTOP-3210](https://issues.apache.org/jira/browse/BIGTOP-3210) | Missing /lib/lsb/init-functions when deploying Flink on Fedora 26 |  Major | build | Evans Ye | Evans Ye |
| [BIGTOP-3212](https://issues.apache.org/jira/browse/BIGTOP-3212) | Deploy QFS client failed due to no such directory error |  Major | deployment | Evans Ye | Evans Ye |
| [BIGTOP-3213](https://issues.apache.org/jira/browse/BIGTOP-3213) | Bugs in pom.xml files when releasing Bigtop 1.4.0 |  Major | . | Evans Ye | Evans Ye |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-3105](https://issues.apache.org/jira/browse/BIGTOP-3105) | Sync up site changes from branch 1.3 to master |  Major | website | Evans Ye | Evans Ye |
| [BIGTOP-3106](https://issues.apache.org/jira/browse/BIGTOP-3106) | Update links in download page |  Major | . | Jun He | Jun He |
| [BIGTOP-3108](https://issues.apache.org/jira/browse/BIGTOP-3108) | Update version strings to 1.3.0 in the master |  Minor | . | Evans Ye | Evans Ye |
| [BIGTOP-3098](https://issues.apache.org/jira/browse/BIGTOP-3098) | Update maven plugins for project pom |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-3128](https://issues.apache.org/jira/browse/BIGTOP-3128) | Switch to new gitbox repository |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-3109](https://issues.apache.org/jira/browse/BIGTOP-3109) | Overhaul the deployment and testing modules |  Major | deployment, tests | Evans Ye | Evans Ye |
| [BIGTOP-3178](https://issues.apache.org/jira/browse/BIGTOP-3178) | Fix two insecure maven repositories |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-3162](https://issues.apache.org/jira/browse/BIGTOP-3162) | Define Bigtop 1.4.0 release BOM |  Blocker | . | Evans Ye | Evans Ye |


