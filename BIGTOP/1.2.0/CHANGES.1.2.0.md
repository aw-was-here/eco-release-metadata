
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

## Release 1.2.0 - 2017-04-04



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-1641](https://issues.apache.org/jira/browse/BIGTOP-1641) | Add packaging for Apache Tajo |  Major | debian, rpm, tests | YoungWoo Kim | Yeongeon KIM |
| [BIGTOP-2296](https://issues.apache.org/jira/browse/BIGTOP-2296) | Provide a way to build Docker container with functional stack |  Major | docker, general | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2339](https://issues.apache.org/jira/browse/BIGTOP-2339) | add centos-7 to the provisioiner matrix |  Major | provisioner | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2435](https://issues.apache.org/jira/browse/BIGTOP-2435) | Add Juju charms for hadoop component |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2452](https://issues.apache.org/jira/browse/BIGTOP-2452) | Adding Dockerfile to build deploy image for ubuntu-16.04-x86 |  Major | build, deployment, docker | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2477](https://issues.apache.org/jira/browse/BIGTOP-2477) | Add Juju charm for spark component |  Minor | deployment | Cory Johns | Cory Johns |
| [BIGTOP-2524](https://issues.apache.org/jira/browse/BIGTOP-2524) | Add Greenplum component |  Major | build, debian, rpm | Kirill Morozov | Kirill Morozov |
| [BIGTOP-2486](https://issues.apache.org/jira/browse/BIGTOP-2486) | Add Kafka Charm |  Minor | deployment | Konstantinos Tsakalozos | Konstantinos Tsakalozos |
| [BIGTOP-2482](https://issues.apache.org/jira/browse/BIGTOP-2482) | Adding Pig charm |  Minor | deployment | Andrew McLeod | Andrew McLeod |
| [BIGTOP-2476](https://issues.apache.org/jira/browse/BIGTOP-2476) | Add Zookeeper Charm |  Major | deployment | Pete Vander Giessen | Pete Vander Giessen |
| [BIGTOP-2481](https://issues.apache.org/jira/browse/BIGTOP-2481) | Add HBase Charm |  Minor | hbase | Konstantinos Tsakalozos | Konstantinos Tsakalozos |
| [BIGTOP-2483](https://issues.apache.org/jira/browse/BIGTOP-2483) | Add Mahout Charm |  Minor | deployment | Konstantinos Tsakalozos | Konstantinos Tsakalozos |
| [BIGTOP-2615](https://issues.apache.org/jira/browse/BIGTOP-2615) | Provide a tool to build pseudo cluster docker images |  Major | docker | Evans Ye | Evans Ye |
| [BIGTOP-2660](https://issues.apache.org/jira/browse/BIGTOP-2660) | Add Giraph Charm |  Minor | deployment | Konstantinos Tsakalozos | Kevin W Monroe |
| [BIGTOP-2451](https://issues.apache.org/jira/browse/BIGTOP-2451) | Adding Ubuntu 16.04 support to Bigtop |  Major | build, deployment, docker, ppc64le, provisioner | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2282](https://issues.apache.org/jira/browse/BIGTOP-2282) | Define Bigtop 1.2 release BOM |  Blocker | general | Konstantin Boudnik | Roman Shaposhnik |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2118](https://issues.apache.org/jira/browse/BIGTOP-2118) | Update HBase to 0.98.17 |  Minor | . | Andrew Purtell | YoungWoo Kim |
| [BIGTOP-2337](https://issues.apache.org/jira/browse/BIGTOP-2337) | Fix script to make deb in Tajo |  Major | . | Yeongeon KIM | Yeongeon KIM |
| [BIGTOP-2332](https://issues.apache.org/jira/browse/BIGTOP-2332) | Upgrade Tajo version to 0.11.1 |  Major | . | Yeongeon KIM | Yeongeon KIM |
| [BIGTOP-1843](https://issues.apache.org/jira/browse/BIGTOP-1843) | Upgrade Sqoop to 1.4.6 |  Critical | build | YoungWoo Kim | Craig Foster |
| [BIGTOP-2351](https://issues.apache.org/jira/browse/BIGTOP-2351) | Vagrant VM is missing /user/vagrant HDFS directory |  Major | provisioner | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2352](https://issues.apache.org/jira/browse/BIGTOP-2352) | Packaged Vagrant box has incorrect host info on restart |  Major | provisioner | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2327](https://issues.apache.org/jira/browse/BIGTOP-2327) | Bump up Phoenix to 4.7.0 |  Major | build | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2381](https://issues.apache.org/jira/browse/BIGTOP-2381) | Making Zookeeper hosts templatize in puppet module of hue |  Minor | hue | Amit Kabra | Amit Kabra |
| [BIGTOP-2395](https://issues.apache.org/jira/browse/BIGTOP-2395) | Create separate page to point "Download now" link to |  Major | website | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2393](https://issues.apache.org/jira/browse/BIGTOP-2393) | Add ARM64 support for build environment |  Major | build | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2403](https://issues.apache.org/jira/browse/BIGTOP-2403) | Remove affiliation column in the team list |  Major | website | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2407](https://issues.apache.org/jira/browse/BIGTOP-2407) | Making "force\_username\_lowercase" variable templatize in puppet module of hue |  Minor | hue | Amit Kabra | Amit Kabra |
| [BIGTOP-2410](https://issues.apache.org/jira/browse/BIGTOP-2410) | Making "ldap\_username\_pattern" variable templatize in puppet module of hue |  Major | hue | Amit Kabra | Amit Kabra |
| [BIGTOP-2409](https://issues.apache.org/jira/browse/BIGTOP-2409) | nt\_domain configuration option for hue to connect to Active Directory |  Major | hue | Amit Kabra | Amit Kabra |
| [BIGTOP-2408](https://issues.apache.org/jira/browse/BIGTOP-2408) | group\_filter variable value is not templatize in puppet module of hue |  Major | . | Amit Kabra | Amit Kabra |
| [BIGTOP-2411](https://issues.apache.org/jira/browse/BIGTOP-2411) | Add OS-neutral wrappers to build all native packages and repositories |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2077](https://issues.apache.org/jira/browse/BIGTOP-2077) | Bump HBase version to 1.1 |  Major | hbase | Konstantin Boudnik | YoungWoo Kim |
| [BIGTOP-2333](https://issues.apache.org/jira/browse/BIGTOP-2333) | Make Apache Pig work with HBase 1.1 on Hadoop 2 |  Major | build, pig | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2416](https://issues.apache.org/jira/browse/BIGTOP-2416) | Upgrade Crunch to 0.13.0 |  Major | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2455](https://issues.apache.org/jira/browse/BIGTOP-2455) | support pre-installed java environment |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2479](https://issues.apache.org/jira/browse/BIGTOP-2479) | Update qfs maintainer to kstinson |  Major | . | Faraaz Sareshwala | Faraaz Sareshwala |
| [BIGTOP-2478](https://issues.apache.org/jira/browse/BIGTOP-2478) | Zookeeper does not have any smoke tests |  Major | deployment | Pete Vander Giessen | Pete Vander Giessen |
| [BIGTOP-2429](https://issues.apache.org/jira/browse/BIGTOP-2429) | Add Solr to gradle smokes |  Major | tests | Dasha Boudnik | Dasha Boudnik |
| [BIGTOP-2466](https://issues.apache.org/jira/browse/BIGTOP-2466) | HBase puppet scripts co-deploy ZK and Datanode along with HBase |  Minor | hbase | Konstantinos Tsakalozos | Konstantinos Tsakalozos |
| [BIGTOP-2507](https://issues.apache.org/jira/browse/BIGTOP-2507) | Make buildstamp configurable by a bom file |  Major | . | Teruyoshi Zenmyo | Teruyoshi Zenmyo |
| [BIGTOP-2458](https://issues.apache.org/jira/browse/BIGTOP-2458) | Add option to disable IP hostname checking for DataNode registration |  Minor | deployment | Cory Johns | Cory Johns |
| [BIGTOP-2521](https://issues.apache.org/jira/browse/BIGTOP-2521) | Problem with deprecated methods in puppet code with puppet option parser=future |  Major | deployment | Kirill Morozov | Kirill Morozov |
| [BIGTOP-2443](https://issues.apache.org/jira/browse/BIGTOP-2443) | inject unzip method to ZipInputStream, accepting regex for include |  Major | tests | Konstantin Boudnik | Kengo Seki |
| [BIGTOP-2385](https://issues.apache.org/jira/browse/BIGTOP-2385) | Reformat bigtop\_toolchain/manifests/packages.pp to ease maintenance |  Major | toolchain | Konstantin Boudnik | Kengo Seki |
| [BIGTOP-2459](https://issues.apache.org/jira/browse/BIGTOP-2459) | Add option to disable vmem check for NodeManager |  Minor | deployment | Cory Johns | Cory Johns |
| [BIGTOP-2547](https://issues.apache.org/jira/browse/BIGTOP-2547) | Don\'t render ip-hostname-check in hdfs-site.xml if default |  Minor | deployment, hadoop | Cory Johns | Cory Johns |
| [BIGTOP-2522](https://issues.apache.org/jira/browse/BIGTOP-2522) | Add spark processing juju bundle |  Minor | deployment | Konstantinos Tsakalozos | Konstantinos Tsakalozos |
| [BIGTOP-2504](https://issues.apache.org/jira/browse/BIGTOP-2504) | Kafka should be able to bind to something other than 0.0.0.0/the default interface |  Minor | deployment | Pete Vander Giessen | Pete Vander Giessen |
| [BIGTOP-2516](https://issues.apache.org/jira/browse/BIGTOP-2516) | Add Zeppelin Charm |  Minor | deployment | Konstantinos Tsakalozos | Kevin W Monroe |
| [BIGTOP-2548](https://issues.apache.org/jira/browse/BIGTOP-2548) | Refresh charms for Juju 2.0 and Xenial |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2384](https://issues.apache.org/jira/browse/BIGTOP-2384) | Refactor toolchain code to extract packages version out of every action |  Major | toolchain | Konstantin Boudnik | Kengo Seki |
| [BIGTOP-2554](https://issues.apache.org/jira/browse/BIGTOP-2554) | expose bind-host options in hieradata |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2555](https://issues.apache.org/jira/browse/BIGTOP-2555) | hadoop charms should use bind-host overrides |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2571](https://issues.apache.org/jira/browse/BIGTOP-2571) | cwr driven updates to the zeppelin juju charm |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2578](https://issues.apache.org/jira/browse/BIGTOP-2578) | Puppet needs to be updated for Hive Server2 |  Major | deployment | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2576](https://issues.apache.org/jira/browse/BIGTOP-2576) | For small clusters it is useful to turn replace-datanode-on-failure off |  Major | deployment | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2579](https://issues.apache.org/jira/browse/BIGTOP-2579) | Puppet needs to be updated for Hive Metastore service |  Major | deployment | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2575](https://issues.apache.org/jira/browse/BIGTOP-2575) | zk charm test updates |  Minor | deployment, tests | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2577](https://issues.apache.org/jira/browse/BIGTOP-2577) | kafka charm test updates |  Minor | deployment, tests | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2561](https://issues.apache.org/jira/browse/BIGTOP-2561) | add juju bundle for hadoop-spark |  Trivial | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2616](https://issues.apache.org/jira/browse/BIGTOP-2616) | refresh juju hadoop-processing bundle |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2617](https://issues.apache.org/jira/browse/BIGTOP-2617) | refresh juju spark-processing bundle |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2370](https://issues.apache.org/jira/browse/BIGTOP-2370) | Upgrade DataFu version to 1.3.0 |  Minor | . | YoungWoo Kim | Kengo Seki |
| [BIGTOP-2611](https://issues.apache.org/jira/browse/BIGTOP-2611) | Adding Fedora-25 with Java 1.8 support |  Major | build, docker | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2490](https://issues.apache.org/jira/browse/BIGTOP-2490) | Spark in HA when Zookeeper is available |  Minor | spark | Konstantinos Tsakalozos | Konstantinos Tsakalozos |
| [BIGTOP-2682](https://issues.apache.org/jira/browse/BIGTOP-2682) | update juju bundles with recent charm revs |  Trivial | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2688](https://issues.apache.org/jira/browse/BIGTOP-2688) | Add flag for provisioning of Yum Repo |  Trivial | deployment | Mike Grimes | Mike Grimes |
| [BIGTOP-2694](https://issues.apache.org/jira/browse/BIGTOP-2694) | Added Hernan Vivani (hvivani) as elasticsearch maintainer |  Minor | . | Hernan Vivani | Hernan Vivani |
| [BIGTOP-2696](https://issues.apache.org/jira/browse/BIGTOP-2696) | Build out VM for sandboxes |  Major | build | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2697](https://issues.apache.org/jira/browse/BIGTOP-2697) | Back port HADOOP-12366 into Bigtop |  Major | hadoop | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-1608](https://issues.apache.org/jira/browse/BIGTOP-1608) | Create Unified testing solution: Smoke-Tests and Test-Artifacts |  Major | tests | David Capwell | Konstantin Boudnik |
| [BIGTOP-2714](https://issues.apache.org/jira/browse/BIGTOP-2714) | Update Groovy in the toolchain to 2.4.10 |  Major | toolchain | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2306](https://issues.apache.org/jira/browse/BIGTOP-2306) | Add support for specifying git repository access credentials |  Minor | build | Andrew Purtell | Andrew Purtell |
| [BIGTOP-2309](https://issues.apache.org/jira/browse/BIGTOP-2309) | Update submodules after git clone |  Minor | build | Andrew Purtell | Andrew Purtell |
| [BIGTOP-2506](https://issues.apache.org/jira/browse/BIGTOP-2506) | Zookeeper: non default interface for client |  Minor | deployment | Pete Vander Giessen | Pete Vander Giessen |
| [BIGTOP-2712](https://issues.apache.org/jira/browse/BIGTOP-2712) | Juju CI driven updates |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2134](https://issues.apache.org/jira/browse/BIGTOP-2134) | Wrong package name in bigpetstore-mapreduce/arch.dot |  Trivial | blueprints | Kengo Seki | Kengo Seki |
| [BIGTOP-2135](https://issues.apache.org/jira/browse/BIGTOP-2135) | PigCSVCleaner fails due to the lack of the dependent jar |  Major | blueprints | Kengo Seki | Kengo Seki |
| [BIGTOP-2133](https://issues.apache.org/jira/browse/BIGTOP-2133) | Running BPSGenerator using fat-jar fails on Mac OS X |  Minor | blueprints | Kengo Seki | Kengo Seki |
| [BIGTOP-2301](https://issues.apache.org/jira/browse/BIGTOP-2301) | Bigtop Homepage shows wrong url to CI |  Major | website | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2303](https://issues.apache.org/jira/browse/BIGTOP-2303) | Fix the indentation in docker-hadoop.sh |  Minor | . | Faraaz Sareshwala | Faraaz Sareshwala |
| [BIGTOP-2302](https://issues.apache.org/jira/browse/BIGTOP-2302) | Use apt instead of yum in setup-env-debian.sh |  Minor | . | Faraaz Sareshwala | Faraaz Sareshwala |
| [BIGTOP-2318](https://issues.apache.org/jira/browse/BIGTOP-2318) | Release assembly needs to be updated |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2308](https://issues.apache.org/jira/browse/BIGTOP-2308) | Clean up build directory after sucessfull build of package |  Major | debian | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2136](https://issues.apache.org/jira/browse/BIGTOP-2136) | A comment about parameter substitution in BPS\_analytics.pig is slightly wrong |  Trivial | blueprints | Kengo Seki | Kengo Seki |
| [BIGTOP-2340](https://issues.apache.org/jira/browse/BIGTOP-2340) | BIGTOP-2319 is incomplete: the code for smoke-tests is missing |  Major | tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2229](https://issues.apache.org/jira/browse/BIGTOP-2229) | bigtop deploy to support centos-7 |  Major | docker | Olaf Flebbe | Konstantin Boudnik |
| [BIGTOP-2347](https://issues.apache.org/jira/browse/BIGTOP-2347) | Clean up build directory after sucessfull build of package (2nd try) |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2346](https://issues.apache.org/jira/browse/BIGTOP-2346) | Do not use gradle delete() for sources and build directories |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2220](https://issues.apache.org/jira/browse/BIGTOP-2220) | flume-agent.init incorrectly handles flume.conf |  Major | . | Teruyoshi Zenmyo | Teruyoshi Zenmyo |
| [BIGTOP-2353](https://issues.apache.org/jira/browse/BIGTOP-2353) | fix qfs suse build |  Major | build, qfs | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2350](https://issues.apache.org/jira/browse/BIGTOP-2350) | HCatalog WebHCat server\'s default file incorrectly specifies HCAT\_PREFIX AND HADOOP\_PREFIX |  Minor | hive | Rob Leidle | Rob Leidle |
| [BIGTOP-2358](https://issues.apache.org/jira/browse/BIGTOP-2358) | Update the URL for Bigtop-trunk-packages job on README |  Trivial | documentation | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2354](https://issues.apache.org/jira/browse/BIGTOP-2354) | qfs does not build on fedora |  Major | qfs | Olaf Flebbe | Faraaz Sareshwala |
| [BIGTOP-2359](https://issues.apache.org/jira/browse/BIGTOP-2359) | Add .DS\_Store to .gitignore |  Trivial | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2362](https://issues.apache.org/jira/browse/BIGTOP-2362) | Enabling bigtop docker provisioner for ppc64le (ubuntu 15.04) |  Major | deployment, ppc64le | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2367](https://issues.apache.org/jira/browse/BIGTOP-2367) | QFS packages do not handle /var/run/qfs properly |  Major | qfs | Olaf Flebbe | Faraaz Sareshwala |
| [BIGTOP-2372](https://issues.apache.org/jira/browse/BIGTOP-2372) | Puppet deploy README points to non-existing repo |  Major | documentation | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2373](https://issues.apache.org/jira/browse/BIGTOP-2373) | kinit path is not correctly configured in hue.ini template for CentOs by puppet module |  Minor | . | Vishal Khandelwal | Vishal Khandelwal |
| [BIGTOP-2376](https://issues.apache.org/jira/browse/BIGTOP-2376) | Update Tomcat and remove obsolete downloads |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2366](https://issues.apache.org/jira/browse/BIGTOP-2366) | Support https:// repositories for DEB systems |  Major | ci, deployment | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2377](https://issues.apache.org/jira/browse/BIGTOP-2377) | Update to Hadoop 2.7.2 |  Major | build, hadoop | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2378](https://issues.apache.org/jira/browse/BIGTOP-2378) | Do not use archive.apache.org for ant download |  Major | toolchain | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2379](https://issues.apache.org/jira/browse/BIGTOP-2379) | update maven to 3.3.9 and refactor toolchain |  Major | toolchain | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2380](https://issues.apache.org/jira/browse/BIGTOP-2380) | support opensuse-42.1 (leap) |  Major | toolchain | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2382](https://issues.apache.org/jira/browse/BIGTOP-2382) | Parameterise and expose "default\_hdfs\_superuser" for hue.ini |  Major | deployment | Vishal Khandelwal | Vishal Khandelwal |
| [BIGTOP-2342](https://issues.apache.org/jira/browse/BIGTOP-2342) | Set yarn.log.server.url to point to JH server |  Major | hadoop | Aaron Tokhy | Aaron Tokhy |
| [BIGTOP-2399](https://issues.apache.org/jira/browse/BIGTOP-2399) | Maven artifacts are still on 2.6.0 version of Apache Hadoop |  Major | build, tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2402](https://issues.apache.org/jira/browse/BIGTOP-2402) | yet another commiter name is missing in the "Who we are" page |  Minor | website | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2404](https://issues.apache.org/jira/browse/BIGTOP-2404) | puppetize.sh fails on Ubuntu 14.04 because of the lack of apt-get update |  Major | build, docker | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2413](https://issues.apache.org/jira/browse/BIGTOP-2413) | QFS README.md breaks RAT |  Critical | build | Konstantin Boudnik | Faraaz Sareshwala |
| [BIGTOP-2406](https://issues.apache.org/jira/browse/BIGTOP-2406) | init scripts do not work reliable on systemd systems |  Major | debian, Init scripts | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2419](https://issues.apache.org/jira/browse/BIGTOP-2419) | Fix symlinks on packaging Crunch rpm and deb |  Major | debian, rpm | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2423](https://issues.apache.org/jira/browse/BIGTOP-2423) | Fix hard-coded port number in Sqoop smokes |  Major | tests | Dasha Boudnik | Dasha Boudnik |
| [BIGTOP-2425](https://issues.apache.org/jira/browse/BIGTOP-2425) | crunch needs JDK8 javadoc |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1533](https://issues.apache.org/jira/browse/BIGTOP-1533) | failed to load/initialize native-bzip2 library system-native |  Major | build | Guo Ruijing | Olaf Flebbe |
| [BIGTOP-2433](https://issues.apache.org/jira/browse/BIGTOP-2433) | mvn is missing in Bigtop Toolchain |  Major | toolchain | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2400](https://issues.apache.org/jira/browse/BIGTOP-2400) | Get groovy plugins used by Maven in sync with Bigtop groovy runtime |  Major | build, tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2434](https://issues.apache.org/jira/browse/BIGTOP-2434) | Change Spark test to unpack jar file and retrieve resources |  Major | tests | Dasha Boudnik | Dasha Boudnik |
| [BIGTOP-2439](https://issues.apache.org/jira/browse/BIGTOP-2439) | flink: fix adduser and register init.d scripts on DEB systemes |  Major | build, flink | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2441](https://issues.apache.org/jira/browse/BIGTOP-2441) | spark smoke test doesn\'t work relying on yarn-client submittion |  Major | tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2412](https://issues.apache.org/jira/browse/BIGTOP-2412) | arm dockerfile breaks RAT |  Critical | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2427](https://issues.apache.org/jira/browse/BIGTOP-2427) | jsvc build not recognizing ARM as valid platform |  Critical | jsvc | Ganesh Raju | Ganesh Raju |
| [BIGTOP-2463](https://issues.apache.org/jira/browse/BIGTOP-2463) | Regression: bigtop-jsvc build fails on ppc64le architecture |  Critical | build, jsvc, ppc64le | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2430](https://issues.apache.org/jira/browse/BIGTOP-2430) | Adding Dockerfile to build puppet image for ubuntu-16.04-ppc64le |  Major | build, docker, ppc64le | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2431](https://issues.apache.org/jira/browse/BIGTOP-2431) | Adding Dockerfile to build slaves image for ubuntu-16.04-ppc64le |  Major | build, docker, ppc64le | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2374](https://issues.apache.org/jira/browse/BIGTOP-2374) | Toolchain needs clear warning for Puppet \<3 |  Major | toolchain | Konstantin Boudnik | Kengo Seki |
| [BIGTOP-2449](https://issues.apache.org/jira/browse/BIGTOP-2449) | Adding Dockerfile to build slaves image for ubuntu-16.04-x86 |  Major | build, docker | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2472](https://issues.apache.org/jira/browse/BIGTOP-2472) | zeppelin puppet module needs to expose ZEPPELIN\_WAR\_TEMPDIR |  Major | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2474](https://issues.apache.org/jira/browse/BIGTOP-2474) | Improve handling of gradle home |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2445](https://issues.apache.org/jira/browse/BIGTOP-2445) | Adding Dockerfile to build deploy image for ubuntu-16.04-ppc64le |  Major | build, docker, ppc64le | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2473](https://issues.apache.org/jira/browse/BIGTOP-2473) | Mahout puppet script fails to find Package[hadoop] |  Major | . | Konstantinos Tsakalozos |  |
| [BIGTOP-2488](https://issues.apache.org/jira/browse/BIGTOP-2488) | Redundant zookeeper/lib directory |  Minor | debian, rpm | Ted Yu | Ted Yu |
| [BIGTOP-2487](https://issues.apache.org/jira/browse/BIGTOP-2487) | Alluxio /var/log/alluxio is not created |  Major | . | Olaf Flebbe | Konstantinos Tsakalozos |
| [BIGTOP-2495](https://issues.apache.org/jira/browse/BIGTOP-2495) | hive-hbase package is broken |  Major | hive | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2494](https://issues.apache.org/jira/browse/BIGTOP-2494) | Use systemd within bigtop/deploy docker image for debian-8, centos-7, fix centos-7 provisioner |  Major | deployment | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2513](https://issues.apache.org/jira/browse/BIGTOP-2513) | Some RAT exclude rules defined in build.gradle are not defined in pom.xml |  Minor | build | Kengo Seki | Kengo Seki |
| [BIGTOP-2512](https://issues.apache.org/jira/browse/BIGTOP-2512) | Wrong help message in docker-hadoop.sh |  Trivial | deployment, vm | Kengo Seki | Kengo Seki |
| [BIGTOP-2523](https://issues.apache.org/jira/browse/BIGTOP-2523) | Incorrect cycle dependency during puppet deployment causes error at Debian 8 |  Major | deployment | Kirill Morozov | Artur A. Papikyan |
| [BIGTOP-2528](https://issues.apache.org/jira/browse/BIGTOP-2528) | provisioner fails to add short host name |  Major | deployment, provisioner | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2537](https://issues.apache.org/jira/browse/BIGTOP-2537) | Hive smoke test identifies as org.apache.bigtop.itest.hadoop.mapreduce |  Major | tests | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2536](https://issues.apache.org/jira/browse/BIGTOP-2536) | tarball.destination is ignored when set |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2545](https://issues.apache.org/jira/browse/BIGTOP-2545) | Add ZOOKEEPER-2594 to bigtop |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2546](https://issues.apache.org/jira/browse/BIGTOP-2546) | Make debian/ubuntu toolchain install more resistent agains failures |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2551](https://issues.apache.org/jira/browse/BIGTOP-2551) | docker-hadoop.sh --create fails with "Error: Could not match \|$index" message |  Major | provisioner | Kengo Seki | Kengo Seki |
| [BIGTOP-2542](https://issues.apache.org/jira/browse/BIGTOP-2542) | Some files related to docker provisioner breaks RAT |  Major | build | Kengo Seki | Kengo Seki |
| [BIGTOP-2405](https://issues.apache.org/jira/browse/BIGTOP-2405) | Rollback BIGTOP-2049 as the original issue was fixed in the upstream |  Major | build | Konstantin Boudnik | Kengo Seki |
| [BIGTOP-2549](https://issues.apache.org/jira/browse/BIGTOP-2549) | "Expected" and "actual" values are mistakenly switched in some JUnit method invocation |  Minor | tests | Kengo Seki | Kengo Seki |
| [BIGTOP-2543](https://issues.apache.org/jira/browse/BIGTOP-2543) | Some minor problems on provisioner/docker/docker-hadoop.sh |  Minor | provisioner | Kengo Seki | Kengo Seki |
| [BIGTOP-2529](https://issues.apache.org/jira/browse/BIGTOP-2529) | Vagrant Provisioner failed to start up daemons |  Minor | provisioner | Evans Ye | Evans Ye |
| [BIGTOP-2553](https://issues.apache.org/jira/browse/BIGTOP-2553) | namenode ports are not configured for non-HA mode |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2535](https://issues.apache.org/jira/browse/BIGTOP-2535) | frontend-maven-plugin fails on ppc64le |  Major | build, docker, ppc64le | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2557](https://issues.apache.org/jira/browse/BIGTOP-2557) | BIGTOP-2536 broke DataFu, QFS and YCSB |  Major | build | Kengo Seki | Kengo Seki |
| [BIGTOP-2559](https://issues.apache.org/jira/browse/BIGTOP-2559) | Revert JIRA BIGTOP-2535 |  Major | build | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2558](https://issues.apache.org/jira/browse/BIGTOP-2558) | Add ppc64le and arm64 node to the build slave configuration |  Major | build | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2556](https://issues.apache.org/jira/browse/BIGTOP-2556) | Building Hadoop fails because Tomcat 6.0.45 is not downloadable from Apache mirror |  Major | build, hadoop | Kengo Seki | Kengo Seki |
| [BIGTOP-2563](https://issues.apache.org/jira/browse/BIGTOP-2563) | zeppelin build fails on ppc64le |  Major | build | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2564](https://issues.apache.org/jira/browse/BIGTOP-2564) | HBase build fails on Power |  Major | build, ppc64le | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2565](https://issues.apache.org/jira/browse/BIGTOP-2565) | upgrade Spark to version 1.6.2 |  Major | build, spark | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2533](https://issues.apache.org/jira/browse/BIGTOP-2533) | Use TLS for downloading sources |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2566](https://issues.apache.org/jira/browse/BIGTOP-2566) | Specify KAFKA\_VERSION in build command for Flume |  Major | build | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2560](https://issues.apache.org/jira/browse/BIGTOP-2560) | Spark charm failing automated tests |  Minor | deployment | Konstantinos Tsakalozos | Konstantinos Tsakalozos |
| [BIGTOP-2582](https://issues.apache.org/jira/browse/BIGTOP-2582) | Adding Spark1 components for Spark 1.x family |  Major | build, spark | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2569](https://issues.apache.org/jira/browse/BIGTOP-2569) | Spark 2.0 |  Major | build | Olaf Flebbe | Jonathan Kelly |
| [BIGTOP-2585](https://issues.apache.org/jira/browse/BIGTOP-2585) | Zookeeper service does not start if kerberos is disabled |  Major | deployment | Kengo Seki | Kengo Seki |
| [BIGTOP-2591](https://issues.apache.org/jira/browse/BIGTOP-2591) | Fix bug in BIGTOP-2569 |  Trivial | . | Jonathan Kelly | Jonathan Kelly |
| [BIGTOP-2589](https://issues.apache.org/jira/browse/BIGTOP-2589) | spark1 build break |  Critical | ppc64le, spark | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2596](https://issues.apache.org/jira/browse/BIGTOP-2596) | Phoenix build fails |  Major | build | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2590](https://issues.apache.org/jira/browse/BIGTOP-2590) | Flume build break on RPM |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2588](https://issues.apache.org/jira/browse/BIGTOP-2588) | Spark 2.0.1 installation fails on DEB |  Blocker | spark | Amir Sanjar | Olaf Flebbe |
| [BIGTOP-2597](https://issues.apache.org/jira/browse/BIGTOP-2597) | crunch build failed |  Major | build | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2599](https://issues.apache.org/jira/browse/BIGTOP-2599) | Zeppelin 0.6.2 build fails on Power |  Major | build, ppc64le | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2602](https://issues.apache.org/jira/browse/BIGTOP-2602) | ignite-hadoop build break |  Major | build | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2570](https://issues.apache.org/jira/browse/BIGTOP-2570) | ease hadoop charm debugging |  Major | deployment | Antonio Rosales | Kevin W Monroe |
| [BIGTOP-2606](https://issues.apache.org/jira/browse/BIGTOP-2606) | spark1 build fails when RPM is sellected |  Major | build, spark | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2608](https://issues.apache.org/jira/browse/BIGTOP-2608) | upgrade Hadoop to 2.7.3 |  Major | build | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2587](https://issues.apache.org/jira/browse/BIGTOP-2587) | vagrant-puppet-vm fails with "Could not find class node\_with\_components" |  Major | vm | Kengo Seki | Kengo Seki |
| [BIGTOP-2609](https://issues.apache.org/jira/browse/BIGTOP-2609) | upgrade Kafka to version 0.10.0.0 |  Major | build | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2610](https://issues.apache.org/jira/browse/BIGTOP-2610) | upgrade mahout to version 0.12.2 |  Major | build | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2621](https://issues.apache.org/jira/browse/BIGTOP-2621) | JAVA\_HOME is not set on Fedora-25+JAVA-1.8 for x86 |  Major | build | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2623](https://issues.apache.org/jira/browse/BIGTOP-2623) | Zeppelin 0.6.2 build fails on all platforms |  Critical | build | Amir Sanjar |  |
| [BIGTOP-2605](https://issues.apache.org/jira/browse/BIGTOP-2605) | Addendum for BIGTOP-2514 |  Major | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2618](https://issues.apache.org/jira/browse/BIGTOP-2618) | bigtop-jsvc build fails with OpenJDK-1.8 |  Critical | build, jsvc | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2635](https://issues.apache.org/jira/browse/BIGTOP-2635) | ubuntu on ppc64le is missing a apt-get update |  Major | toolchain | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2637](https://issues.apache.org/jira/browse/BIGTOP-2637) | Fix flume because of kafka 0.10 update |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2638](https://issues.apache.org/jira/browse/BIGTOP-2638) | Update to kafka 0.10.1.0 |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2628](https://issues.apache.org/jira/browse/BIGTOP-2628) | sqoop2 build fails when JAVA 8 is used |  Major | build | Amir Sanjar | Olaf Flebbe |
| [BIGTOP-2471](https://issues.apache.org/jira/browse/BIGTOP-2471) | qfs does not build on opensuse:42.1 |  Major | qfs | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2594](https://issues.apache.org/jira/browse/BIGTOP-2594) | Workaround to fix Hive Build, by using SPARK1 Version |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2274](https://issues.apache.org/jira/browse/BIGTOP-2274) | CLONE - rpm: need to make bigtop-jsvc a wrapper package for jsvc package |  Major | build, debian, ppc64le | Amir Sanjar | Olaf Flebbe |
| [BIGTOP-2640](https://issues.apache.org/jira/browse/BIGTOP-2640) | Incomplete patch BIGTOP-2635 - Bigtop stack build fails on Ubuntu 16.04-ppc64le |  Blocker | build | Amir Sanjar | Olaf Flebbe |
| [BIGTOP-2636](https://issues.apache.org/jira/browse/BIGTOP-2636) | Fix giraph after upgrade to Hadoop-2.7.3 |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2604](https://issues.apache.org/jira/browse/BIGTOP-2604) | Build flink-dist with proper shading |  Major | flink | Craig Foster | Craig Foster |
| [BIGTOP-2643](https://issues.apache.org/jira/browse/BIGTOP-2643) | Force giraph to compile by removing findbugs from all pom.xml |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2464](https://issues.apache.org/jira/browse/BIGTOP-2464) | Outdated descriptions in vagrant-puppet-vm/README.md |  Major | deployment, vm | Kengo Seki | Kengo Seki |
| [BIGTOP-2648](https://issues.apache.org/jira/browse/BIGTOP-2648) | Gradle 2.7 SSL Problems |  Major | build | Arnaud Launay | Arnaud Launay |
| [BIGTOP-2651](https://issues.apache.org/jira/browse/BIGTOP-2651) | Delete obsolete docker images and build files. |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2650](https://issues.apache.org/jira/browse/BIGTOP-2650) | Docker build should pull up to date packages |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2653](https://issues.apache.org/jira/browse/BIGTOP-2653) | upgrading to Spark 2.1 |  Major | build, spark | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2654](https://issues.apache.org/jira/browse/BIGTOP-2654) | spark 2.1 binaries need either SPARK\_HOME or non existing find-spark-home exe |  Major | . | Olaf Flebbe | Amir Sanjar |
| [BIGTOP-2656](https://issues.apache.org/jira/browse/BIGTOP-2656) | regression - spark 2.1 upgrade breaks rpm packaging |  Major | spark | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2652](https://issues.apache.org/jira/browse/BIGTOP-2652) | tajo rpm packaging seriously broken |  Major | build | Olaf Flebbe | YoungWoo Kim |
| [BIGTOP-2649](https://issues.apache.org/jira/browse/BIGTOP-2649) | Default Java8 blocks default debian jdk |  Major | build, debian | Arnaud Launay | Arnaud Launay |
| [BIGTOP-2662](https://issues.apache.org/jira/browse/BIGTOP-2662) | provisioner: Add support for JDK8 on debian |  Major | deployment | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2663](https://issues.apache.org/jira/browse/BIGTOP-2663) | puppet hadoop module: Consolidate memory resource settings |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2665](https://issues.apache.org/jira/browse/BIGTOP-2665) | Fix hue for opensuse |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2261](https://issues.apache.org/jira/browse/BIGTOP-2261) | adding bigtop/puppet:fedora-22 build support for ppc64le |  Major | build, docker, ppc64le | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2674](https://issues.apache.org/jira/browse/BIGTOP-2674) | docker-hadoop option -C does not work correctly any more |  Blocker | provisioner | Olaf Flebbe | Evans Ye |
| [BIGTOP-2676](https://issues.apache.org/jira/browse/BIGTOP-2676) | Smoke test fails on Spark 2 |  Major | spark, tests | Kengo Seki | Kengo Seki |
| [BIGTOP-2678](https://issues.apache.org/jira/browse/BIGTOP-2678) | Add hive-hbase role to install hive-hbase rpm |  Major | deployment | Zach York | Zach York |
| [BIGTOP-2603](https://issues.apache.org/jira/browse/BIGTOP-2603) | NN/RM charm should include a spark user/group |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2690](https://issues.apache.org/jira/browse/BIGTOP-2690) | gradlew toolchain fails trying to download Ant 1.9.8 |  Major | build | Felix Cheung | Felix Cheung |
| [BIGTOP-2692](https://issues.apache.org/jira/browse/BIGTOP-2692) | Flume init script should load only \'.conf\' extension files |  Major | . | Satoshi Iijima | Satoshi Iijima |
| [BIGTOP-2644](https://issues.apache.org/jira/browse/BIGTOP-2644) | CI compiles random greenplum source |  Major | build | Olaf Flebbe | Roman Shaposhnik |
| [BIGTOP-2693](https://issues.apache.org/jira/browse/BIGTOP-2693) | Update readme for build and configuring git repo for packages |  Minor | build, documentation | Felix Cheung | Felix Cheung |
| [BIGTOP-2689](https://issues.apache.org/jira/browse/BIGTOP-2689) | Upgrade Zeppelin to version 0.7 |  Major | build | Kengo Seki | YoungWoo Kim |
| [BIGTOP-2695](https://issues.apache.org/jira/browse/BIGTOP-2695) | arch.dot for bigpetstore-spark is outdated |  Minor | blueprints, documentation | Kengo Seki | Roman Shaposhnik |
| [BIGTOP-2401](https://issues.apache.org/jira/browse/BIGTOP-2401) | a commiter name is missing in the "Who we are" page |  Minor | website | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2673](https://issues.apache.org/jira/browse/BIGTOP-2673) | Need to back port HADOOP-11628 for JDK8 |  Blocker | deployment | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2231](https://issues.apache.org/jira/browse/BIGTOP-2231) | build.gradle carries one too many sets of repositories |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-976](https://issues.apache.org/jira/browse/BIGTOP-976) | package deployment tests are CDH specific: \_has\_ to be removed or fixed |  Critical | tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2710](https://issues.apache.org/jira/browse/BIGTOP-2710) | qfs debian build is breaking because it is confused about Maven home |  Major | build, debian | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2711](https://issues.apache.org/jira/browse/BIGTOP-2711) | fix rat problems |  Major | build | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2699](https://issues.apache.org/jira/browse/BIGTOP-2699) | Zeppeling CI build is broken |  Blocker | . | Konstantin Boudnik | Roman Shaposhnik |
| [BIGTOP-2707](https://issues.apache.org/jira/browse/BIGTOP-2707) | localhost is missing in docker provisioner instances |  Major | docker, provisioner | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2715](https://issues.apache.org/jira/browse/BIGTOP-2715) | Tiny typo in the README.md |  Major | documentation | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2047](https://issues.apache.org/jira/browse/BIGTOP-2047) | detect JAVA\_HOME for JDK8, remove obsolete detection code (JDK6/oracle JDK) |  Major | . | Olaf Flebbe | Roman Shaposhnik |
| [BIGTOP-2655](https://issues.apache.org/jira/browse/BIGTOP-2655) | Help spark find the native hadoop libs |  Major | deployment | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2664](https://issues.apache.org/jira/browse/BIGTOP-2664) | create provisioner test for trunk packages with jdk8 |  Major | . | Olaf Flebbe | Roman Shaposhnik |
| [BIGTOP-2708](https://issues.apache.org/jira/browse/BIGTOP-2708) | puppet code always installs hdfs by default |  Major | deployment | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2421](https://issues.apache.org/jira/browse/BIGTOP-2421) | Ignite RPM is broken: "missing" osgi package deps |  Blocker | deployment | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2721](https://issues.apache.org/jira/browse/BIGTOP-2721) | libsnappy reference path is not correct for hadoop/ubuntu16 build |  Major | build, ci | Jun He | Jun He |
| [BIGTOP-2450](https://issues.apache.org/jira/browse/BIGTOP-2450) | Adding Dockerfile to build slaves image for ubuntu-16.04-arm |  Major | build, docker | Amir Sanjar | Roman Shaposhnik |
| [BIGTOP-2448](https://issues.apache.org/jira/browse/BIGTOP-2448) | Adding Dockerfile to build puppet image for ubuntu-16.04-arm |  Major | build, docker | Amir Sanjar | Roman Shaposhnik |
| [BIGTOP-2509](https://issues.apache.org/jira/browse/BIGTOP-2509) | Path error in bigtop-packages/src/common/solr/tomcat-deployment.sh |  Major | solr | Lucas Alberto Santos | Roman Shaposhnik |
| [BIGTOP-2724](https://issues.apache.org/jira/browse/BIGTOP-2724) | putting a final nail in Java\'s 7 coffin |  Major | utils | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2725](https://issues.apache.org/jira/browse/BIGTOP-2725) | a few usability improvements to run\_itest.sh |  Major | tests | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2675](https://issues.apache.org/jira/browse/BIGTOP-2675) | [Puppet] Kafka can only be deployed on master node |  Major | deployment | Evans Ye | Evans Ye |
| [BIGTOP-2727](https://issues.apache.org/jira/browse/BIGTOP-2727) | fix deployment tasks |  Major | build | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2726](https://issues.apache.org/jira/browse/BIGTOP-2726) | Bump ambari version to 2.5 |  Major | . | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2669](https://issues.apache.org/jira/browse/BIGTOP-2669) | Create bigtop-1.2 repository |  Blocker | build, provisioner | Olaf Flebbe | Roman Shaposhnik |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2534](https://issues.apache.org/jira/browse/BIGTOP-2534) | Flume tests fail with java.lang.NoClassDefFoundError: org/apache/commons/io/Charsets |  Major | build | Divya sree | Olaf Flebbe |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2180](https://issues.apache.org/jira/browse/BIGTOP-2180) | Apache Tajo to bigtop: make tests |  Major | tests | Yeongeon KIM | Yeongeon KIM |
| [BIGTOP-2319](https://issues.apache.org/jira/browse/BIGTOP-2319) | Build initial smoke-tests distribution |  Major | build, tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2179](https://issues.apache.org/jira/browse/BIGTOP-2179) | Apache Tajo to bigtop: packaging as deb/rpm |  Major | debian, rpm, tests | Yeongeon KIM | Yeongeon KIM |
| [BIGTOP-2314](https://issues.apache.org/jira/browse/BIGTOP-2314) | Added deb and rpm package of Apache Apex to bigtop. |  Major | debian, rpm | Chinmay Kolhatkar | Chinmay Kolhatkar |
| [BIGTOP-2285](https://issues.apache.org/jira/browse/BIGTOP-2285) | Add qfs rpm and debian packaging code |  Major | debian, rpm, toolchain | Faraaz Sareshwala | Faraaz Sareshwala |
| [BIGTOP-2326](https://issues.apache.org/jira/browse/BIGTOP-2326) | Build salves need to have the toolchain run again to install qfs dependencies |  Major | toolchain | Faraaz Sareshwala | Faraaz Sareshwala |
| [BIGTOP-2316](https://issues.apache.org/jira/browse/BIGTOP-2316) | Add apex puppet receipes |  Major | deployment | Chinmay Kolhatkar | Chinmay Kolhatkar |
| [BIGTOP-2293](https://issues.apache.org/jira/browse/BIGTOP-2293) | Add puppet recipes for qfs components |  Major | . | Faraaz Sareshwala | Faraaz Sareshwala |
| [BIGTOP-2315](https://issues.apache.org/jira/browse/BIGTOP-2315) | Add smoke test for apex |  Major | tests | Chinmay Kolhatkar | Chinmay Kolhatkar |
| [BIGTOP-2317](https://issues.apache.org/jira/browse/BIGTOP-2317) | Add smoke tests for QFS |  Major | tests | Faraaz Sareshwala | Faraaz Sareshwala |
| [BIGTOP-2345](https://issues.apache.org/jira/browse/BIGTOP-2345) | Create Flink packaging |  Major | build, flink, general | Bhupendra Singh | Bhupendra Singh |
| [BIGTOP-2468](https://issues.apache.org/jira/browse/BIGTOP-2468) | Add Juju hadoop-processing bundle |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2469](https://issues.apache.org/jira/browse/BIGTOP-2469) | Add cloud-weather-report test plan |  Minor | tests | Cory Johns | Cory Johns |
| [BIGTOP-2357](https://issues.apache.org/jira/browse/BIGTOP-2357) | Create puppet recipes |  Major | flink, general | Bhupendra Singh | Robert Metzger |
| [BIGTOP-1624](https://issues.apache.org/jira/browse/BIGTOP-1624) | Add puppet recipes for deploying kafka |  Minor | deployment | Manikandan Narayanaswamy | Konstantinos Tsakalozos |
| [BIGTOP-2254](https://issues.apache.org/jira/browse/BIGTOP-2254) | Replace the Docker orchestration tool from Vagrant to Docker Compose |  Major | docker, provisioner | Evans Ye | Evans Ye |
| [BIGTOP-2312](https://issues.apache.org/jira/browse/BIGTOP-2312) | Add environment check |  Minor | docker, provisioner | Evans Ye | Evans Ye |
| [BIGTOP-2505](https://issues.apache.org/jira/browse/BIGTOP-2505) | Support systemd containers, clean up hiera.yaml handling, fix exec (-e) flag |  Major | provisioner | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-2518](https://issues.apache.org/jira/browse/BIGTOP-2518) | Add node to the build slave configuration |  Major | build | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2530](https://issues.apache.org/jira/browse/BIGTOP-2530) | Create Greenplum packages |  Major | debian, rpm | Kirill Morozov | Kirill Morozov |
| [BIGTOP-2531](https://issues.apache.org/jira/browse/BIGTOP-2531) | Create Greenplum deployment scripts |  Major | deployment | Kirill Morozov | Kirill Morozov |
| [BIGTOP-2532](https://issues.apache.org/jira/browse/BIGTOP-2532) | Create Greenplum test |  Major | tests | Kirill Morozov | Kirill Morozov |
| [BIGTOP-2614](https://issues.apache.org/jira/browse/BIGTOP-2614) | create bigtop/slave docker image for fedora 25 |  Major | build, docker | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2613](https://issues.apache.org/jira/browse/BIGTOP-2613) | create bigtop/puppet docker image or fedora 25 |  Major | build, docker | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2620](https://issues.apache.org/jira/browse/BIGTOP-2620) | Bump oozie version to 4.3.0 |  Major | general | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2624](https://issues.apache.org/jira/browse/BIGTOP-2624) | Bump Phoenix version to 4.9.0 |  Major | general | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2526](https://issues.apache.org/jira/browse/BIGTOP-2526) | Bump flink version to 1.1.3 |  Major | flink, general | David Moravek | Dennis Huo |
| [BIGTOP-2625](https://issues.apache.org/jira/browse/BIGTOP-2625) | update crunch for JAVA 8 |  Major | build | Amir Sanjar | Olaf Flebbe |
| [BIGTOP-2627](https://issues.apache.org/jira/browse/BIGTOP-2627) | Kite 1.1.0 build fails when JAVA 8 is used |  Major | build | Amir Sanjar | Olaf Flebbe |
| [BIGTOP-2657](https://issues.apache.org/jira/browse/BIGTOP-2657) | Upgrade to Hue 3.11.0 |  Major | hue | Zach York | Zach York |
| [BIGTOP-2626](https://issues.apache.org/jira/browse/BIGTOP-2626) | HBase build fails when JAVA 8 is used |  Major | build | Amir Sanjar |  |
| [BIGTOP-2646](https://issues.apache.org/jira/browse/BIGTOP-2646) | Move Vagrant Provisioner from bigtop-deploy/vm to provisioner directory |  Major | docker, provisioner | Evans Ye | Evans Ye |
| [BIGTOP-2668](https://issues.apache.org/jira/browse/BIGTOP-2668) | Polish and update Docker Provisioner configurations |  Minor | docker, provisioner | Evans Ye | Evans Ye |
| [BIGTOP-2491](https://issues.apache.org/jira/browse/BIGTOP-2491) | Update provisioner/docker-hadoop.sh to bind with provisioner/utils |  Minor | docker, provisioner | Evans Ye | Evans Ye |
| [BIGTOP-2647](https://issues.apache.org/jira/browse/BIGTOP-2647) | Clean up code under bigtop-deploy/vm after everything moved to provisioner directory |  Minor | provisioner | Evans Ye | Evans Ye |
| [BIGTOP-2224](https://issues.apache.org/jira/browse/BIGTOP-2224) | Let\'s bump groovy version for smokes to 2.4.10 |  Major | tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2701](https://issues.apache.org/jira/browse/BIGTOP-2701) | Update hcfs tests so it can work in both casers where fs.trash.interval is disabled or enabled. |  Major | tests | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-1406](https://issues.apache.org/jira/browse/BIGTOP-1406) | package Ambari in Bigtop |  Major | debian, rpm | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2702](https://issues.apache.org/jira/browse/BIGTOP-2702) | Fix Sandbox creation script |  Major | provisioner | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2700](https://issues.apache.org/jira/browse/BIGTOP-2700) | Adding tests to test the doas feature of httpfs |  Major | tests | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2600](https://issues.apache.org/jira/browse/BIGTOP-2600) | Bump Groovy version to 2.4.10 |  Major | general | Konstantin Boudnik | Roman Shaposhnik |
| [BIGTOP-2492](https://issues.apache.org/jira/browse/BIGTOP-2492) | Split flink debian packaging |  Major | debian, flink | David Moravek | David Moravek |
| [BIGTOP-2704](https://issues.apache.org/jira/browse/BIGTOP-2704) | Include ODPi runtime tests option into the battery of smoke tests |  Major | tests | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2705](https://issues.apache.org/jira/browse/BIGTOP-2705) | provide puppet deployment code for Ambari |  Major | deployment | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2601](https://issues.apache.org/jira/browse/BIGTOP-2601) | Bump Ignite to 1.9 |  Major | general | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1408](https://issues.apache.org/jira/browse/BIGTOP-1408) | create basic end-to-end tests for Ambari integration |  Major | tests | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-2672](https://issues.apache.org/jira/browse/BIGTOP-2672) | Update gradle wrapper for Docker Provisioner |  Major | docker | Evans Ye | Evans Ye |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2680](https://issues.apache.org/jira/browse/BIGTOP-2680) | Update kafka to 0.10.1.1 |  Major | build | Ryohei Asano | Ryohei Asano |
| [BIGTOP-2289](https://issues.apache.org/jira/browse/BIGTOP-2289) | Set master version to 1.2.0-SNAPSHOT |  Major | general | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2335](https://issues.apache.org/jira/browse/BIGTOP-2335) | ci link should use https:// authority |  Major | website | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2334](https://issues.apache.org/jira/browse/BIGTOP-2334) | Update latest release link on the website |  Major | website | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2368](https://issues.apache.org/jira/browse/BIGTOP-2368) | OpenStack config bigtop repo-url changes. |  Minor | provisioner | Bhupendra Singh | Bhupendra Singh |
| [BIGTOP-2371](https://issues.apache.org/jira/browse/BIGTOP-2371) | Add Oozie to gradle smoke tests |  Major | tests | Dasha Boudnik | Dasha Boudnik |
| [BIGTOP-2415](https://issues.apache.org/jira/browse/BIGTOP-2415) | readme spelling error |  Trivial | documentation | Artem Ervits | Artem Ervits |
| [BIGTOP-2414](https://issues.apache.org/jira/browse/BIGTOP-2414) | Rename Tachyon to Alluxio |  Major | . | Jonathan Kelly | Jonathan Kelly |
| [BIGTOP-2456](https://issues.apache.org/jira/browse/BIGTOP-2456) | Update Apache Apex version to 3.4.0 |  Major | build | Chinmay Kolhatkar | Chinmay Kolhatkar |
| [BIGTOP-2500](https://issues.apache.org/jira/browse/BIGTOP-2500) | Remove hadoop jars from TEZ\_HOME/lib and create appropriate symlinks |  Major | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2538](https://issues.apache.org/jira/browse/BIGTOP-2538) | Bump version of Solr to 4.10.4 |  Minor | build, solr | Andrew Kuchling | Andrew Kuchling |
| [BIGTOP-2550](https://issues.apache.org/jira/browse/BIGTOP-2550) | Update juju hadoop bundle for Juju 2.0 and Xenial |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2497](https://issues.apache.org/jira/browse/BIGTOP-2497) | Upgrade Apache Phoenix to 4.8.1 |  Major | . | YoungWoo Kim | Kengo Seki |
| [BIGTOP-2568](https://issues.apache.org/jira/browse/BIGTOP-2568) | Upgrade Kafka version to 0.9.0.1 |  Major | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2567](https://issues.apache.org/jira/browse/BIGTOP-2567) | Upgrade Flume version to 1.7.0 |  Major | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-2592](https://issues.apache.org/jira/browse/BIGTOP-2592) | Upgrade to Spark 2.0.2 |  Major | spark | Jonathan Kelly | Jonathan Kelly |
| [BIGTOP-2622](https://issues.apache.org/jira/browse/BIGTOP-2622) | Add Kengo Seki to team list |  Trivial | website | Kengo Seki | Kengo Seki |
| [BIGTOP-2629](https://issues.apache.org/jira/browse/BIGTOP-2629) | Add Jonathan Kelly to team list |  Trivial | website | Jonathan Kelly | Jonathan Kelly |
| [BIGTOP-2687](https://issues.apache.org/jira/browse/BIGTOP-2687) | Remove /usr/share/java/\*.jar from Sqoop2 catalina.properties |  Major | . | Anna Szonyi |  |
| [BIGTOP-2670](https://issues.apache.org/jira/browse/BIGTOP-2670) | Bump up Apache Apex version to 3.5.0 |  Major | build | Chinmay Kolhatkar | Chinmay Kolhatkar |
| [BIGTOP-2703](https://issues.apache.org/jira/browse/BIGTOP-2703) | refresh juju charms/bundles with metric and CI support |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2722](https://issues.apache.org/jira/browse/BIGTOP-2722) | Remove workaround allowing build by root in Tez |  Major | build, tez | Evans Ye | Evans Ye |


