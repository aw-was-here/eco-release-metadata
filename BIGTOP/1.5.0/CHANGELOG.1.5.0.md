
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

## Release 1.5.0 - Unreleased (as of 2020-11-14)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2961](https://issues.apache.org/jira/browse/BIGTOP-2961) | Add Apache Livy (incubating) to Bigtop stack |  Major | . | YoungWoo Kim | Aki Tanaka |
| [BIGTOP-3293](https://issues.apache.org/jira/browse/BIGTOP-3293) | Add hadoop-kms package |  Major | hadoop | Masatake Iwasaki | Masatake Iwasaki |
| [BIGTOP-3325](https://issues.apache.org/jira/browse/BIGTOP-3325) | Spark LICENSE files should be exempted by RAT check |  Minor | . | Evans Ye | Evans Ye |
| [BIGTOP-3319](https://issues.apache.org/jira/browse/BIGTOP-3319) | Add Logstash as Bigtop component |  Major | general | Yuqi Gu | Yuqi Gu |
| [BIGTOP-3320](https://issues.apache.org/jira/browse/BIGTOP-3320) | Add Kibana as Bigtop component |  Major | . | Yuqi Gu | Yuqi Gu |
| [BIGTOP-3411](https://issues.apache.org/jira/browse/BIGTOP-3411) | Disable unnecessary  scm check in Buildnumber-maven-plugin for Mpack |  Major | . | Yuqi Gu | Yuqi Gu |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-3214](https://issues.apache.org/jira/browse/BIGTOP-3214) | Install python libraries for Livy |  Major | toolchain | Aki Tanaka | Aki Tanaka |
| [BIGTOP-3217](https://issues.apache.org/jira/browse/BIGTOP-3217) | Add smoke tests for Apache Livy |  Minor | . | Aki Tanaka | Aki Tanaka |
| [BIGTOP-3168](https://issues.apache.org/jira/browse/BIGTOP-3168) | Kafka smoke tests implementation |  Major | tests | Yuqi Gu | Yuqi Gu |
| [BIGTOP-3259](https://issues.apache.org/jira/browse/BIGTOP-3259) | Update the default stack version for docker-provisioner to 1.4.0 |  Minor | provisioner | Kengo Seki | Kengo Seki |
| [BIGTOP-3092](https://issues.apache.org/jira/browse/BIGTOP-3092) | kafka charm: support juju storage |  Minor | deployment | Kevin Monroe | Kevin Monroe |
| [BIGTOP-3234](https://issues.apache.org/jira/browse/BIGTOP-3234) | TEZ smoke tests implementation |  Major | . | Yuqi Gu | Yuqi Gu |
| [BIGTOP-3237](https://issues.apache.org/jira/browse/BIGTOP-3237) | Add smoke tests for YCSB |  Major | . | Yuqi Gu | Yuqi Gu |
| [BIGTOP-3300](https://issues.apache.org/jira/browse/BIGTOP-3300) | Add puppet manifests for hadoop-kms |  Major | hadoop | Masatake Iwasaki | Masatake Iwasaki |
| [BIGTOP-3301](https://issues.apache.org/jira/browse/BIGTOP-3301) | Add smoke-tests for hadoop-kms |  Major | . | Masatake Iwasaki | Masatake Iwasaki |
| [BIGTOP-3337](https://issues.apache.org/jira/browse/BIGTOP-3337) | Remove Node.js from the toolchain |  Major | toolchain | Kengo Seki | Kengo Seki |
| [BIGTOP-3353](https://issues.apache.org/jira/browse/BIGTOP-3353) | hive.hwi.war.file configuration is no longer needed |  Minor | hive | Masahiro Tanaka | Masahiro Tanaka |
| [BIGTOP-3358](https://issues.apache.org/jira/browse/BIGTOP-3358) | get\_roles() function should fail if a component is not in roles\_map |  Minor | . | Masahiro Tanaka | Masahiro Tanaka |
| [BIGTOP-3362](https://issues.apache.org/jira/browse/BIGTOP-3362) | Unable to install spark-python package on CentOS8 due to lack of python package |  Major | . | Masahiro Tanaka | Masahiro Tanaka |
| [BIGTOP-3369](https://issues.apache.org/jira/browse/BIGTOP-3369) | RHEL8 does not have PowerTools repo but CodeReady Builder |  Minor | . | Masahiro Tanaka | Masahiro Tanaka |
| [BIGTOP-3236](https://issues.apache.org/jira/browse/BIGTOP-3236) | Zeppelin smoke tests implementation |  Major | . | Yuqi Gu | Yuqi Gu |
| [BIGTOP-3374](https://issues.apache.org/jira/browse/BIGTOP-3374) | Add dependencies on the utilities provided by Bigtop to bigtop.bom |  Major | build, jsvc, utils | Kengo Seki | Kengo Seki |
| [BIGTOP-3371](https://issues.apache.org/jira/browse/BIGTOP-3371) | Unable to build Apache Ambari on RHEL8 |  Major | . | Masahiro Tanaka | Kengo Seki |
| [BIGTOP-3389](https://issues.apache.org/jira/browse/BIGTOP-3389) | Extend timeout for installing protobuf and R packages |  Major | toolchain | Kengo Seki | Kengo Seki |
| [BIGTOP-3391](https://issues.apache.org/jira/browse/BIGTOP-3391) | Support GPDB on Perl 5.30+ environment |  Major | . | Kengo Seki | Jun He |
| [BIGTOP-3405](https://issues.apache.org/jira/browse/BIGTOP-3405) | Make gpg\_check in docker-hadoop.sh configurable |  Major | provisioner | Kengo Seki | Kengo Seki |
| [BIGTOP-3415](https://issues.apache.org/jira/browse/BIGTOP-3415) | Extend timeout for Spark smoke test |  Major | spark, tests | Kengo Seki | Kengo Seki |
| [BIGTOP-3431](https://issues.apache.org/jira/browse/BIGTOP-3431) | Update github Readme.md to be more newbie friendly |  Major | website | Matt Andruff | Matt Andruff |
| [BIGTOP-3441](https://issues.apache.org/jira/browse/BIGTOP-3441) | Suppress YCSB smoke test output |  Major | tests | Kengo Seki | Kengo Seki |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-3216](https://issues.apache.org/jira/browse/BIGTOP-3216) | Flink smoke test failed on Debian-9 |  Major | flink | Jun He | Jun He |
| [BIGTOP-3208](https://issues.apache.org/jira/browse/BIGTOP-3208) | Exception in master branch (and branch-1.4): kafka-server failed to launch due to missing zookeeper AsyncCallback.MultiCallback |  Major | general | Guodong Xu | Evans Ye |
| [BIGTOP-3261](https://issues.apache.org/jira/browse/BIGTOP-3261) | Fix broken BPS Dockerfile |  Minor | . | Ben Fenwick | Ben Fenwick |
| [BIGTOP-3266](https://issues.apache.org/jira/browse/BIGTOP-3266) | Rat check failed for one file with unapproved/unknown licenses |  Major | build | Yuqi Gu | Yuqi Gu |
| [BIGTOP-3029](https://issues.apache.org/jira/browse/BIGTOP-3029) | "--parser" is invalidated in puppet v4.x. Affects Debian-9 builds |  Major | build | Guodong Xu | Guodong Xu |
| [BIGTOP-3291](https://issues.apache.org/jira/browse/BIGTOP-3291) | Fix build failure of Sqoop |  Major | . | Masatake Iwasaki | Masatake Iwasaki |
| [BIGTOP-3290](https://issues.apache.org/jira/browse/BIGTOP-3290) | Fix build failure of Oozie |  Major | . | Masatake Iwasaki | Masatake Iwasaki |
| [BIGTOP-3292](https://issues.apache.org/jira/browse/BIGTOP-3292) | Fix service configuration of sqoop2-server |  Minor | . | Masatake Iwasaki | Masatake Iwasaki |
| [BIGTOP-3296](https://issues.apache.org/jira/browse/BIGTOP-3296) | Creating apt repository fails on Ubuntu 18.04 |  Major | build | Kengo Seki | Kengo Seki |
| [BIGTOP-3299](https://issues.apache.org/jira/browse/BIGTOP-3299) | Fix Zookeeper build to make other build success |  Major | . | Kengo Seki | Kengo Seki |
| [BIGTOP-3303](https://issues.apache.org/jira/browse/BIGTOP-3303) | Fix build failure of hbase-1.5.0 on Ubuntu |  Major | hbase | Masatake Iwasaki | Masatake Iwasaki |
| [BIGTOP-3295](https://issues.apache.org/jira/browse/BIGTOP-3295) | Fix build failure of hadoop-2.10.0 on CentOS 8 |  Major | hadoop | Masatake Iwasaki | Masatake Iwasaki |
| [BIGTOP-3304](https://issues.apache.org/jira/browse/BIGTOP-3304) | Fix build failure of Flume against hive-2.3.6 |  Major | . | Masatake Iwasaki | Masatake Iwasaki |
| [BIGTOP-3302](https://issues.apache.org/jira/browse/BIGTOP-3302) | init scripts using su do not work on recent systemd |  Major | Init scripts | Masatake Iwasaki | Masatake Iwasaki |
| [BIGTOP-3311](https://issues.apache.org/jira/browse/BIGTOP-3311) | Fix Alluxio build failure with upgraded hadoop version |  Major | . | Jun He | Jun He |
| [BIGTOP-3314](https://issues.apache.org/jira/browse/BIGTOP-3314) | Fix flink build failure with upgraded hadoop version |  Major | . | Jun He | Jun He |
| [BIGTOP-3310](https://issues.apache.org/jira/browse/BIGTOP-3310) | URL of maven and ant package list page is changed |  Minor | . | Jun He | Jun He |
| [BIGTOP-3308](https://issues.apache.org/jira/browse/BIGTOP-3308) | Openssl fails to load in hadoop checknative -a on Debian 9 |  Major | . | Luca Toscano | Luca Toscano |
| [BIGTOP-3317](https://issues.apache.org/jira/browse/BIGTOP-3317) | Oozie sharedlib create command fails when uploading to HDFS |  Major | . | Luca Toscano | Luca Toscano |
| [BIGTOP-3312](https://issues.apache.org/jira/browse/BIGTOP-3312) | Fix Ambari build failure due to maven repo requires https now |  Minor | . | Jun He | Jun He |
| [BIGTOP-3316](https://issues.apache.org/jira/browse/BIGTOP-3316) | Fix HBase build failure on Arm platform |  Major | build, hbase | Jun He | Jun He |
| [BIGTOP-3332](https://issues.apache.org/jira/browse/BIGTOP-3332) | Add new provisioner yaml configuration for Fedora 31 |  Major | deployment, docker | Yuqi Gu | Yuqi Gu |
| [BIGTOP-3331](https://issues.apache.org/jira/browse/BIGTOP-3331) | Provisioner Deployment failed on Fedora |  Major | deployment | Yuqi Gu | Yuqi Gu |
| [BIGTOP-3338](https://issues.apache.org/jira/browse/BIGTOP-3338) | Fix \`./gradlew repo\` to work with GPDB and QFS on Ubuntu 18.04 |  Major | build | Kengo Seki | Kengo Seki |
| [BIGTOP-3336](https://issues.apache.org/jira/browse/BIGTOP-3336) | Fix Livy build on CentOS and Fedora |  Major | build | Kengo Seki | Kengo Seki |
| [BIGTOP-3335](https://issues.apache.org/jira/browse/BIGTOP-3335) | Fix Mahout build after upgrading Spark to 2.4.5 |  Major | build | Kengo Seki | Kengo Seki |
| [BIGTOP-3334](https://issues.apache.org/jira/browse/BIGTOP-3334) | Fix Oozie build after upgrading Spark to 2.4.5 |  Major | build | Kengo Seki | Kengo Seki |
| [BIGTOP-3330](https://issues.apache.org/jira/browse/BIGTOP-3330) | oozie and oozie-client deb packages try to install the same jars in the same dir |  Major | . | Luca Toscano | Luca Toscano |
| [BIGTOP-3341](https://issues.apache.org/jira/browse/BIGTOP-3341) | Support for Openssl 1.1.1 |  Major | . | Luca Toscano | Masatake Iwasaki |
| [BIGTOP-3339](https://issues.apache.org/jira/browse/BIGTOP-3339) | Fix Ambari build failure due to using old Bower |  Major | build | Kengo Seki | Kengo Seki |
| [BIGTOP-3333](https://issues.apache.org/jira/browse/BIGTOP-3333) | Fix Hive build after upgrading Spark to 2.4.5 |  Major | build, hive | Kengo Seki | Kengo Seki |
| [BIGTOP-3351](https://issues.apache.org/jira/browse/BIGTOP-3351) | Fix sqoop build error on Ubuntu 18.04 |  Major | build | Yuqi Gu | Yuqi Gu |
| [BIGTOP-3352](https://issues.apache.org/jira/browse/BIGTOP-3352) | Fix qfs build error on Ubuntu 18.04 |  Major | . | Yuqi Gu | Yuqi Gu |
| [BIGTOP-3347](https://issues.apache.org/jira/browse/BIGTOP-3347) | Fix failures of Hive ProxyFileSystem against Hadoop 2.10.0 |  Major | hive | Masatake Iwasaki | Masatake Iwasaki |
| [BIGTOP-3348](https://issues.apache.org/jira/browse/BIGTOP-3348) | Fix Hive test failures caused by NoSuchMethodError of ApplicationId.fromString |  Major | . | Masatake Iwasaki | Masatake Iwasaki |
| [BIGTOP-3359](https://issues.apache.org/jira/browse/BIGTOP-3359) | Fix failure of installing Hadoop due to conflicting .build-id entry on CentOS 8 |  Major | hadoop | Masatake Iwasaki | Masatake Iwasaki |
| [BIGTOP-3361](https://issues.apache.org/jira/browse/BIGTOP-3361) | No libcrypt.so.1 in Fedora-31 |  Major | . | Yuqi Gu | Yuqi Gu |
| [BIGTOP-3327](https://issues.apache.org/jira/browse/BIGTOP-3327) | Fix Zeppelin build issue after upgrading Spark-2.4.5 |  Major | . | Yuqi Gu | Yuqi Gu |
| [BIGTOP-2742](https://issues.apache.org/jira/browse/BIGTOP-2742) | broken zeppelin init script |  Major | Init scripts | Kevin Monroe | Yuqi Gu |
| [BIGTOP-3364](https://issues.apache.org/jira/browse/BIGTOP-3364) | Zeppelin build failed in Ubuntu16.04/18.04 and CentOS7 |  Major | . | Yuqi Gu | Yuqi Gu |
| [BIGTOP-3372](https://issues.apache.org/jira/browse/BIGTOP-3372) | Building Spark fails on Debian 9 and Ubuntu 16.04 |  Major | spark | Kengo Seki | Kengo Seki |
| [BIGTOP-3355](https://issues.apache.org/jira/browse/BIGTOP-3355) | [Puppet] Make GPG check for repos a configuration and default to true |  Major | deployment | Evans Ye | Evans Ye |
| [BIGTOP-3380](https://issues.apache.org/jira/browse/BIGTOP-3380) | Bump Tomcat to 8.5.57 |  Major | . | Masatake Iwasaki | Masatake Iwasaki |
| [BIGTOP-3379](https://issues.apache.org/jira/browse/BIGTOP-3379) | Fix Spark build failure on CentOS 8 |  Major | spark | Kengo Seki | Kengo Seki |
| [BIGTOP-3378](https://issues.apache.org/jira/browse/BIGTOP-3378) | Fix Livy deployment failure on Debian and Ubuntu |  Major | . | Kengo Seki | Kengo Seki |
| [BIGTOP-3377](https://issues.apache.org/jira/browse/BIGTOP-3377) | Fix deployment failures on Fedora 31 |  Major | hadoop, hbase, ignite, tez | Kengo Seki | Kengo Seki |
| [BIGTOP-3387](https://issues.apache.org/jira/browse/BIGTOP-3387) | Building QFS fails on CentOS 8 |  Major | . | Kengo Seki | Kengo Seki |
| [BIGTOP-3386](https://issues.apache.org/jira/browse/BIGTOP-3386) | Building GPDB fails on CentOS 8 |  Major | . | Kengo Seki | Kengo Seki |
| [BIGTOP-3390](https://issues.apache.org/jira/browse/BIGTOP-3390) | Building Alluxio fails on Fedora 31 |  Major | . | Kengo Seki | Kengo Seki |
| [BIGTOP-3392](https://issues.apache.org/jira/browse/BIGTOP-3392) | All packaging jobs are failing on Fedora 31 for aarch64 and ppc64le |  Major | . | Kengo Seki | Kengo Seki |
| [BIGTOP-3396](https://issues.apache.org/jira/browse/BIGTOP-3396) | Building Ambari is failing on Fedora 31 for ARM64 |  Major | . | Kengo Seki | Kengo Seki |
| [BIGTOP-3398](https://issues.apache.org/jira/browse/BIGTOP-3398) | Fix GPDB puppet manifest to work |  Major | deployment | Kengo Seki | Kengo Seki |
| [BIGTOP-3395](https://issues.apache.org/jira/browse/BIGTOP-3395) | Building Kafka is failing on Fedora 31 for ARM64 |  Major | . | Kengo Seki | Kengo Seki |
| [BIGTOP-3399](https://issues.apache.org/jira/browse/BIGTOP-3399) | Fix bigtop-groovy build failure |  Major | . | Kengo Seki | Kengo Seki |
| [BIGTOP-3401](https://issues.apache.org/jira/browse/BIGTOP-3401) | Failed to build Centos-8 docker images for Arm64 |  Major | build, docker | Yuqi Gu | Yuqi Gu |
| [BIGTOP-3408](https://issues.apache.org/jira/browse/BIGTOP-3408) | docker-hadoop.sh generates broken site.yaml from config.yaml containing multiple components |  Major | provisioner | Masatake Iwasaki | Masatake Iwasaki |
| [BIGTOP-3407](https://issues.apache.org/jira/browse/BIGTOP-3407) | Ensure the procps package is installed in Debian 10 |  Major | tests | Kengo Seki | Kengo Seki |
| [BIGTOP-3394](https://issues.apache.org/jira/browse/BIGTOP-3394) | Building Logstash is failing on CentOS 8, Debian 10 and Ubuntu 18.04 |  Major | . | Kengo Seki | Yuqi Gu |
| [BIGTOP-3410](https://issues.apache.org/jira/browse/BIGTOP-3410) | Fix bigtop-tomcat build failure due to downloading problem |  Major | . | Kengo Seki | Kengo Seki |
| [BIGTOP-3414](https://issues.apache.org/jira/browse/BIGTOP-3414) | Fix the default value of GPDB configuration for smoke test |  Major | . | Kengo Seki | Kengo Seki |
| [BIGTOP-3413](https://issues.apache.org/jira/browse/BIGTOP-3413) | QFS doesn't work with Hadoop's TeraGen |  Major | qfs, tests | Kengo Seki | Kengo Seki |
| [BIGTOP-3418](https://issues.apache.org/jira/browse/BIGTOP-3418) | Fix Ambari deployment on CentOS 8, Fedora 31 and Debian 10 |  Major | . | Kengo Seki | Kengo Seki |
| [BIGTOP-3416](https://issues.apache.org/jira/browse/BIGTOP-3416) | Fix YCSB to work with CentOS 8 and Fedora 31 |  Major | . | Kengo Seki | Kengo Seki |
| [BIGTOP-3397](https://issues.apache.org/jira/browse/BIGTOP-3397) | Building Spark is failing on CentOS 7 for ARM64 and PPC64 |  Major | spark | Kengo Seki | Masatake Iwasaki |
| [BIGTOP-3437](https://issues.apache.org/jira/browse/BIGTOP-3437) | Building Logstash fails due to amazing\_print version mismatch |  Major | . | Kengo Seki | Kengo Seki |
| [BIGTOP-3406](https://issues.apache.org/jira/browse/BIGTOP-3406) | Fix Oozie smoke test to work |  Major | tests | Kengo Seki | Kengo Seki |
| [BIGTOP-3422](https://issues.apache.org/jira/browse/BIGTOP-3422) | Fix ambari-server setup failure due to PostgreSQL initdb error |  Major | deployment | Masatake Iwasaki | Kengo Seki |
| [BIGTOP-3376](https://issues.apache.org/jira/browse/BIGTOP-3376) | Make Mpack as a standalone component in Bigtop |  Major | . | Yuqi Gu | Yuqi Gu |
| [BIGTOP-3427](https://issues.apache.org/jira/browse/BIGTOP-3427) | Deploying GPDB fails due to the paramiko installation on some distros |  Major | . | Kengo Seki | Kengo Seki |
| [BIGTOP-3439](https://issues.apache.org/jira/browse/BIGTOP-3439) | Oozie's smoke test fails on CentOS and Fedora |  Major | tests | Kengo Seki | Masatake Iwasaki |
| [BIGTOP-3440](https://issues.apache.org/jira/browse/BIGTOP-3440) | Building flume fails on all distros |  Major | . | Kengo Seki | Luca Toscano |
| [BIGTOP-3429](https://issues.apache.org/jira/browse/BIGTOP-3429) | QFS smoke test fails on Ubuntu 16.04 |  Major | qfs, tests | Kengo Seki | Kengo Seki |
| [BIGTOP-3444](https://issues.apache.org/jira/browse/BIGTOP-3444) | Bump Hadoop to 2.10.1 |  Major | hadoop | Masatake Iwasaki | Masatake Iwasaki |
| [BIGTOP-3425](https://issues.apache.org/jira/browse/BIGTOP-3425) | Deploying Ambari fails on Fedora 31 |  Major | . | Kengo Seki | Kengo Seki |
| [BIGTOP-3443](https://issues.apache.org/jira/browse/BIGTOP-3443) | Building Spark fails on Ubuntu 16.04 |  Major | spark | Kengo Seki | Yuqi Gu |
| [BIGTOP-3309](https://issues.apache.org/jira/browse/BIGTOP-3309) | Missing build target for Debian 10 in BigTop 1.5 |  Major | . | Luca Toscano | Kengo Seki |
| [BIGTOP-3446](https://issues.apache.org/jira/browse/BIGTOP-3446) | Fix toolchain task failure due to undefined variable in renv.pp |  Major | . | Masatake Iwasaki | Masatake Iwasaki |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-3215](https://issues.apache.org/jira/browse/BIGTOP-3215) | Failed to build bigtop/puppet image for OpenSuSE |  Major | docker | Evans Ye | Evans Ye |
| [BIGTOP-3276](https://issues.apache.org/jira/browse/BIGTOP-3276) | Update supported distros in the toolchain manifests for v1.5.0 |  Major | toolchain | Kengo Seki | Kengo Seki |
| [BIGTOP-3279](https://issues.apache.org/jira/browse/BIGTOP-3279) | Bump Zookeeper to 3.4.13 |  Major | . | Kengo Seki | Kengo Seki |
| [BIGTOP-3289](https://issues.apache.org/jira/browse/BIGTOP-3289) | Bump Tomcat to 8.5.50 |  Major | . | Masatake Iwasaki | Masatake Iwasaki |
| [BIGTOP-3288](https://issues.apache.org/jira/browse/BIGTOP-3288) | Update supported distros in the Docker build scripts for v1.5.0 |  Major | docker | Kengo Seki | Kengo Seki |
| [BIGTOP-3287](https://issues.apache.org/jira/browse/BIGTOP-3287) | Bump Hadoop to 2.10.0 |  Major | hadoop | Masatake Iwasaki | Masatake Iwasaki |
| [BIGTOP-3297](https://issues.apache.org/jira/browse/BIGTOP-3297) | Bump HBase to 1.5.0 |  Major | . | Masatake Iwasaki | Masatake Iwasaki |
| [BIGTOP-3282](https://issues.apache.org/jira/browse/BIGTOP-3282) | Bump Hive to 2.3.6 |  Major | hive | Kengo Seki | Masatake Iwasaki |
| [BIGTOP-3281](https://issues.apache.org/jira/browse/BIGTOP-3281) | Bump Tez to 0.9.2 |  Major | tez | Kengo Seki | Masatake Iwasaki |
| [BIGTOP-3298](https://issues.apache.org/jira/browse/BIGTOP-3298) | Bump Phoenix to 4.15.0-HBase-1.5 |  Major | . | Masatake Iwasaki | Masatake Iwasaki |
| [BIGTOP-3313](https://issues.apache.org/jira/browse/BIGTOP-3313) | Bump solor to 6.6.6 |  Major | . | Jun He | Jun He |
| [BIGTOP-3285](https://issues.apache.org/jira/browse/BIGTOP-3285) | Bump Kafka to 2.4.0 |  Major | . | Kengo Seki | Yasuaki Okumura |
| [BIGTOP-3315](https://issues.apache.org/jira/browse/BIGTOP-3315) | Bump Alluxio to 1.8.2 |  Major | . | Masatake Iwasaki | Masatake Iwasaki |
| [BIGTOP-3306](https://issues.apache.org/jira/browse/BIGTOP-3306) | Bump Giraph to 1.2.0 |  Major | . | Kengo Seki | Kengo Seki |
| [BIGTOP-3165](https://issues.apache.org/jira/browse/BIGTOP-3165) | Bump Spark to 2.4.5 |  Major | build | Evans Ye | Masayoshi Tsuzuki |
| [BIGTOP-3305](https://issues.apache.org/jira/browse/BIGTOP-3305) | Bump Flume to 1.9.0 |  Major | . | Masatake Iwasaki | Masatake Iwasaki |
| [BIGTOP-3286](https://issues.apache.org/jira/browse/BIGTOP-3286) | Bump Ignite to 2.7.6 |  Major | ignite | Kengo Seki | Yuqi Gu |
| [BIGTOP-3356](https://issues.apache.org/jira/browse/BIGTOP-3356) | Add CentOS 8 support to the Docker provisioner |  Major | docker, provisioner | Kengo Seki | Kengo Seki |
| [BIGTOP-3363](https://issues.apache.org/jira/browse/BIGTOP-3363) | Drop Apex, Hama and Tajo in the 1.5.0 release |  Major | . | Kengo Seki | Masatake Iwasaki |
| [BIGTOP-3343](https://issues.apache.org/jira/browse/BIGTOP-3343) | Add Debian 10 and Ubuntu 18.04 support to the Docker provisioner |  Major | debian, docker, provisioner | Kengo Seki | Kengo Seki |
| [BIGTOP-3375](https://issues.apache.org/jira/browse/BIGTOP-3375) | Bump Livy to 0.7.0 and build it with Python3 |  Major | . | Kengo Seki | Kengo Seki |
| [BIGTOP-3188](https://issues.apache.org/jira/browse/BIGTOP-3188) | Bump Zeppelin to 0.8.1 |  Major | . | Evans Ye | Evans Ye |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-3268](https://issues.apache.org/jira/browse/BIGTOP-3268) | Add ability to change limits for nagios checks in charm |  Minor | deployment | Kevin Monroe | Kevin Monroe |
| [BIGTOP-3015](https://issues.apache.org/jira/browse/BIGTOP-3015) | hadoop-spark bundle correction |  Minor | deployment | James Beedy | Kevin Monroe |
| [BIGTOP-3318](https://issues.apache.org/jira/browse/BIGTOP-3318) | Use secure repo in bigtop-tests |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-3322](https://issues.apache.org/jira/browse/BIGTOP-3322) | Lintian Warnings in Hadoop |  Major | . | Olaf Flebbe | Masatake Iwasaki |
| [BIGTOP-3340](https://issues.apache.org/jira/browse/BIGTOP-3340) | Add Masatake Iwasaki to team list |  Trivial | website | Masatake Iwasaki | Masatake Iwasaki |
| [BIGTOP-3419](https://issues.apache.org/jira/browse/BIGTOP-3419) | Automate Deployment to asf-site |  Major | website | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-3409](https://issues.apache.org/jira/browse/BIGTOP-3409) | Move bigtop website off from CMS: staging |  Major | website | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-3123](https://issues.apache.org/jira/browse/BIGTOP-3123) | Define Bigtop 1.5.0 release BOM |  Major | . | Jun He |  |


