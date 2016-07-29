
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

## Release 1.2.0 - Unreleased (as of 2016-07-29)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-1641](https://issues.apache.org/jira/browse/BIGTOP-1641) | Add packaging for Apache Tajo |  Major | debian, rpm, tests | YoungWoo Kim | Yeongeon KIM |
| [BIGTOP-2296](https://issues.apache.org/jira/browse/BIGTOP-2296) | Provide a way to build Docker container with functional stack |  Major | docker, general | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2339](https://issues.apache.org/jira/browse/BIGTOP-2339) | add centos-7 to the provisioiner matrix |  Major | provisioner | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2435](https://issues.apache.org/jira/browse/BIGTOP-2435) | Add Juju charms for hadoop component |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2452](https://issues.apache.org/jira/browse/BIGTOP-2452) | Adding Dockerfile to build deploy image for ubuntu-16.04-x86 |  Major | build, deployment, docker | Amir Sanjar | Amir Sanjar |


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


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
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
| [BIGTOP-2350](https://issues.apache.org/jira/browse/BIGTOP-2350) | HCatalog WebHCat server's default file incorrectly specifies HCAT\_PREFIX AND HADOOP\_PREFIX |  Minor | hive | Rob Leidle | Rob Leidle |
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
| [BIGTOP-2441](https://issues.apache.org/jira/browse/BIGTOP-2441) | spark smoke test doesn't work relying on yarn-client submittion |  Major | tests | Konstantin Boudnik | Konstantin Boudnik |
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


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2289](https://issues.apache.org/jira/browse/BIGTOP-2289) | Set master version to 1.2.0-SNAPSHOT |  Major | general | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2335](https://issues.apache.org/jira/browse/BIGTOP-2335) | ci link should use https:// authority |  Major | website | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2334](https://issues.apache.org/jira/browse/BIGTOP-2334) | Update latest release link on the website |  Major | website | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2368](https://issues.apache.org/jira/browse/BIGTOP-2368) | OpenStack config bigtop repo-url changes. |  Minor | provisioner | Bhupendra Singh | Bhupendra Singh |
| [BIGTOP-2371](https://issues.apache.org/jira/browse/BIGTOP-2371) | Add Oozie to gradle smoke tests |  Major | tests | Dasha Boudnik | Dasha Boudnik |
| [BIGTOP-2415](https://issues.apache.org/jira/browse/BIGTOP-2415) | readme spelling error |  Trivial | documentation | Artem Ervits | Artem Ervits |
| [BIGTOP-2414](https://issues.apache.org/jira/browse/BIGTOP-2414) | Rename Tachyon to Alluxio |  Major | . | Jonathan Kelly | Jonathan Kelly |
| [BIGTOP-2456](https://issues.apache.org/jira/browse/BIGTOP-2456) | Update Apache Apex version to 3.4.0 |  Major | build | Chinmay Kolhatkar | Chinmay Kolhatkar |


