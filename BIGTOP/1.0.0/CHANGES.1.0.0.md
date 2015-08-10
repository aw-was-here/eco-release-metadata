
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

## Release 1.0.0 - Unreleased (as of 2015-08-10)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-1931](https://issues.apache.org/jira/browse/BIGTOP-1931) | Add multinomial product purchasing model to BPS Data Generator |  Major | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1918](https://issues.apache.org/jira/browse/BIGTOP-1918) | Add product enumeration to BPS data generator |  Major | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1806](https://issues.apache.org/jira/browse/BIGTOP-1806) | Integrate Apache Ignite (incubating) with BigTop |  Critical | build, debian, rpm | Ivan Veselovsky | Ivan Veselovsky |
| [BIGTOP-1744](https://issues.apache.org/jira/browse/BIGTOP-1744) | Add BigPigPetstore File and REST Load Generation. |  Major | blueprints | jay vyas | jay vyas |
| [BIGTOP-1716](https://issues.apache.org/jira/browse/BIGTOP-1716) | Define SCALA\_VERSION in bigtop.bom |  Major | build, spark | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1552](https://issues.apache.org/jira/browse/BIGTOP-1552) | Add support for AmazonLinux to bigtop-deploy/puppet |  Minor | deployment | Rob Leidle | Rob Leidle |
| [BIGTOP-1480](https://issues.apache.org/jira/browse/BIGTOP-1480) | Define BOM for 1.0 release of Bigtop |  Blocker | general | Roman Shaposhnik | Konstantin Boudnik |
| [BIGTOP-1448](https://issues.apache.org/jira/browse/BIGTOP-1448) | Include zookeeper C library in bigtop |  Major | general | Guo Ruijing | Sean Mackrory |
| [BIGTOP-1417](https://issues.apache.org/jira/browse/BIGTOP-1417) | Dockerize the puppetized vagrant deployer |  Minor | deployment | Evans Ye |  |
| [BIGTOP-989](https://issues.apache.org/jira/browse/BIGTOP-989) | Add Apache Kafka  to Apache Bigtop |  Major | general | Diederik van Liere | Manikandan Narayanaswamy |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-1939](https://issues.apache.org/jira/browse/BIGTOP-1939) | Enable basic hdfs-nfs gateway configuration |  Trivial | deployment | Alastair McKinley |  |
| [BIGTOP-1932](https://issues.apache.org/jira/browse/BIGTOP-1932) | [BigPetStore] Add larger product collection |  Major | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1923](https://issues.apache.org/jira/browse/BIGTOP-1923) | Bump Ignite to 1.2 with major fixes |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1919](https://issues.apache.org/jira/browse/BIGTOP-1919) | Remove fixConditional methods in BPS data generator |  Minor | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1862](https://issues.apache.org/jira/browse/BIGTOP-1862) | Add release download link to the front page of the website |  Major | website | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1851](https://issues.apache.org/jira/browse/BIGTOP-1851) | Upgrade to HBase 0.98.12 |  Major | hbase | Andrew Purtell | Andrew Purtell |
| [BIGTOP-1836](https://issues.apache.org/jira/browse/BIGTOP-1836) | Better UX for Docker provisioner by integrating it into gradle |  Major | deployment | Evans Ye | Evans Ye |
| [BIGTOP-1829](https://issues.apache.org/jira/browse/BIGTOP-1829) | Tachyon configuration files should reside in /etc/tachyon/conf instead of /etc/tachyon |  Major | build, deployment | Evans Ye | Evans Ye |
| [BIGTOP-1809](https://issues.apache.org/jira/browse/BIGTOP-1809) | Remove gridgain-hadoop component once ignite-hadoop gets added |  Critical | build | Ivan Veselovsky | Ivan Veselovsky |
| [BIGTOP-1803](https://issues.apache.org/jira/browse/BIGTOP-1803) | Overide Vagrant configurations from environment variables |  Trivial | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1801](https://issues.apache.org/jira/browse/BIGTOP-1801) | Generalize subst pattern matching for BOM file |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1794](https://issues.apache.org/jira/browse/BIGTOP-1794) | Update README for bigtop\_toolchain |  Minor | documentation | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1791](https://issues.apache.org/jira/browse/BIGTOP-1791) | Set group of /user/hue to "hue" in HDFS |  Trivial | deployment, hue | Peter Slawski | Peter Slawski |
| [BIGTOP-1787](https://issues.apache.org/jira/browse/BIGTOP-1787) | puppet: Update hue.ini to match Hue 3.7.1 template |  Major | deployment, hue | Peter Slawski | Peter Slawski |
| [BIGTOP-1783](https://issues.apache.org/jira/browse/BIGTOP-1783) | Import BigPetStore Data Generator into BigTop |  Major | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1771](https://issues.apache.org/jira/browse/BIGTOP-1771) | Let the user specify what components to be tested when running smoke-tests by Docker/VM provisioner |  Minor | vm | Evans Ye | Evans Ye |
| [BIGTOP-1770](https://issues.apache.org/jira/browse/BIGTOP-1770) | Let the user specify which JDK package to be installed in vagrantconfig.yaml |  Minor | vm | Evans Ye | Evans Ye |
| [BIGTOP-1743](https://issues.apache.org/jira/browse/BIGTOP-1743) | Add RJ Nowling as committer to website |  Trivial | website | RJ Nowling | RJ Nowling |
| [BIGTOP-1742](https://issues.apache.org/jira/browse/BIGTOP-1742) | Add ywkim as a maintainer for Apache Hive, Spark, Sqoop\* and Phoenix |  Trivial | general | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1741](https://issues.apache.org/jira/browse/BIGTOP-1741) | Upgrade to Apache Phoenix 4.3.1 |  Blocker | debian, rpm | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1721](https://issues.apache.org/jira/browse/BIGTOP-1721) | Remove unnecessary files from Sqoop package |  Minor | debian, rpm | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1718](https://issues.apache.org/jira/browse/BIGTOP-1718) | add facility for printing out BOM in json format |  Minor | general | Rob Leidle | Rob Leidle |
| [BIGTOP-1709](https://issues.apache.org/jira/browse/BIGTOP-1709) | Enable "hadoop26" profile for Apache Tez |  Minor | build, debian, rpm | YoungWoo Kim | Olaf Flebbe |
| [BIGTOP-1705](https://issues.apache.org/jira/browse/BIGTOP-1705) | puppet: Allow configuring which hue apps to install |  Major | deployment, hue | Peter Slawski | Peter Slawski |
| [BIGTOP-1700](https://issues.apache.org/jira/browse/BIGTOP-1700) | Package YARN Timeline Server service for Apache Hadoop |  Trivial | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1698](https://issues.apache.org/jira/browse/BIGTOP-1698) | Following BIGTOP-1697 improve README entry on toolchain setup |  Major | documentation | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1697](https://issues.apache.org/jira/browse/BIGTOP-1697) | Bootstrap: hook up toolchain into gradle build |  Critical | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1696](https://issues.apache.org/jira/browse/BIGTOP-1696) | Provide build command to show BOM list |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1693](https://issues.apache.org/jira/browse/BIGTOP-1693) | Puppet stdlib should be automatically installed by toolchain |  Major | deployment | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1692](https://issues.apache.org/jira/browse/BIGTOP-1692) | hieradata/site.yaml is missing gridgain-hadoop component |  Major | deployment | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1691](https://issues.apache.org/jira/browse/BIGTOP-1691) | Heira site.yaml template needs to have repo uri |  Major | deployment | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1686](https://issues.apache.org/jira/browse/BIGTOP-1686) | puppet hadoop/mapred: Update and clean mapred template and namespace |  Major | deployment | Michael Weiser | Michael Weiser |
| [BIGTOP-1685](https://issues.apache.org/jira/browse/BIGTOP-1685) | puppet hadoop: Remove useless use of explicit hiera lookup |  Major | deployment | Michael Weiser | Michael Weiser |
| [BIGTOP-1684](https://issues.apache.org/jira/browse/BIGTOP-1684) | puppet hadoop/yarn: Make container executor configurable |  Major | deployment | Michael Weiser | Michael Weiser |
| [BIGTOP-1683](https://issues.apache.org/jira/browse/BIGTOP-1683) | puppet hadoop-env.sh: Add option to configure tez environment |  Major | deployment | Michael Weiser | Olaf Flebbe |
| [BIGTOP-1681](https://issues.apache.org/jira/browse/BIGTOP-1681) | [BigPetStore] Clean up BPS SparkSQL analytics module, add new queries |  Major | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1676](https://issues.apache.org/jira/browse/BIGTOP-1676) | Puppet: add deb repo auto deploy |  Major | debian, deployment | Evans Ye | Evans Ye |
| [BIGTOP-1675](https://issues.apache.org/jira/browse/BIGTOP-1675) | Puppet: remove wheel group setting for bigtop\_real\_users |  Minor | debian, deployment | Evans Ye | Evans Ye |
| [BIGTOP-1674](https://issues.apache.org/jira/browse/BIGTOP-1674) | Account for BPS simulation "burn-in" time |  Minor | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1670](https://issues.apache.org/jira/browse/BIGTOP-1670) | puppet: Support Kerberos authentication on Hadoop component web GUIs |  Major | deployment | Michael Weiser | Michael Weiser |
| [BIGTOP-1667](https://issues.apache.org/jira/browse/BIGTOP-1667) | Clean up and simplify the install phase for Apache Spark |  Minor | build, debian, rpm | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1659](https://issues.apache.org/jira/browse/BIGTOP-1659) | gridgain-hadoop packages need to provide unversioned softlinks for accelerator jar files |  Major | debian, rpm | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1653](https://issues.apache.org/jira/browse/BIGTOP-1653) | Add queries for customer, state, and product statistics w/ d3 friendly JSON output to analytics phase. |  Major | blueprints | jay vyas | jay vyas |
| [BIGTOP-1651](https://issues.apache.org/jira/browse/BIGTOP-1651) | puppet: Format namenode and zkfc in noninteractive mode |  Major | deployment | Michael Weiser | Michael Weiser |
| [BIGTOP-1645](https://issues.apache.org/jira/browse/BIGTOP-1645) | Add subpackages for spark history server and thrift server |  Minor | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1640](https://issues.apache.org/jira/browse/BIGTOP-1640) | Add missing files for Apache Spark |  Major | spark | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1634](https://issues.apache.org/jira/browse/BIGTOP-1634) | Puppet class parameter and hiera conversion |  Major | deployment | Michael Weiser | Michael Weiser |
| [BIGTOP-1627](https://issues.apache.org/jira/browse/BIGTOP-1627) | Move enable\_local\_yum implementation to bigtop-deploy/utils/setup-env.sh to share with Docker provisioner |  Minor | . | Evans Ye | Evans Ye |
| [BIGTOP-1621](https://issues.apache.org/jira/browse/BIGTOP-1621) | Migrate itest to gradle |  Major | tests | jay vyas | Konstantin Boudnik |
| [BIGTOP-1614](https://issues.apache.org/jira/browse/BIGTOP-1614) | Add .gitignore file for docker-puppet |  Trivial | vm | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1613](https://issues.apache.org/jira/browse/BIGTOP-1613) | Add .gitignore for vagrant-puppet |  Trivial | vm | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1612](https://issues.apache.org/jira/browse/BIGTOP-1612) | Update README for smoke-tests |  Trivial | tests | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1603](https://issues.apache.org/jira/browse/BIGTOP-1603) | Rename docker-puppet and vagrant-puppet to better indicate its function and difference |  Major | deployment | Evans Ye | Evans Ye |
| [BIGTOP-1601](https://issues.apache.org/jira/browse/BIGTOP-1601) | cleanup whitespaces across test-artifacts |  Major | tests | jay vyas | Dasha Boudnik |
| [BIGTOP-1600](https://issues.apache.org/jira/browse/BIGTOP-1600) | Improve front page content of website |  Major | website | Dasha Boudnik | Dasha Boudnik |
| [BIGTOP-1593](https://issues.apache.org/jira/browse/BIGTOP-1593) | Fix types in FailureVars |  Major | tests | Dasha Boudnik | Dasha Boudnik |
| [BIGTOP-1591](https://issues.apache.org/jira/browse/BIGTOP-1591) | JarContentTest is failing on JDK7 |  Major | tests | Dasha Boudnik | Dasha Boudnik |
| [BIGTOP-1590](https://issues.apache.org/jira/browse/BIGTOP-1590) | Add a functionality to run integration tests for itest |  Major | tests | Dasha Boudnik | Dasha Boudnik |
| [BIGTOP-1583](https://issues.apache.org/jira/browse/BIGTOP-1583) | update the default yum repo in puppet site.pp |  Minor | deployment | Evans Ye | Evans Ye |
| [BIGTOP-1581](https://issues.apache.org/jira/browse/BIGTOP-1581) | Allow multiple Flume agents to be executed as a service using Bigtop init.d script |  Major | Init scripts | Biju Nair | Biju Nair |
| [BIGTOP-1578](https://issues.apache.org/jira/browse/BIGTOP-1578) | Refactor vagrant-puppet provisioner to have its configurations all come from yaml |  Minor | deployment | Evans Ye |  |
| [BIGTOP-1576](https://issues.apache.org/jira/browse/BIGTOP-1576) | Add Vagrant installation to bigtop\_toolchain |  Minor | build | Evans Ye | Evans Ye |
| [BIGTOP-1569](https://issues.apache.org/jira/browse/BIGTOP-1569) | provide alias targets for building packages native to the OS |  Major | build | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-1559](https://issues.apache.org/jira/browse/BIGTOP-1559) | Tests are failing in Apache CI build |  Major | tests | Konstantin Boudnik | Dasha Boudnik |
| [BIGTOP-1558](https://issues.apache.org/jira/browse/BIGTOP-1558) | Make gradle easier to navigate |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1557](https://issues.apache.org/jira/browse/BIGTOP-1557) | website misses ci and announce mailing lists info |  Major | website | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1555](https://issues.apache.org/jira/browse/BIGTOP-1555) | remove mapred-app from docs or code snippet (post-BIGTOP-1522), cleanup vagrant-puppet to core components. |  Minor | deployment | Evans Ye | Evans Ye |
| [BIGTOP-1545](https://issues.apache.org/jira/browse/BIGTOP-1545) | [BigPetStore] Bump version of BPS data generator library to 0.2.1 |  Major | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1527](https://issues.apache.org/jira/browse/BIGTOP-1527) | Allow to fetch package's source code from Git |  Major | general | Ivan Orlov | Ivan Orlov |
| [BIGTOP-1517](https://issues.apache.org/jira/browse/BIGTOP-1517) | refactor vagrant provisioners to be configurable by yaml file |  Minor | deployment, vm | Evans Ye | Evans Ye |
| [BIGTOP-1510](https://issues.apache.org/jira/browse/BIGTOP-1510) | Minor README update aboud bigtop-deploy |  Major | documentation | jay vyas | jay vyas |
| [BIGTOP-1501](https://issues.apache.org/jira/browse/BIGTOP-1501) | come up with a way to use Jenkins plugins/Groovy console to create jobs |  Major | build | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-1498](https://issues.apache.org/jira/browse/BIGTOP-1498) | Add RC Testing to Docker based Bigtop provisioner |  Minor | deployment | Evans Ye | Evans Ye |
| [BIGTOP-1495](https://issues.apache.org/jira/browse/BIGTOP-1495) | Remove make build system |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1489](https://issues.apache.org/jira/browse/BIGTOP-1489) | move the tomcat\_watchdog code out of install\_solr.sh into a separate file in bigtop-utils in order to facilitate reusability |  Major | Init scripts | Rajendra | Rajendra |
| [BIGTOP-1481](https://issues.apache.org/jira/browse/BIGTOP-1481) | Log files are cluttered with messages from tar |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1478](https://issues.apache.org/jira/browse/BIGTOP-1478) | Start tomcat watchdog as part of solr init scripts |  Major | solr | Rajendra | Rajendra |
| [BIGTOP-1450](https://issues.apache.org/jira/browse/BIGTOP-1450) | Eliminate broken hive test artifacts in favor of smoke-tests. |  Major | tests | jay vyas | jay vyas |
| [BIGTOP-1449](https://issues.apache.org/jira/browse/BIGTOP-1449) | Add RC Testing support to vagrant recipe |  Major | vm | jay vyas | jay vyas |
| [BIGTOP-1423](https://issues.apache.org/jira/browse/BIGTOP-1423) | Add Groovy installation to the bigtop\_toolchain |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1414](https://issues.apache.org/jira/browse/BIGTOP-1414) | Add Apache Spark implementation to BigPetStore |  Major | blueprints | jay vyas | jay vyas |
| [BIGTOP-1388](https://issues.apache.org/jira/browse/BIGTOP-1388) | Use cluster failure tests during other tests with command line parametrization |  Major | tests | Dawson Choong | Dawson Choong |
| [BIGTOP-1366](https://issues.apache.org/jira/browse/BIGTOP-1366) | Updated, Richer Model for Generating Data for BigPetStore |  Minor | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1325](https://issues.apache.org/jira/browse/BIGTOP-1325) | Update TestHDFSCLI to include tests from upstream |  Major | tests | Dasha Boudnik | Dasha Boudnik |
| [BIGTOP-1301](https://issues.apache.org/jira/browse/BIGTOP-1301) | Groovy 2.3.0 is out! Let's bundle it into the stack |  Major | general | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1275](https://issues.apache.org/jira/browse/BIGTOP-1275) | BigPetStore: Add all 50 states |  Major | blueprints | jay vyas | RJ Nowling |
| [BIGTOP-1235](https://issues.apache.org/jira/browse/BIGTOP-1235) | Speed-up init-hdfs.sh for complete HCFS compliant provisioning |  Critical | deployment, general | jay vyas | Konstantin Boudnik |
| [BIGTOP-1204](https://issues.apache.org/jira/browse/BIGTOP-1204) | Add support for AmazonLinux |  Major | deployment | Rob Leidle | Roman Shaposhnik |
| [BIGTOP-1047](https://issues.apache.org/jira/browse/BIGTOP-1047) | Support Puppet 3.x |  Major | deployment | Andrey Klochkov | Evans Ye |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-1958](https://issues.apache.org/jira/browse/BIGTOP-1958) | Upgrade default repositories and docker images to 1.0 |  Blocker | deployment | Evans Ye | Evans Ye |
| [BIGTOP-1951](https://issues.apache.org/jira/browse/BIGTOP-1951) | Fix licenses in the source files |  Blocker | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1950](https://issues.apache.org/jira/browse/BIGTOP-1950) | Upgrade maven-assembly plugin: StackOverFlowException is thrown |  Blocker | build, tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1949](https://issues.apache.org/jira/browse/BIGTOP-1949) | Sqoop 1.4.5 artifacts aren't getting resolved in the release... |  Blocker | build, tests | Konstantin Boudnik | YoungWoo Kim |
| [BIGTOP-1946](https://issues.apache.org/jira/browse/BIGTOP-1946) | Missing ASL header in some of iTest files |  Blocker | tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1938](https://issues.apache.org/jira/browse/BIGTOP-1938) | kafka packages /usr/bin on RPM |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1937](https://issues.apache.org/jira/browse/BIGTOP-1937) | redhat-lsb is required by kafka daemon |  Major | build | Evans Ye | Evans Ye |
| [BIGTOP-1902](https://issues.apache.org/jira/browse/BIGTOP-1902) | typo in bigtop-deploy/vm/vagrant-puppet-vm/vagrantconfig.yaml |  Trivial | deployment | Minying Lu | Olaf Flebbe |
| [BIGTOP-1896](https://issues.apache.org/jira/browse/BIGTOP-1896) | bigtop\_toolchain broken bei ant update |  Major | build | Olaf Flebbe | Evans Ye |
| [BIGTOP-1893](https://issues.apache.org/jira/browse/BIGTOP-1893) | Compilation of hadoop-yarn-client failed |  Major | build | Martin Bukatovic | Olaf Flebbe |
| [BIGTOP-1886](https://issues.apache.org/jira/browse/BIGTOP-1886) | Kafka server can not create a log-cleaner.log file |  Minor | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1879](https://issues.apache.org/jira/browse/BIGTOP-1879) | vagrant-puppet-vm is broken |  Major | vm | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1876](https://issues.apache.org/jira/browse/BIGTOP-1876) | Update puppet recipes for Sqoop2 |  Major | deployment | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1875](https://issues.apache.org/jira/browse/BIGTOP-1875) | Oozie build failed due to Codehaus repository is out of service |  Major | build | Evans Ye | Evans Ye |
| [BIGTOP-1874](https://issues.apache.org/jira/browse/BIGTOP-1874) | HBase build failed due to Codehaus repository is out of service |  Major | hbase | Evans Ye | Evans Ye |
| [BIGTOP-1872](https://issues.apache.org/jira/browse/BIGTOP-1872) | Improve HUE puppet recipies |  Blocker | deployment | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1870](https://issues.apache.org/jira/browse/BIGTOP-1870) | Latest version of Puppet::Apt doesn't work for our deployment recipes |  Major | deployment | Konstantin Boudnik | Evans Ye |
| [BIGTOP-1869](https://issues.apache.org/jira/browse/BIGTOP-1869) | Hue 3.8.1 refinements |  Blocker | hue | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1868](https://issues.apache.org/jira/browse/BIGTOP-1868) | Address the custom 'clean' warning |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1867](https://issues.apache.org/jira/browse/BIGTOP-1867) | Upgrade Gradle version to 2.4 |  Major | build, toolchain | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1866](https://issues.apache.org/jira/browse/BIGTOP-1866) | openssl-devel is required by hue RPM package |  Major | build | Evans Ye | Evans Ye |
| [BIGTOP-1860](https://issues.apache.org/jira/browse/BIGTOP-1860) | ignite-hadoop release URL should point to apache dist server, not a mirror |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1859](https://issues.apache.org/jira/browse/BIGTOP-1859) | Unable to build Hue packages on Amazon Linux |  Major | hue | Andrew Purtell | Andrew Purtell |
| [BIGTOP-1857](https://issues.apache.org/jira/browse/BIGTOP-1857) | Support yarn-built-in proxy |  Major | deployment | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1855](https://issues.apache.org/jira/browse/BIGTOP-1855) | Remove Obsolete Jobtracker settings from mapred-site.xml |  Major | deployment | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1853](https://issues.apache.org/jira/browse/BIGTOP-1853) | Phoenix build does not properly override Hadoop version property |  Minor | general | Rob Leidle | Rob Leidle |
| [BIGTOP-1850](https://issues.apache.org/jira/browse/BIGTOP-1850) | Update Hue to 3.8 |  Major | hue | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1849](https://issues.apache.org/jira/browse/BIGTOP-1849) | toolchain can not set java home correctly in CentOS 7 |  Critical | build | Evans Ye | Evans Ye |
| [BIGTOP-1848](https://issues.apache.org/jira/browse/BIGTOP-1848) | spark deb packages broken |  Blocker | spark | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1845](https://issues.apache.org/jira/browse/BIGTOP-1845) | toolchain can not drop bigtop.sh in fedora because of puppet syntax error |  Critical | . | Evans Ye | Evans Ye |
| [BIGTOP-1841](https://issues.apache.org/jira/browse/BIGTOP-1841) | toolchain can not set java correctly in fedora |  Critical | . | Evans Ye | Evans Ye |
| [BIGTOP-1840](https://issues.apache.org/jira/browse/BIGTOP-1840) | datafu does not pick up pig dependency from local repository |  Major | build | Rob Leidle | Rob Leidle |
| [BIGTOP-1839](https://issues.apache.org/jira/browse/BIGTOP-1839) | Building RPM for Zookeeper 3.4.6 is broken |  Trivial | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1835](https://issues.apache.org/jira/browse/BIGTOP-1835) | Update project RDF file |  Major | website | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1833](https://issues.apache.org/jira/browse/BIGTOP-1833) | Bump Ignite to 1.1.0 |  Blocker | build | Olaf Flebbe | Konstantin Boudnik |
| [BIGTOP-1832](https://issues.apache.org/jira/browse/BIGTOP-1832) | hdfs-site.xml: update shortcut reader and remove obsolete shortcut reader users |  Major | deployment | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1830](https://issues.apache.org/jira/browse/BIGTOP-1830) | Move apache-forrest installation from  bigtop\_toolchain to pig compile |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1828](https://issues.apache.org/jira/browse/BIGTOP-1828) | Puppet: Tachyon does not get formatted before tachyon daemons are started up |  Major | deployment | Evans Ye | Evans Ye |
| [BIGTOP-1827](https://issues.apache.org/jira/browse/BIGTOP-1827) | Tachyon package name conflict on Debian/Ubuntu |  Blocker | debian | Erich Schubert | Evans Ye |
| [BIGTOP-1824](https://issues.apache.org/jira/browse/BIGTOP-1824) | Tachyon master and worker daemon script does not work propertly |  Critical | build | Evans Ye | Evans Ye |
| [BIGTOP-1818](https://issues.apache.org/jira/browse/BIGTOP-1818) | ignite-hadoop-service debian is missed; causing Puppet deploy to fail |  Critical | debian, deployment | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1817](https://issues.apache.org/jira/browse/BIGTOP-1817) | bigtop-utils deb is missing  init-hcfs.groovy file |  Blocker | debian | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1816](https://issues.apache.org/jira/browse/BIGTOP-1816) | Puppet deploy is broken on Ubuntu |  Major | deployment | Konstantin Boudnik | Evans Ye |
| [BIGTOP-1815](https://issues.apache.org/jira/browse/BIGTOP-1815) | Tez build is broken in the container |  Major | build | Konstantin Boudnik | Evans Ye |
| [BIGTOP-1814](https://issues.apache.org/jira/browse/BIGTOP-1814) | Puppet deployment code needs to work with ignite-hadoop component |  Critical | deployment | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1813](https://issues.apache.org/jira/browse/BIGTOP-1813) | Create /user/hbase HDFS directory |  Major | deployment, hbase | Ivan Orlov | Ivan Orlov |
| [BIGTOP-1812](https://issues.apache.org/jira/browse/BIGTOP-1812) | fix bps pig integration test |  Major | blueprints | jay vyas | jay vyas |
| [BIGTOP-1810](https://issues.apache.org/jira/browse/BIGTOP-1810) | Spark thriftserver service does not indicate success |  Major | spark | Matthew Russell | Matthew Russell |
| [BIGTOP-1808](https://issues.apache.org/jira/browse/BIGTOP-1808) | hive 1.0.0 : kerberos does not work correctly |  Major | hive | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1804](https://issues.apache.org/jira/browse/BIGTOP-1804) | Not again: srpm target fails on SUSE |  Blocker | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1798](https://issues.apache.org/jira/browse/BIGTOP-1798) | init-hdfs.sh uses groovy but no dependency in package description given |  Major | Init scripts | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1793](https://issues.apache.org/jira/browse/BIGTOP-1793) | bigtop\_toolchain: remove JAVA\_HOME/bin from PATH |  Trivial | . | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1790](https://issues.apache.org/jira/browse/BIGTOP-1790) | Top level menu says 'Power By' - needs to be fixed |  Minor | website | Konstantin Boudnik | Dasha Boudnik |
| [BIGTOP-1781](https://issues.apache.org/jira/browse/BIGTOP-1781) | tachyon fails to build |  Major | build | Olaf Flebbe | Huamin Chen |
| [BIGTOP-1780](https://issues.apache.org/jira/browse/BIGTOP-1780) | bigtop\_toolchain: JAVA\_HOME incorrect, remove JAVA6\_HOME |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1779](https://issues.apache.org/jira/browse/BIGTOP-1779) | giraph compile broken |  Major | build | Olaf Flebbe | Evans Ye |
| [BIGTOP-1778](https://issues.apache.org/jira/browse/BIGTOP-1778) | spark-1.3.0 broke hive |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1776](https://issues.apache.org/jira/browse/BIGTOP-1776) | Resolve an warning on packaging Hadoop RPM |  Trivial | build, hadoop | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1775](https://issues.apache.org/jira/browse/BIGTOP-1775) | Fix typos and mistakes on mailing list page |  Major | website | Dasha Boudnik | Dasha Boudnik |
| [BIGTOP-1774](https://issues.apache.org/jira/browse/BIGTOP-1774) | Update mailing list page |  Major | website | Dasha Boudnik | Dasha Boudnik |
| [BIGTOP-1764](https://issues.apache.org/jira/browse/BIGTOP-1764) | Fix copying mapreduce jars to HDFS for Oozie |  Minor | deployment | Peter Slawski | Peter Slawski |
| [BIGTOP-1763](https://issues.apache.org/jira/browse/BIGTOP-1763) | Handle broken symlinks when copying jars |  Critical | deployment | Peter Slawski | Peter Slawski |
| [BIGTOP-1761](https://issues.apache.org/jira/browse/BIGTOP-1761) | Delete testConf.xml from hadoop-smoke resources |  Major | tests | Dasha Boudnik | Dasha Boudnik |
| [BIGTOP-1757](https://issues.apache.org/jira/browse/BIGTOP-1757) | bigtop\_toolchain has to differentiate between centos6 and centos7 |  Major | build | Olaf Flebbe | Evans Ye |
| [BIGTOP-1756](https://issues.apache.org/jira/browse/BIGTOP-1756) | Add HADOOP\_MAPRED\_HOME property to common |  Major | tests | Dasha Boudnik | Dasha Boudnik |
| [BIGTOP-1751](https://issues.apache.org/jira/browse/BIGTOP-1751) | Puppet deployment ignores bigtop\_repo\_uri variable |  Major | deployment | Konstantin Boudnik | Evans Ye |
| [BIGTOP-1745](https://issues.apache.org/jira/browse/BIGTOP-1745) | Add Mark Grover as committer on the website |  Major | website | Mark Grover | Mark Grover |
| [BIGTOP-1733](https://issues.apache.org/jira/browse/BIGTOP-1733) | fix local\_yum implementation |  Major | vm | jay vyas | jay vyas |
| [BIGTOP-1732](https://issues.apache.org/jira/browse/BIGTOP-1732) | remove has\_ssh in Docker provisioner |  Minor | deployment, vm | Evans Ye | Evans Ye |
| [BIGTOP-1731](https://issues.apache.org/jira/browse/BIGTOP-1731) | Gradle mustRunAfter doesn't work is expected |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1729](https://issues.apache.org/jira/browse/BIGTOP-1729) | Install Hive has typo in HCATALOG option |  Critical | hive | Luciano Resende | Luciano Resende |
| [BIGTOP-1724](https://issues.apache.org/jira/browse/BIGTOP-1724) | Update centos vagrant box |  Major | deployment | Huamin Chen | Huamin Chen |
| [BIGTOP-1723](https://issues.apache.org/jira/browse/BIGTOP-1723) | update Tachyon Maintainers |  Major | . | Huamin Chen | Huamin Chen |
| [BIGTOP-1722](https://issues.apache.org/jira/browse/BIGTOP-1722) | upgrade tachyon to 0.6.0 |  Major | build, debian, rpm | Huamin Chen | Huamin Chen |
| [BIGTOP-1712](https://issues.apache.org/jira/browse/BIGTOP-1712) | Specification for Docker images. |  Major | documentation | jay vyas |  |
| [BIGTOP-1711](https://issues.apache.org/jira/browse/BIGTOP-1711) | add packages to compile hue |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1710](https://issues.apache.org/jira/browse/BIGTOP-1710) | Spark 1.1.0 does not build for DEB |  Major | spark | Olaf Flebbe |  |
| [BIGTOP-1706](https://issues.apache.org/jira/browse/BIGTOP-1706) | Make TestBlockRecovery runnable under all users |  Major | tests | Dasha Boudnik | Dasha Boudnik |
| [BIGTOP-1703](https://issues.apache.org/jira/browse/BIGTOP-1703) | Limt override of JAVA\_OPTS in install\_solr.sh to cause minimal side-effects |  Major | . | Rajendra | Rajendra |
| [BIGTOP-1694](https://issues.apache.org/jira/browse/BIGTOP-1694) | puppet: Make httpfs subscribe to core-site and hdfs-site |  Major | deployment | Peter Slawski | Peter Slawski |
| [BIGTOP-1687](https://issues.apache.org/jira/browse/BIGTOP-1687) | Puppet: fix wrong array representation for hadoop-zookeeper::server::ensemble |  Major | deployment | Evans Ye | Evans Ye |
| [BIGTOP-1678](https://issues.apache.org/jira/browse/BIGTOP-1678) | Use openjdk7 for AmazonLinux |  Minor | toolchain | Ivan Orlov | Ivan Orlov |
| [BIGTOP-1677](https://issues.apache.org/jira/browse/BIGTOP-1677) | Tez packaging is still failing |  Critical | build | Evans Ye | Evans Ye |
| [BIGTOP-1669](https://issues.apache.org/jira/browse/BIGTOP-1669) | puppet: Hadoop: Separate dependencies on Kerberos keytabs |  Major | deployment | Michael Weiser | Michael Weiser |
| [BIGTOP-1668](https://issues.apache.org/jira/browse/BIGTOP-1668) | puppet: Adjust kerberos module for current Debian |  Major | deployment | Michael Weiser | Michael Weiser |
| [BIGTOP-1665](https://issues.apache.org/jira/browse/BIGTOP-1665) | Update Wiki pages on how to develop and build Bigtop |  Blocker | wiki | Konstantin Boudnik |  |
| [BIGTOP-1663](https://issues.apache.org/jira/browse/BIGTOP-1663) | TestHadoopSmoke is failing because of improper set-up |  Major | tests | Dasha Boudnik | Dasha Boudnik |
| [BIGTOP-1662](https://issues.apache.org/jira/browse/BIGTOP-1662) | puppet: Fix hadoop configuration file incompleteness due to hiera conversion |  Major | deployment | Michael Weiser | Michael Weiser |
| [BIGTOP-1660](https://issues.apache.org/jira/browse/BIGTOP-1660) | Upgrade to Hive-1.0 |  Major | hive | Olaf Flebbe | YoungWoo Kim |
| [BIGTOP-1657](https://issues.apache.org/jira/browse/BIGTOP-1657) | bigtop-deploy puppets to support tez |  Major | . | Olaf Flebbe | Evans Ye |
| [BIGTOP-1652](https://issues.apache.org/jira/browse/BIGTOP-1652) | Fix BigPetStore-Spark Data format regression |  Major | . | jay vyas | RJ Nowling |
| [BIGTOP-1639](https://issues.apache.org/jira/browse/BIGTOP-1639) | Add Olaf Flebbe to dev list |  Major | website | Olaf Flebbe |  |
| [BIGTOP-1636](https://issues.apache.org/jira/browse/BIGTOP-1636) | Missing patches and files for hue |  Major | hue | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1635](https://issues.apache.org/jira/browse/BIGTOP-1635) | hue compile on vanilla debian |  Major | hue | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1633](https://issues.apache.org/jira/browse/BIGTOP-1633) | Pig compile fails again |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1626](https://issues.apache.org/jira/browse/BIGTOP-1626) | Add bmahe as a maintainer for Apache Flume |  Major | . | Bruno Mahé | Bruno Mahé |
| [BIGTOP-1620](https://issues.apache.org/jira/browse/BIGTOP-1620) | Hadoop deb Packages for architecture "all" containing binaries |  Major | build | Olaf Flebbe | Roman Shaposhnik |
| [BIGTOP-1618](https://issues.apache.org/jira/browse/BIGTOP-1618) | iTest integration tests need only to be bound to verify goal |  Major | tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1611](https://issues.apache.org/jira/browse/BIGTOP-1611) | mahoutsmokes aren't compiling |  Major | tests | Dasha Boudnik | jay vyas |
| [BIGTOP-1610](https://issues.apache.org/jira/browse/BIGTOP-1610) | Fix /etc/profile.d/bigtop.sh scripts |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1606](https://issues.apache.org/jira/browse/BIGTOP-1606) | Tachyon webapp directory not located where expected |  Major | . | David Capwell | David Capwell |
| [BIGTOP-1605](https://issues.apache.org/jira/browse/BIGTOP-1605) | Tachyon RPM does not depend on bigtop utils |  Major | . | David Capwell | David Capwell |
| [BIGTOP-1604](https://issues.apache.org/jira/browse/BIGTOP-1604) | Create a MAINTAINERS.txt File |  Critical | general | jay vyas |  |
| [BIGTOP-1596](https://issues.apache.org/jira/browse/BIGTOP-1596) | bigtop build fails because it tries to write to forrest installation |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1592](https://issues.apache.org/jira/browse/BIGTOP-1592) | Integration test IntegrationTestClusterFailures is failing |  Major | tests | Dasha Boudnik | Dasha Boudnik |
| [BIGTOP-1589](https://issues.apache.org/jira/browse/BIGTOP-1589) | Prioritization is broken in bigtop-detect-javahome |  Critical | general | Sean Mackrory | Sean Mackrory |
| [BIGTOP-1588](https://issues.apache.org/jira/browse/BIGTOP-1588) | Current Bigtop Pig does not build because of API Change in Hive |  Major | general | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1587](https://issues.apache.org/jira/browse/BIGTOP-1587) | Fix typos in install-tomcat.sh |  Major | . | Dasha Boudnik | Dasha Boudnik |
| [BIGTOP-1586](https://issues.apache.org/jira/browse/BIGTOP-1586) | BigPetStore-Spark only works on the East Coast . |  Major | blueprints | jay vyas | jay vyas |
| [BIGTOP-1585](https://issues.apache.org/jira/browse/BIGTOP-1585) | test artifacts tasks include extra tasks for nonexisting components |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1580](https://issues.apache.org/jira/browse/BIGTOP-1580) | Improve Bigtop Toolchain: Versioning of Packages |  Major | build, debian, rpm | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1579](https://issues.apache.org/jira/browse/BIGTOP-1579) | Implement patching for Bigtop |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1574](https://issues.apache.org/jira/browse/BIGTOP-1574) | Phoenix packaging requires build and classpath changes after PHOENIX-1455 |  Major | . | Andrew Purtell | Andrew Purtell |
| [BIGTOP-1570](https://issues.apache.org/jira/browse/BIGTOP-1570) | docker-puppet fails to deploy due to stdlib can not be found |  Major | deployment | Evans Ye | Evans Ye |
| [BIGTOP-1568](https://issues.apache.org/jira/browse/BIGTOP-1568) | bigtop01 needs gradle |  Major | build | jay vyas | jay vyas |
| [BIGTOP-1567](https://issues.apache.org/jira/browse/BIGTOP-1567) | puppet cannot install components whatever given to it |  Critical | deployment | Evans Ye | Evans Ye |
| [BIGTOP-1566](https://issues.apache.org/jira/browse/BIGTOP-1566) | Puppet README file needs to reflect multiple modules directoty requirement |  Major | deployment | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1564](https://issues.apache.org/jira/browse/BIGTOP-1564) | docker-puppet doesn't use vagrantconfg.yaml for configuration parameters |  Major | deployment | Konstantin Boudnik | Evans Ye |
| [BIGTOP-1562](https://issues.apache.org/jira/browse/BIGTOP-1562) | Critical tachyon pupet improvements. |  Major | deployment | jay vyas | jay vyas |
| [BIGTOP-1554](https://issues.apache.org/jira/browse/BIGTOP-1554) | bigtop-deploy/puppet/config/site.csv was wrongfully committed. |  Major | deployment | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1553](https://issues.apache.org/jira/browse/BIGTOP-1553) | puppet installation fails when components value is a single item instead of a list |  Trivial | deployment | Rob Leidle | jay vyas |
| [BIGTOP-1551](https://issues.apache.org/jira/browse/BIGTOP-1551) | build stops because gradle does not handle symlinks well |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1549](https://issues.apache.org/jira/browse/BIGTOP-1549) | spark compile broken |  Critical | build | Olaf Flebbe |  |
| [BIGTOP-1548](https://issues.apache.org/jira/browse/BIGTOP-1548) | hue uses snapshot dependency to removed snapshot |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1544](https://issues.apache.org/jira/browse/BIGTOP-1544) | [BigPetStore] Use of java.io.File and check for directory existence will fail with non-POSIX DFSs (HDFS, S3, etc.) |  Major | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1542](https://issues.apache.org/jira/browse/BIGTOP-1542) | Debian Packages will not build |  Major | build, debian | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1541](https://issues.apache.org/jira/browse/BIGTOP-1541) | Support Debian jessie in Bigtop\_toolchain; cleanup of pp files |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1534](https://issues.apache.org/jira/browse/BIGTOP-1534) | Update README.md to reflect new build system and other changes |  Major | documentation | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1526](https://issues.apache.org/jira/browse/BIGTOP-1526) | property file for FailureVars can not be placed to {{/}} |  Major | tests | Konstantin Boudnik | Dasha Boudnik |
| [BIGTOP-1524](https://issues.apache.org/jira/browse/BIGTOP-1524) | FailureExecutor  breaks smoke tests : Smoke tests should run from source |  Blocker | tests | jay vyas | jay vyas |
| [BIGTOP-1523](https://issues.apache.org/jira/browse/BIGTOP-1523) | Gradle install for test artifacts uses wrong sequence of the targets |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1522](https://issues.apache.org/jira/browse/BIGTOP-1522) | nodemanager deployment needs to include hadoop-mapreduce package |  Major | deployment | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1521](https://issues.apache.org/jira/browse/BIGTOP-1521) | Bigtop smoke-tests hierarchy and fast failure |  Major | tests | jay vyas | Dasha Boudnik |
| [BIGTOP-1513](https://issues.apache.org/jira/browse/BIGTOP-1513) | FailureExecutor.groovy is in the wrong module, causing compiler errors. |  Major | tests | Dawson Choong | Konstantin Boudnik |
| [BIGTOP-1511](https://issues.apache.org/jira/browse/BIGTOP-1511) | TestCLI: make TestCLI compatible with Hadoop 2.4 (HADOOP-8691) |  Trivial | tests | Martin Bukatovic | Martin Bukatovic |
| [BIGTOP-1509](https://issues.apache.org/jira/browse/BIGTOP-1509) | Update deployment README after BIGTOP-1047 |  Major | documentation | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1508](https://issues.apache.org/jira/browse/BIGTOP-1508) | fix Puppet warnings under Puppet 3 |  Major | deployment | Konstantin Boudnik | Evans Ye |
| [BIGTOP-1506](https://issues.apache.org/jira/browse/BIGTOP-1506) | bigtop-utils won't detect JAVA\_HOME in some cases |  Major | deployment | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1504](https://issues.apache.org/jira/browse/BIGTOP-1504) | Bigtop docker provision does not work on mac |  Major | vm | David Capwell | David Capwell |
| [BIGTOP-1502](https://issues.apache.org/jira/browse/BIGTOP-1502) | Improve puppet deployment for new gridgain component |  Major | deployment | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1497](https://issues.apache.org/jira/browse/BIGTOP-1497) | Add tachyon to bigtop |  Major | build, debian, rpm | jay vyas | jay vyas |
| [BIGTOP-1491](https://issues.apache.org/jira/browse/BIGTOP-1491) | Update docker-puppet README |  Major | vm | jay vyas |  |
| [BIGTOP-1490](https://issues.apache.org/jira/browse/BIGTOP-1490) | Adding GridGain to BigTop |  Major | general | Dmitriy Setrakyan | Ilya Tikhonov |
| [BIGTOP-1488](https://issues.apache.org/jira/browse/BIGTOP-1488) | bigtop\_toolchain hardcode the apache mirror sites for downloading maven |  Major | build, general | stanley shi | Newton Alex |
| [BIGTOP-1487](https://issues.apache.org/jira/browse/BIGTOP-1487) | Documentation for use case and deployment models for failure tests. |  Major | tests | jay vyas | Dawson Choong |
| [BIGTOP-1472](https://issues.apache.org/jira/browse/BIGTOP-1472) | Hadoop RPM build is broken after BIGTOP-1462 |  Blocker | build | Hu Liu, | Konstantin Boudnik |
| [BIGTOP-1467](https://issues.apache.org/jira/browse/BIGTOP-1467) | version of hadoop-auth in oozie is wrong |  Major | debian, rpm | Xiaoshuang LU | Amir Sanjar |
| [BIGTOP-1462](https://issues.apache.org/jira/browse/BIGTOP-1462) | Failed to build spark by gradle |  Blocker | build | Hu Liu, | Konstantin Boudnik |
| [BIGTOP-1460](https://issues.apache.org/jira/browse/BIGTOP-1460) | maven dependencies broken |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1459](https://issues.apache.org/jira/browse/BIGTOP-1459) | Remove hadoop-client jar from packages that bundle it |  Major | debian, rpm | Mark Grover | Newton Alex |
| [BIGTOP-1458](https://issues.apache.org/jira/browse/BIGTOP-1458) | Maven build severly broken |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1457](https://issues.apache.org/jira/browse/BIGTOP-1457) | Hue do-component-build does not set version properly |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1446](https://issues.apache.org/jira/browse/BIGTOP-1446) | Spark fails with clean .m2 |  Major | build | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-1445](https://issues.apache.org/jira/browse/BIGTOP-1445) | Pig fails with clean .ivy and .m2 |  Major | build | Roman Shaposhnik | Roman Shaposhnik |
| [BIGTOP-1395](https://issues.apache.org/jira/browse/BIGTOP-1395) | Simplifying non-component versions evaluation |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1384](https://issues.apache.org/jira/browse/BIGTOP-1384) | Implement Gradle Wrapper for smoke tests and cleanup. |  Major | build | jay vyas | David Capwell |
| [BIGTOP-1357](https://issues.apache.org/jira/browse/BIGTOP-1357) | Get rid of HCatalog packaging code |  Major | debian, rpm | Mark Grover | Giridharan Kesavan |
| [BIGTOP-1356](https://issues.apache.org/jira/browse/BIGTOP-1356) | Generate hive.install on the fly |  Major | debian | Mark Grover | Julien Eid |
| [BIGTOP-1327](https://issues.apache.org/jira/browse/BIGTOP-1327) | bigpetstore.arch is out of date |  Minor | blueprints | jay vyas | jay vyas |
| [BIGTOP-1315](https://issues.apache.org/jira/browse/BIGTOP-1315) | Pig smoke tests:  Refactor ? |  Major | tests | jay vyas | jay vyas |
| [BIGTOP-1287](https://issues.apache.org/jira/browse/BIGTOP-1287) | Mahout smokes : Remove dirchlet/meanshift clustering |  Major | tests | jay vyas | jay vyas |
| [BIGTOP-1277](https://issues.apache.org/jira/browse/BIGTOP-1277) | Remove Windows files from unix packaging |  Major | debian, rpm | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1194](https://issues.apache.org/jira/browse/BIGTOP-1194) | redhat-lsb-core is sufficient in spec files |  Minor | rpm | Regis Nebor | Newton Alex |
| [BIGTOP-1135](https://issues.apache.org/jira/browse/BIGTOP-1135) | Hue has google analytics enabled by default |  Major | hue | Bruno Mahé | Bruno Mahé |
| [BIGTOP-1104](https://issues.apache.org/jira/browse/BIGTOP-1104) | Fix lintian errors |  Major | . | Andrew Purtell |  |
| [BIGTOP-1050](https://issues.apache.org/jira/browse/BIGTOP-1050) | Permissions on YARN LCE should be 4754 |  Blocker | . | Sean Mackrory | Sean Mackrory |
| [BIGTOP-965](https://issues.apache.org/jira/browse/BIGTOP-965) | IntegrationTestHiveSmokeBulk not being run |  Major | tests | Mark Grover | Mark Grover |
| [BIGTOP-894](https://issues.apache.org/jira/browse/BIGTOP-894) | Pig compilation fails on RPM systems on Bigtop trunk |  Blocker | debian, rpm | Mark Grover | Mark Grover |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-1664](https://issues.apache.org/jira/browse/BIGTOP-1664) | make test unpack resources optional |  Major | tests | jay vyas |  |
| [BIGTOP-1629](https://issues.apache.org/jira/browse/BIGTOP-1629) | Move testDFSCLI from hcfs to hdfs directory |  Major | tests | Dasha Boudnik | Dasha Boudnik |
| [BIGTOP-1617](https://issues.apache.org/jira/browse/BIGTOP-1617) | Make clean-up commands in TestCLI more specific |  Major | tests | Dasha Boudnik | Dasha Boudnik |
| [BIGTOP-1560](https://issues.apache.org/jira/browse/BIGTOP-1560) | Add a test case for performing block corruption recovery |  Major | tests | Dasha Boudnik | Dasha Boudnik |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-1947](https://issues.apache.org/jira/browse/BIGTOP-1947) | Fix RAT plugin configuration to be able to RAT-validate all published artifacts |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1900](https://issues.apache.org/jira/browse/BIGTOP-1900) | Upgrade bigtop/slaves images on bigtop's dockerhub |  Major | build | Evans Ye | Evans Ye |
| [BIGTOP-1842](https://issues.apache.org/jira/browse/BIGTOP-1842) | Remove gridgain-hadoop from BOM |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1768](https://issues.apache.org/jira/browse/BIGTOP-1768) | Use openjdk in ubuntu14, Remove references to jdk6 |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1765](https://issues.apache.org/jira/browse/BIGTOP-1765) | Bump the stack version to 1.0 |  Major | general | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1738](https://issues.apache.org/jira/browse/BIGTOP-1738) | Update HBase because javadoc broken |  Major | hbase | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1727](https://issues.apache.org/jira/browse/BIGTOP-1727) | Fix a build failure for Spark 1.2.1 |  Major | build | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1707](https://issues.apache.org/jira/browse/BIGTOP-1707) | Upgrade Hadoop to 2.6.0 |  Major | build, general | Yafang Chang | Yafang Chang |
| [BIGTOP-1649](https://issues.apache.org/jira/browse/BIGTOP-1649) | Upgrade Apache Flume to 1.5.2 |  Minor | build, debian, rpm | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1632](https://issues.apache.org/jira/browse/BIGTOP-1632) | Support JMX monitoring when multiple HBase RS is brought up in a node |  Major | hbase | Biju Nair | Biju Nair |
| [BIGTOP-1615](https://issues.apache.org/jira/browse/BIGTOP-1615) | Tests dependencies are on old Hadoop versions (2.3.0, 2.4.1) |  Blocker | tests | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1609](https://issues.apache.org/jira/browse/BIGTOP-1609) | Use openjdk7 for CentOS |  Major | build | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1594](https://issues.apache.org/jira/browse/BIGTOP-1594) | Upgrade Pig to 0.14.0 |  Major | build, debian, rpm | YoungWoo Kim | YoungWoo Kim |
| [BIGTOP-1571](https://issues.apache.org/jira/browse/BIGTOP-1571) | Remove Whirr from the BOM |  Major | general | Konstantin Boudnik | Dasha Boudnik |
| [BIGTOP-1563](https://issues.apache.org/jira/browse/BIGTOP-1563) | Puppet deployment needs to setup user hdfs keys for password-less logins |  Major | deployment | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1550](https://issues.apache.org/jira/browse/BIGTOP-1550) | Spark update to 1.1.0 |  Major | build, spark | Olaf Flebbe | jay vyas |
| [BIGTOP-1543](https://issues.apache.org/jira/browse/BIGTOP-1543) | hive-0.14 in bigtop |  Major | general | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1537](https://issues.apache.org/jira/browse/BIGTOP-1537) | [BigPetStore] Add  Spark Product Recommender example |  Major | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1535](https://issues.apache.org/jira/browse/BIGTOP-1535) | Add Spark ETL script to BigPetStore |  Major | blueprints | RJ Nowling | RJ Nowling |
| [BIGTOP-1486](https://issues.apache.org/jira/browse/BIGTOP-1486) | Upgrade Hue to 3.7 |  Major | general | Olaf Flebbe | Olaf Flebbe |
| [BIGTOP-1468](https://issues.apache.org/jira/browse/BIGTOP-1468) | Include zookeeper 3.4.6 |  Major | general | Guo Ruijing | Olaf Flebbe |
| [BIGTOP-1465](https://issues.apache.org/jira/browse/BIGTOP-1465) | Include Sqoop1 in bigtop 0.9 |  Major | general | Guo Ruijing | Sean Mackrory |
| [BIGTOP-1461](https://issues.apache.org/jira/browse/BIGTOP-1461) | Add a simple Hive validation to smoke-tests. |  Major | tests | jay vyas | jay vyas |
| [BIGTOP-1392](https://issues.apache.org/jira/browse/BIGTOP-1392) | Hive basic smoke test fails |  Major | tests | josh baer | josh baer |
| [BIGTOP-1334](https://issues.apache.org/jira/browse/BIGTOP-1334) | Add DFS tests to TestCLI |  Major | tests | Dasha Boudnik | Dasha Boudnik |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-1619](https://issues.apache.org/jira/browse/BIGTOP-1619) | change hadoop namenode port to 8020 (apache default port) in puppet script |  Trivial | hadoop | vishnu gajendran |  |
| [BIGTOP-1873](https://issues.apache.org/jira/browse/BIGTOP-1873) | Puppet apt module version must be 2.0.1 or above after BIGTOP-1870 |  Minor | debian, deployment, documentation | Evans Ye | Evans Ye |
| [BIGTOP-1854](https://issues.apache.org/jira/browse/BIGTOP-1854) | Trim Tachyon maintainers' list |  Major | general | Konstantin Boudnik | Konstantin Boudnik |
| [BIGTOP-1834](https://issues.apache.org/jira/browse/BIGTOP-1834) | Upgrade to Spark 1.3.1 |  Critical | spark | Jonathan Kelly | Jonathan Kelly |
| [BIGTOP-1831](https://issues.apache.org/jira/browse/BIGTOP-1831) | Upgrade Mahout to 0.10 |  Blocker | general | David Starina | YoungWoo Kim |
| [BIGTOP-1822](https://issues.apache.org/jira/browse/BIGTOP-1822) | Puppet apt module should be automatically installed by toolchain |  Major | deployment | Evans Ye | Evans Ye |
| [BIGTOP-1755](https://issues.apache.org/jira/browse/BIGTOP-1755) | Upgrade to Spark 1.3.0 |  Critical | spark | Jonathan Kelly | Jonathan Kelly |
| [BIGTOP-1726](https://issues.apache.org/jira/browse/BIGTOP-1726) | Confirm that Spark 1.2.1 runs properly in BigTop, and run the BPS integration test. |  Major | . | jay vyas |  |
| [BIGTOP-1655](https://issues.apache.org/jira/browse/BIGTOP-1655) | Update VM and Docker provisioner to work with hiera converted puppet recipes |  Major | deployment, vm | Evans Ye | Evans Ye |
| [BIGTOP-1648](https://issues.apache.org/jira/browse/BIGTOP-1648) | Update to Spark 1x to Spark 1.2.1 |  Major | spark | jay vyas | YoungWoo Kim |
| [BIGTOP-1638](https://issues.apache.org/jira/browse/BIGTOP-1638) | Add Dasha Boudnik to dev list |  Major | website | Dasha Boudnik | Dasha Boudnik |
| [BIGTOP-1597](https://issues.apache.org/jira/browse/BIGTOP-1597) | Design flyers for upcoming SCALE conference |  Major | documentation | Dasha Boudnik | Dasha Boudnik |
| [BIGTOP-1595](https://issues.apache.org/jira/browse/BIGTOP-1595) | kill list |  Major | general | jay vyas |  |
| [BIGTOP-1556](https://issues.apache.org/jira/browse/BIGTOP-1556) | Cleanup some unused minor stuff. |  Major | documentation, vm | jay vyas | Dasha Boudnik |


