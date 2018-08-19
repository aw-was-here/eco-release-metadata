
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

## Release 1.3.0 - Unreleased (as of 2018-08-19)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2868](https://issues.apache.org/jira/browse/BIGTOP-2868) | Travis integration for Jar files. |  Major | ci | jay vyas | Ryan O'Meara |
| [BIGTOP-3007](https://issues.apache.org/jira/browse/BIGTOP-3007) | expose hive config options for zookeeper |  Major | hive | James Beedy | Kevin W Monroe |


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
| [BIGTOP-2867](https://issues.apache.org/jira/browse/BIGTOP-2867) | spark charm: make bigtop version configurable |  Major | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2875](https://issues.apache.org/jira/browse/BIGTOP-2875) | giraph charm: update metadata/readme |  Trivial | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2874](https://issues.apache.org/jira/browse/BIGTOP-2874) | juju bundle refresh (august 2017) |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2889](https://issues.apache.org/jira/browse/BIGTOP-2889) | Remove HADOOP\_HOME\_WARN\_SUPPRESS setting |  Minor | hadoop | Akira Ajisaka | Akira Ajisaka |
| [BIGTOP-2910](https://issues.apache.org/jira/browse/BIGTOP-2910) | zeppelin charm: support bigtop upgrade |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2916](https://issues.apache.org/jira/browse/BIGTOP-2916) | fix deprecated gradle syntax |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2920](https://issues.apache.org/jira/browse/BIGTOP-2920) | Cleanup puppet recipies: remove deprecated platforms |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2919](https://issues.apache.org/jira/browse/BIGTOP-2919) | Update maven to 3.5.2 |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2918](https://issues.apache.org/jira/browse/BIGTOP-2918) | Update distributions for Bigtop-1.3 |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2925](https://issues.apache.org/jira/browse/BIGTOP-2925) | Missing license header for .travis.yml |  Minor | . | Evans Ye | Evans Ye |
| [BIGTOP-2794](https://issues.apache.org/jira/browse/BIGTOP-2794) | [bigtop-puppet] Support CentOS 7 AArch64 bigtop puppet |  Major | docker | Naresh Bhat | Naresh Bhat |
| [BIGTOP-2787](https://issues.apache.org/jira/browse/BIGTOP-2787) | [bigtop-slaves] Support of CentOS 7 ARM64 bigtop-slaves |  Major | docker | Naresh Bhat | Naresh Bhat |
| [BIGTOP-2936](https://issues.apache.org/jira/browse/BIGTOP-2936) | Add RedHat default Oracle Java install location to detection script |  Major | toolchain | Lars Francke | Lars Francke |
| [BIGTOP-2869](https://issues.apache.org/jira/browse/BIGTOP-2869) | Bump solr to 6.6.0 |  Major | solr | Jun He | Jun He |
| [BIGTOP-2810](https://issues.apache.org/jira/browse/BIGTOP-2810) | Support R integration for Zeppelin |  Minor | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2811](https://issues.apache.org/jira/browse/BIGTOP-2811) | Add R to toolchain for Spark and Zeppelin |  Minor | toolchain | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2809](https://issues.apache.org/jira/browse/BIGTOP-2809) | Support R integration for Spark |  Major | spark | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2698](https://issues.apache.org/jira/browse/BIGTOP-2698) | Build/install protobuf-2.5 from source |  Minor | toolchain | Sahil Aggarwal | Sahil Aggarwal |
| [BIGTOP-2959](https://issues.apache.org/jira/browse/BIGTOP-2959) | Add SPARK\_DIST\_CLASSPATH to include libraries for HDFS and YARN |  Minor | build, spark | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2974](https://issues.apache.org/jira/browse/BIGTOP-2974) | Add puppet code to deploy SparkR package |  Major | deployment | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2882](https://issues.apache.org/jira/browse/BIGTOP-2882) | Bump Hadoop and all dependencies to actual releases |  Major | hadoop, hbase, pig | Anton Chevychalov | Anton Chevychalov |
| [BIGTOP-2989](https://issues.apache.org/jira/browse/BIGTOP-2989) | Building Hadoop with a pre-downloaded Tomcat |  Major | build, hadoop | Hari Krishna Dara | Hari Krishna Dara |
| [BIGTOP-2992](https://issues.apache.org/jira/browse/BIGTOP-2992) | Building Pig with pre-arranged Forrest |  Major | build, pig | Hari Krishna Dara | Hari Krishna Dara |
| [BIGTOP-2922](https://issues.apache.org/jira/browse/BIGTOP-2922) | Drop arch specific bigtop-\* images |  Major | build, docker, tests | Jun He | Jun He |
| [BIGTOP-3002](https://issues.apache.org/jira/browse/BIGTOP-3002) | For Kafka, it should be possible to set the broker.id config and log.dirs config. |  Trivial | deployment | Gregory Van Seghbroeck | Gregory Van Seghbroeck |
| [BIGTOP-3010](https://issues.apache.org/jira/browse/BIGTOP-3010) | juju bundle refresh (feb 2018) |  Major | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-3005](https://issues.apache.org/jira/browse/BIGTOP-3005) | Add zkpeer-relation-changed hook to zookeeper charm. |  Minor | deployment | José Pekkarinen | Kevin W Monroe |
| [BIGTOP-3038](https://issues.apache.org/jira/browse/BIGTOP-3038) | Add rollingupgrade option in hadoop-hdfs-namenode.svc |  Minor | hadoop | Sahil Aggarwal | Sahil Aggarwal |
| [BIGTOP-3011](https://issues.apache.org/jira/browse/BIGTOP-3011) | zookeeper: support autopurge.purgeInterval and autopurge.snapRetainCount. |  Major | deployment | José Pekkarinen | Kevin W Monroe |
| [BIGTOP-3047](https://issues.apache.org/jira/browse/BIGTOP-3047) | Add nagios monitoring to zookeeper charm. |  Minor | deployment | José Pekkarinen | Kevin W Monroe |
| [BIGTOP-3060](https://issues.apache.org/jira/browse/BIGTOP-3060) | juju bundle refresh (august 2018) |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |


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
| [BIGTOP-2850](https://issues.apache.org/jira/browse/BIGTOP-2850) | Not able to build bigtop/slaves image for OpenSuSE 42.1 |  Blocker | docker | Evans Ye | Evans Ye |
| [BIGTOP-2878](https://issues.apache.org/jira/browse/BIGTOP-2878) | Download task does not work for git repositories |  Major | build | Teruyoshi Zenmyo | Teruyoshi Zenmyo |
| [BIGTOP-2826](https://issues.apache.org/jira/browse/BIGTOP-2826) | Zeppelin RPM is broken: "missing" osgi package deps |  Major | rpm | Alexander Ermakov | Alexander Ermakov |
| [BIGTOP-2890](https://issues.apache.org/jira/browse/BIGTOP-2890) | Download page must not link to snapshots / nightly builds |  Major | . | Sebb | Evans Ye |
| [BIGTOP-2903](https://issues.apache.org/jira/browse/BIGTOP-2903) | update protobuf rpm links |  Major | toolchain | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2907](https://issues.apache.org/jira/browse/BIGTOP-2907) | upgrading Ambari from 2.5.0 to 2.5.2 |  Major | build, ppc64le | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2908](https://issues.apache.org/jira/browse/BIGTOP-2908) | giraph charm: release audit failure |  Blocker | build | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2915](https://issues.apache.org/jira/browse/BIGTOP-2915) | Some files are missing ALv2 header |  Blocker | general | Konstantin Boudnik | Olaf Flebbe |
| [BIGTOP-2885](https://issues.apache.org/jira/browse/BIGTOP-2885) | gpdb: disable gpcloud on CentOS 6 |  Major | . | Evans Ye |  |
| [BIGTOP-2634](https://issues.apache.org/jira/browse/BIGTOP-2634) | package perl-Env does not exist in centos 6 |  Major | toolchain | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2926](https://issues.apache.org/jira/browse/BIGTOP-2926) | introduce bigtop version into bigtop/puppet images |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2929](https://issues.apache.org/jira/browse/BIGTOP-2929) | Fix typo in opensuse version name |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2934](https://issues.apache.org/jira/browse/BIGTOP-2934) | Consolidate puppet usage by installing puppet from distro |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2930](https://issues.apache.org/jira/browse/BIGTOP-2930) | sqoop fedora26 : rsync missing |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2891](https://issues.apache.org/jira/browse/BIGTOP-2891) | Download page must link to ASF mirrors |  Major | . | Sebb | Evans Ye |
| [BIGTOP-2935](https://issues.apache.org/jira/browse/BIGTOP-2935) | provisioner: Use proper command line depending on puppet version |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2932](https://issues.apache.org/jira/browse/BIGTOP-2932) | hadoop fedora26: openssl in native code problem |  Major | . | Olaf Flebbe | František Dvořák |
| [BIGTOP-2942](https://issues.apache.org/jira/browse/BIGTOP-2942) | update tez to 0.9 |  Major | tez | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2943](https://issues.apache.org/jira/browse/BIGTOP-2943) | hbase does not compile with maven-3.5.2 |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2950](https://issues.apache.org/jira/browse/BIGTOP-2950) | BIGTOP-2869 breaks RAT check |  Major | . | Evans Ye | Evans Ye |
| [BIGTOP-2911](https://issues.apache.org/jira/browse/BIGTOP-2911) | Change Solr service ports to default 8983/8984 |  Minor | deployment, solr, tests | Jun He | Jun He |
| [BIGTOP-2917](https://issues.apache.org/jira/browse/BIGTOP-2917) | Ignite smoke test failed with JDK8 |  Major | ignite | Jun He | Jun He |
| [BIGTOP-2906](https://issues.apache.org/jira/browse/BIGTOP-2906) | Failed to start solr-server service using bigtop-deploy |  Major | deployment, solr, tests | Jun He | Jun He |
| [BIGTOP-2958](https://issues.apache.org/jira/browse/BIGTOP-2958) | Tez should use appropriate profile for Hadoop shims |  Major | build | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2957](https://issues.apache.org/jira/browse/BIGTOP-2957) | Upgrade YCSB to 0.12.0 |  Minor | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2968](https://issues.apache.org/jira/browse/BIGTOP-2968) | Bump Hive version to 2.3.2 |  Major | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2973](https://issues.apache.org/jira/browse/BIGTOP-2973) | Hama packaging is broken with Hadoop 2.8+ |  Major | build | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2976](https://issues.apache.org/jira/browse/BIGTOP-2976) | zookeeper-rest missing dependency on lsb-base |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2979](https://issues.apache.org/jira/browse/BIGTOP-2979) | JAVA\_HOME inconsistent on non-x86 architectures |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2981](https://issues.apache.org/jira/browse/BIGTOP-2981) | Packaging SparkR is broken due to BIGTOP-2959 |  Major | build | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2980](https://issues.apache.org/jira/browse/BIGTOP-2980) | Hama does not build on DEB type systems |  Major | build | Olaf Flebbe | Jun He |
| [BIGTOP-2909](https://issues.apache.org/jira/browse/BIGTOP-2909) | ppc64le: Zeppelin 0.7.2 build is failing |  Major | build | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2881](https://issues.apache.org/jira/browse/BIGTOP-2881) | Greenpulm 5.0 got released - lets switch the Bigtop to it |  Major | build | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2990](https://issues.apache.org/jira/browse/BIGTOP-2990) | Upgrade Phoenix version to 4.13.1-HBase-1.3 |  Major | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2984](https://issues.apache.org/jira/browse/BIGTOP-2984) | Rat check failed after BIGTOP-2698 |  Major | . | Evans Ye | Evans Ye |
| [BIGTOP-2912](https://issues.apache.org/jira/browse/BIGTOP-2912) | Intialize dataset for solr smoke test |  Major | solr, tests | Jun He | Jun He |
| [BIGTOP-3001](https://issues.apache.org/jira/browse/BIGTOP-3001) | Change uid and gid for jenkins user in bigtop-toolchain |  Major | toolchain | Akira Ajisaka | Akira Ajisaka |
| [BIGTOP-3004](https://issues.apache.org/jira/browse/BIGTOP-3004) | Fix HBase build failure on Debian/Fedora |  Major | build, hbase | Jun He | Jun He |
| [BIGTOP-3003](https://issues.apache.org/jira/browse/BIGTOP-3003) | Ant-1.9.9 tarball is removed from Apache mirrors |  Major | toolchain | Jun He | Jun He |
| [BIGTOP-3013](https://issues.apache.org/jira/browse/BIGTOP-3013) | kafka charm: fail to deploy using Bigtop-trunk-repos |  Major | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-3014](https://issues.apache.org/jira/browse/BIGTOP-3014) | juju: use charm-env for shebangs |  Major | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2723](https://issues.apache.org/jira/browse/BIGTOP-2723) | Fix asciidoctor-maven-plugin for HBase build on AArch64 |  Major | . | Ganesh Raju | Yuqi Gu |
| [BIGTOP-3018](https://issues.apache.org/jira/browse/BIGTOP-3018) | detect-javahome script has a typo in variable name |  Minor | Init scripts | Heting Zhang | Heting Zhang |
| [BIGTOP-2991](https://issues.apache.org/jira/browse/BIGTOP-2991) | Bump up Spark version to 2.2.1 |  Major | spark | YoungWoo Kim | Jun He |
| [BIGTOP-3023](https://issues.apache.org/jira/browse/BIGTOP-3023) | Bump qfs to 2.0.0 |  Major | qfs | Jun He | Jun He |
| [BIGTOP-2953](https://issues.apache.org/jira/browse/BIGTOP-2953) | qfs is not buildable under Debian 9 |  Blocker | qfs | Marcin Juszkiewicz |  |
| [BIGTOP-3025](https://issues.apache.org/jira/browse/BIGTOP-3025) | ci.bigtop.apache.org certificate is expired and causes errors |  Critical | ci | Alexandre Syenchuk | Evans Ye |
| [BIGTOP-3024](https://issues.apache.org/jira/browse/BIGTOP-3024) | Zeppelin build is failed after Spark is bumpped to 2.2.1 |  Major | build | Jun He | Jun He |
| [BIGTOP-3026](https://issues.apache.org/jira/browse/BIGTOP-3026) | 404 error: http://ci.bigtop.apache.org/view/Packages/job/Bigtop-trunk-packages/ |  Major | . | Guodong Xu | Evans Ye |
| [BIGTOP-3030](https://issues.apache.org/jira/browse/BIGTOP-3030) | Fix Ambari build failure on non-x86 platforms |  Major | build | Jun He | Jun He |
| [BIGTOP-3033](https://issues.apache.org/jira/browse/BIGTOP-3033) | Spark build on OpenSUSE is failed |  Major | build, spark | Jun He | Jun He |
| [BIGTOP-3036](https://issues.apache.org/jira/browse/BIGTOP-3036) | Download gradle and groovy via TLS and do signature checking on ant |  Major | toolchain | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-3027](https://issues.apache.org/jira/browse/BIGTOP-3027) | Wrong Leveldbjni native binary for aarch64 |  Major | build, hadoop | Jun He | Jun He |
| [BIGTOP-3041](https://issues.apache.org/jira/browse/BIGTOP-3041) | Failed to init hadoop hdfs using init-hdfs.sh |  Major | hadoop | Jun He | Jun He |
| [BIGTOP-3037](https://issues.apache.org/jira/browse/BIGTOP-3037) | Download maven securely |  Major | toolchain | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2818](https://issues.apache.org/jira/browse/BIGTOP-2818) | Ambari downloads jdk |  Blocker | . | Olaf Flebbe | Jun He |
| [BIGTOP-3040](https://issues.apache.org/jira/browse/BIGTOP-3040) | Solr's default configsets doesn't work with smoke test cases |  Major | solr, tests | Jun He | Jun He |
| [BIGTOP-3042](https://issues.apache.org/jira/browse/BIGTOP-3042) | HDFS TestHDFSQuota doesn't match Hadoop's definition |  Major | hadoop, tests | Jun He | Jun He |
| [BIGTOP-3035](https://issues.apache.org/jira/browse/BIGTOP-3035) | Provisioner failed because init is missed in Debian-9 |  Major | provisioner, tests | Jun He | Jun He |
| [BIGTOP-3045](https://issues.apache.org/jira/browse/BIGTOP-3045) | Remove insecure maven repository URL from gradle config |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-3046](https://issues.apache.org/jira/browse/BIGTOP-3046) | Not correct auto find latest maven dist |  Major | toolchain | Artem Eluferev |  |
| [BIGTOP-3050](https://issues.apache.org/jira/browse/BIGTOP-3050) | cgroups: cannot found cgroup mount destination: unknown |  Major | ci, docker | Evans Ye | Evans Ye |
| [BIGTOP-3052](https://issues.apache.org/jira/browse/BIGTOP-3052) | Maven version is fixed in security verification code |  Major | toolchain | Evans Ye | Evans Ye |
| [BIGTOP-3048](https://issues.apache.org/jira/browse/BIGTOP-3048) | Revert BIGTOP-3001 to bring packaging CI back |  Major | ci | Evans Ye | Evans Ye |
| [BIGTOP-3053](https://issues.apache.org/jira/browse/BIGTOP-3053) | Tez failed to build due to bower version is deprecated |  Major | build, tez | Jun He | Jun He |
| [BIGTOP-3054](https://issues.apache.org/jira/browse/BIGTOP-3054) | Missing Spark archive caused Zeppelin build failure |  Major | build | Jun He | Jun He |
| [BIGTOP-3061](https://issues.apache.org/jira/browse/BIGTOP-3061) | Crunch build failure |  Major | . | Jun He | Jun He |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2865](https://issues.apache.org/jira/browse/BIGTOP-2865) | HBase smoke test implementation |  Major | tests | Jun He | Jun He |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2833](https://issues.apache.org/jira/browse/BIGTOP-2833) | [puppetize.sh] Support centos-7-aarch64 support |  Major | toolchain | Naresh Bhat | Naresh Bhat |
| [BIGTOP-2893](https://issues.apache.org/jira/browse/BIGTOP-2893) | Bump Hadoop to 2.8.1 |  Major | hadoop | Anton Chevychalov | Anton Chevychalov |
| [BIGTOP-2895](https://issues.apache.org/jira/browse/BIGTOP-2895) | Bump Pig to 0.17.0 |  Major | hadoop, hbase, pig | Anton Chevychalov | Anton Chevychalov |
| [BIGTOP-2899](https://issues.apache.org/jira/browse/BIGTOP-2899) | Bug: regression in Oozie build after BIGTOP-2895 |  Major | hadoop, hbase, pig | Anton Chevychalov | Anton Chevychalov |
| [BIGTOP-2898](https://issues.apache.org/jira/browse/BIGTOP-2898) | Bug: regression in Phoenix build after BIGTOP-2895 |  Major | hadoop, hbase, pig | Anton Chevychalov | Anton Chevychalov |
| [BIGTOP-2894](https://issues.apache.org/jira/browse/BIGTOP-2894) | Bump HBASE to 1.3.1 |  Major | hadoop, hbase, pig | Anton Chevychalov | Anton Chevychalov |
| [BIGTOP-2949](https://issues.apache.org/jira/browse/BIGTOP-2949) | Add gradle task which leverage bigtop-ci/build.sh to build packages |  Major | build | Evans Ye | Evans Ye |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2739](https://issues.apache.org/jira/browse/BIGTOP-2739) | refresh juju bundles with latest charm revs |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2877](https://issues.apache.org/jira/browse/BIGTOP-2877) | Drop Kite packaging |  Major | build | Evans Ye | Evans Ye |
| [BIGTOP-2924](https://issues.apache.org/jira/browse/BIGTOP-2924) | Bring back 1.2.1 changes into master |  Major | . | Evans Ye | Evans Ye |
| [BIGTOP-2969](https://issues.apache.org/jira/browse/BIGTOP-2969) | Bump up Spark version to 2.2.0 |  Major | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2970](https://issues.apache.org/jira/browse/BIGTOP-2970) | Bump Zeppelin version to 0.7.3 |  Major | . | YoungWoo Kim | YoungWoo Kim |


