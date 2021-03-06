
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

## Release 1.2.1 - 2017-11-14



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2253](https://issues.apache.org/jira/browse/BIGTOP-2253) | Rewrite Bigtop Docker Provisioner to use native solutions and support multi-host cluster deployment |  Major | docker, provisioner | Evans Ye | Evans Ye |
| [BIGTOP-2779](https://issues.apache.org/jira/browse/BIGTOP-2779) | new hive charm |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2822](https://issues.apache.org/jira/browse/BIGTOP-2822) | spark charm: leverage puppet config, gpu enablement |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2730](https://issues.apache.org/jira/browse/BIGTOP-2730) | Bump zookeeper to 3.4.10 |  Major | build | Yakir Gibraltar | Yakir Gibraltar |
| [BIGTOP-2677](https://issues.apache.org/jira/browse/BIGTOP-2677) | layer-spark: Improve sparkpi action output |  Minor | spark | Antonio Rosales | Kevin W Monroe |
| [BIGTOP-2770](https://issues.apache.org/jira/browse/BIGTOP-2770) | Juju charm/bundle refresh |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2778](https://issues.apache.org/jira/browse/BIGTOP-2778) | Delete PermSize / MaxPermsize options, no longer support by Java 8 |  Trivial | build | YoungWoo Kim | Arnaud Launay |
| [BIGTOP-2355](https://issues.apache.org/jira/browse/BIGTOP-2355) | Update Mahout version to 0.13.0 |  Minor | build | Andrew Musselman | Andrew Musselman |
| [BIGTOP-2777](https://issues.apache.org/jira/browse/BIGTOP-2777) | make hbase charm more robust |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2783](https://issues.apache.org/jira/browse/BIGTOP-2783) | new charm icons for zookeeper and zeppelin |  Trivial | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2795](https://issues.apache.org/jira/browse/BIGTOP-2795) | spark charm: fix sparkpi and rework start/stop logic |  Minor | . | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2802](https://issues.apache.org/jira/browse/BIGTOP-2802) | Some packages don't create necessary groups on debian-based system if the users correspond to them already exist |  Major | . | Kengo Seki | Kengo Seki |
| [BIGTOP-2807](https://issues.apache.org/jira/browse/BIGTOP-2807) | Upgrade Spark to 2.1.1 |  Major | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2812](https://issues.apache.org/jira/browse/BIGTOP-2812) | Upgrade Zeppelin version to 0.7.2 |  Major | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2821](https://issues.apache.org/jira/browse/BIGTOP-2821) | expose extra config options for spark |  Minor | . | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2827](https://issues.apache.org/jira/browse/BIGTOP-2827) | juju bundle refresh (june 2017) |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2828](https://issues.apache.org/jira/browse/BIGTOP-2828) | Since BIGTOP-2775 JDK version has been specified by Bigtop Puppet |  Minor | deployment, docker, provisioner, sandbox | Evans Ye | Evans Ye |
| [BIGTOP-2819](https://issues.apache.org/jira/browse/BIGTOP-2819) | Polish the README.md for 1.2.1 release |  Major | documentation | Evans Ye | Evans Ye |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2738](https://issues.apache.org/jira/browse/BIGTOP-2738) | spark-worker fails to start |  Critical | spark | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2737](https://issues.apache.org/jira/browse/BIGTOP-2737) | Spark charm doesn't handle HA or examples well |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2740](https://issues.apache.org/jira/browse/BIGTOP-2740) | hbase 1.1.3 does not work on ppc64le |  Critical | hbase | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2748](https://issues.apache.org/jira/browse/BIGTOP-2748) | Fix a puppet compatibilty issue |  Major | toolchain | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2749](https://issues.apache.org/jira/browse/BIGTOP-2749) | puppet: use jessie package on jessie, not trusty |  Major | debian | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2750](https://issues.apache.org/jira/browse/BIGTOP-2750) | puppet: increase compatibility with future versions |  Major | deployment | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2754](https://issues.apache.org/jira/browse/BIGTOP-2754) | Revert BIGTOP-2730: Upgrade Zookeeper to version 3.4.10 |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2755](https://issues.apache.org/jira/browse/BIGTOP-2755) | Gradle needs cacerts file in place on fedora |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2753](https://issues.apache.org/jira/browse/BIGTOP-2753) | Initial support for Debian-9 |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2762](https://issues.apache.org/jira/browse/BIGTOP-2762) | Zeppelin installation failed due to JDK not installed |  Major | deployment | Evans Ye | Evans Ye |
| [BIGTOP-2765](https://issues.apache.org/jira/browse/BIGTOP-2765) | fix roles logic for spark/zeppelin charms |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2764](https://issues.apache.org/jira/browse/BIGTOP-2764) | deployment failure when roles include spark::common and spark::yarn\* |  Major | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2756](https://issues.apache.org/jira/browse/BIGTOP-2756) | Get rid of Permission Denied when creating/destroying Docker Provisioner cluster |  Minor | docker, provisioner | Evans Ye | Evans Ye |
| [BIGTOP-2763](https://issues.apache.org/jira/browse/BIGTOP-2763) | Add /user/zeppelin directory for running Spark job on YARN in Zeppelin |  Major | deployment | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2766](https://issues.apache.org/jira/browse/BIGTOP-2766) | [Puppet] Spark worker startup failed due to default master\_url is yarn |  Major | deployment, spark | Evans Ye | Evans Ye |
| [BIGTOP-2751](https://issues.apache.org/jira/browse/BIGTOP-2751) | ambari: Storm 1.1.0-SNAPSHOT is no longer available, use released version |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2774](https://issues.apache.org/jira/browse/BIGTOP-2774) | gradlew toolchain does not work on Ubuntu 16.04.2/Puppet 3.8.5 |  Major | toolchain | Kengo Seki | Kengo Seki |
| [BIGTOP-2729](https://issues.apache.org/jira/browse/BIGTOP-2729) | AMBARI-20686: Add ID to allow compilation with recent maven |  Major | build, debian | Arnaud Launay | Arnaud Launay |
| [BIGTOP-2781](https://issues.apache.org/jira/browse/BIGTOP-2781) | [Provisioner] 127.0.0.1 does not successfully inserted after BIGTOP-2756 |  Major | provisioner | Evans Ye | Evans Ye |
| [BIGTOP-2771](https://issues.apache.org/jira/browse/BIGTOP-2771) | ambari: build failed due to using third-party ConcurrentHashMap instead of the standard one unnecessarily |  Major | . | Kengo Seki | Kengo Seki |
| [BIGTOP-2788](https://issues.apache.org/jira/browse/BIGTOP-2788) | Corrects Apex patch for version 3.6.0 |  Trivial | . | Arnaud Launay | Arnaud Launay |
| [BIGTOP-2790](https://issues.apache.org/jira/browse/BIGTOP-2790) | Ambari: deploying cluster fails due to ambari-agent version mismatch |  Major | . | Kengo Seki | Kengo Seki |
| [BIGTOP-2789](https://issues.apache.org/jira/browse/BIGTOP-2789) | Ambari: installing ODPi mpack fails due to changing its file name |  Major | . | Kengo Seki | Kengo Seki |
| [BIGTOP-2793](https://issues.apache.org/jira/browse/BIGTOP-2793) | BIGTOP-2790 broke Ambari build on rpm-based system |  Major | build | Kengo Seki | Kengo Seki |
| [BIGTOP-2775](https://issues.apache.org/jira/browse/BIGTOP-2775) | Make open jdk 8 available on bigtop/puppet:debian-8 |  Major | docker | Evans Ye | Evans Ye |
| [BIGTOP-2796](https://issues.apache.org/jira/browse/BIGTOP-2796) | Bigtop Zookeeper(3.4.6) package conflict with Ubuntu 16.04 Zookeeper(3.4.8) |  Major | . | Evans Ye | Evans Ye |
| [BIGTOP-2800](https://issues.apache.org/jira/browse/BIGTOP-2800) | provisioner fails for kerberos on centos-7 |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2801](https://issues.apache.org/jira/browse/BIGTOP-2801) | charm race condition when gathering metrics |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2797](https://issues.apache.org/jira/browse/BIGTOP-2797) | zeppelin charm external role handling |  Major | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2799](https://issues.apache.org/jira/browse/BIGTOP-2799) | [Puppet] Flink deployment failure on all supported OS |  Major | flink | Evans Ye | Evans Ye |
| [BIGTOP-2798](https://issues.apache.org/jira/browse/BIGTOP-2798) | Apex component has duplicate slf4j binding |  Major | . | Thomas Weise | Thomas Weise |
| [BIGTOP-2805](https://issues.apache.org/jira/browse/BIGTOP-2805) | ycsb: turn of autodetection of dependencies by rpm |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2806](https://issues.apache.org/jira/browse/BIGTOP-2806) | hue is not installable on debian, ubuntu |  Major | hue | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2803](https://issues.apache.org/jira/browse/BIGTOP-2803) | Minor issues in bigtop.bom |  Trivial | build | Kengo Seki | Konstantin Boudnik |
| [BIGTOP-2679](https://issues.apache.org/jira/browse/BIGTOP-2679) | Streamline CI Jobs |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2743](https://issues.apache.org/jira/browse/BIGTOP-2743) | hbase shell does not work on ppc64le |  Major | hbase | Kevin W Monroe | Olaf Flebbe |
| [BIGTOP-2808](https://issues.apache.org/jira/browse/BIGTOP-2808) | Handle deletion of symlinks: update gradle |  Major | build, toolchain | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2295](https://issues.apache.org/jira/browse/BIGTOP-2295) | Docker tests should consume current builds |  Major | build, ci | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2829](https://issues.apache.org/jira/browse/BIGTOP-2829) | [iTest] build failed during Maven integration test phase |  Blocker | tests | Evans Ye | Evans Ye |
| [BIGTOP-2832](https://issues.apache.org/jira/browse/BIGTOP-2832) | Toolchain failed to install on Debian 8 |  Blocker | toolchain | Evans Ye | Evans Ye |
| [BIGTOP-2870](https://issues.apache.org/jira/browse/BIGTOP-2870) | testHCFS should be using USER\_NAME for expected output |  Major | tests | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2871](https://issues.apache.org/jira/browse/BIGTOP-2871) | Make run\_itest report Standard Error from tests to stderr |  Major | tests | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2873](https://issues.apache.org/jira/browse/BIGTOP-2873) | A few cosmetic changes to run\_itest.sh output |  Major | tests | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2850](https://issues.apache.org/jira/browse/BIGTOP-2850) | Not able to build bigtop/slaves image for OpenSuSE 42.1 |  Blocker | docker | Evans Ye | Evans Ye |
| [BIGTOP-2879](https://issues.apache.org/jira/browse/BIGTOP-2879) | BIGTOP-2749 breaks deployments on Debian-8 |  Major | debian, deployment | Evans Ye | Evans Ye |
| [BIGTOP-2716](https://issues.apache.org/jira/browse/BIGTOP-2716) | Solr build failed when OpenJDK8u\_121 is used |  Major | build | Jun He | Jun He |
| [BIGTOP-2826](https://issues.apache.org/jira/browse/BIGTOP-2826) | Zeppelin RPM is broken: "missing" osgi package deps |  Major | rpm | Alexander Ermakov | Alexander Ermakov |
| [BIGTOP-2890](https://issues.apache.org/jira/browse/BIGTOP-2890) | Download page must not link to snapshots / nightly builds |  Major | . | Sebb | Evans Ye |
| [BIGTOP-2901](https://issues.apache.org/jira/browse/BIGTOP-2901) | disable GPDB because of build failure on OpenSuSE 42.1 |  Blocker | build | Evans Ye | Olaf Flebbe |
| [BIGTOP-2900](https://issues.apache.org/jira/browse/BIGTOP-2900) | Crunch build failed because of OS OOM killer on OpenJDK 1.8.0-144 |  Blocker | build | Evans Ye | Evans Ye |
| [BIGTOP-2903](https://issues.apache.org/jira/browse/BIGTOP-2903) | update protobuf rpm links |  Major | toolchain | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2908](https://issues.apache.org/jira/browse/BIGTOP-2908) | giraph charm: release audit failure |  Blocker | build | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2891](https://issues.apache.org/jira/browse/BIGTOP-2891) | Download page must link to ASF mirrors |  Major | . | Sebb | Evans Ye |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2396](https://issues.apache.org/jira/browse/BIGTOP-2396) | Create CI jobs for new Docker Provisioner |  Major | docker, provisioner | Evans Ye | Evans Ye |
| [BIGTOP-2761](https://issues.apache.org/jira/browse/BIGTOP-2761) | Remove bigtop-deploy image build scripts |  Minor | docker | Evans Ye | Evans Ye |
| [BIGTOP-2758](https://issues.apache.org/jira/browse/BIGTOP-2758) | [Sandbox] Support dryrun in build script |  Major | docker, sandbox | Evans Ye | Evans Ye |
| [BIGTOP-2760](https://issues.apache.org/jira/browse/BIGTOP-2760) | [Sandbox] Upgrade to Bigtop 1.2 |  Major | docker | Evans Ye | Evans Ye |
| [BIGTOP-2767](https://issues.apache.org/jira/browse/BIGTOP-2767) | Auto detect repo does not need OS code name since 1.2.0 |  Minor | sandbox | Evans Ye | Evans Ye |
| [BIGTOP-2769](https://issues.apache.org/jira/browse/BIGTOP-2769) | OS\_TO\_CODE\_NAME has been removed in BIGTOP-2767 |  Minor | sandbox | Evans Ye | Evans Ye |
| [BIGTOP-2772](https://issues.apache.org/jira/browse/BIGTOP-2772) | [Sandbox] Add --dryrun mode into helper script and document |  Minor | sandbox | Evans Ye | Evans Ye |
| [BIGTOP-2165](https://issues.apache.org/jira/browse/BIGTOP-2165) | ignite-hadoop service doesn't start |  Major | build, ignite | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2814](https://issues.apache.org/jira/browse/BIGTOP-2814) | Make provisioner config names be consistent with OS names in CI |  Major | ci, provisioner | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2815](https://issues.apache.org/jira/browse/BIGTOP-2815) | Puppet should be able to generate multiple repo files |  Major | deployment | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2816](https://issues.apache.org/jira/browse/BIGTOP-2816) | Fix provisioner config name for ubuntu-16.04 |  Trivial | provisioner | Evans Ye | Evans Ye |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2739](https://issues.apache.org/jira/browse/BIGTOP-2739) | refresh juju bundles with latest charm revs |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2747](https://issues.apache.org/jira/browse/BIGTOP-2747) | new charm revs for bigtop-1.2 |  Major | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2776](https://issues.apache.org/jira/browse/BIGTOP-2776) | Bump Apache Apex version to 3.6.0 |  Major | build | Thomas Weise | Thomas Weise |
| [BIGTOP-2877](https://issues.apache.org/jira/browse/BIGTOP-2877) | Drop Kite packaging |  Major | build | Evans Ye | Evans Ye |
| [BIGTOP-2786](https://issues.apache.org/jira/browse/BIGTOP-2786) | Push Bigtop 1.2.1 Docker build slaves to Docker Hub |  Major | build, docker | Evans Ye | Evans Ye |
| [BIGTOP-2785](https://issues.apache.org/jira/browse/BIGTOP-2785) | Define Bigtop 1.2.1 release BOM |  Blocker | . | Evans Ye | Evans Ye |


