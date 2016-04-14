
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

## Release 1.2.0 - Unreleased (as of 2016-04-14)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-1641](https://issues.apache.org/jira/browse/BIGTOP-1641) | Add packaging for Apache Tajo |  Major | debian, rpm, tests | YoungWoo Kim | Yeongeon KIM |
| [BIGTOP-2296](https://issues.apache.org/jira/browse/BIGTOP-2296) | Provide a way to build Docker container with functional stack |  Major | docker, general | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2339](https://issues.apache.org/jira/browse/BIGTOP-2339) | add centos-7 to the provisioiner matrix |  Major | provisioner | Konstantin Boudnik | Konstantin Boudnik |


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


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


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


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2289](https://issues.apache.org/jira/browse/BIGTOP-2289) | Set master version to 1.2.0-SNAPSHOT |  Major | general | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2335](https://issues.apache.org/jira/browse/BIGTOP-2335) | ci link should use https:// authority |  Major | website | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2334](https://issues.apache.org/jira/browse/BIGTOP-2334) | Update latest release link on the website |  Major | website | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-2368](https://issues.apache.org/jira/browse/BIGTOP-2368) | OpenStack config bigtop repo-url changes. |  Minor | provisioner | Bhupendra Singh | Bhupendra Singh |
| [BIGTOP-2371](https://issues.apache.org/jira/browse/BIGTOP-2371) | Add Oozie to gradle smoke tests |  Major | tests | Dasha Boudnik | Dasha Boudnik |


