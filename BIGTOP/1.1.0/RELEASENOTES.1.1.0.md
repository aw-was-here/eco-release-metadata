
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
# Apache BigTop  1.1.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [BIGTOP-2086](https://issues.apache.org/jira/browse/BIGTOP-2086) | *Major* | **Install essential puppet modules along with puppet itself**

It is clumsy that one has to install puppet , than puppet modules and than either toolchain or run the deploy.

Lets install the essential puppet modules when installing puppet itself.

And BTW: The gradle and puppet module is left as-is for upgrading previous installations.


---

* [BIGTOP-2082](https://issues.apache.org/jira/browse/BIGTOP-2082) | *Major* | **Remove x86 Assembler Code from zookeeper**

Compilation on OpenPower fails for zookeeper, since upstream contains x86 Assembler in mt\_processor.c . 

Incorporate an fix from zookeeper 3.5 branch to remove assembler from this particular file


---

* [BIGTOP-2080](https://issues.apache.org/jira/browse/BIGTOP-2080) | *Minor* | **Investigate removing Scala from the toolchain**

Older versions of Spark needed Scala to be installed separately but not anymore.  For a while, Spark and Kafka have pulled down a copy of the Scala compiler and libraries through Maven -- BigPetStore does the same through the Groovy Scala plugin.

We may be able to drop the Scala installation in the Bigtop toolchain.  We should investigate this.


---

* [BIGTOP-2071](https://issues.apache.org/jira/browse/BIGTOP-2071) | *Blocker* | **Gstring.empty doesn't exist**

Running {{./gradlew pig-rpm}} fails on the {{hadoop-tar}} task because {{GStringImpl}} doesn't have an {{empty}} method.


---

* [BIGTOP-2069](https://issues.apache.org/jira/browse/BIGTOP-2069) | *Major* | **Update README.md to reflect CTR trial**

As discussed in http://bit.ly/1gLe, let's patch the README


---

* [BIGTOP-2068](https://issues.apache.org/jira/browse/BIGTOP-2068) | *Critical* | **Cannot Build Bigtop-Utils packages**

Reproducible Steps:
1. git clone https://github.com/apache/bigtop.git
2. cd bigtop
3. ./gradlew bigtop-utils-rpm

RESULT:
Copy to /opt/bigtop/build/bigtop-utils/tar/bigtop-utils-1.1.0-SNAPSHOT.tar.gz
:bigtop-utils-tar FAILED
FAILURE: Build failed with an exception.
Where: Script '/opt/bigtop/packages.gradle' line: 250

EXPETED:
RPM created

Pull Request:
https://github.com/apache/bigtop/pull/40


---

* [BIGTOP-2066](https://issues.apache.org/jira/browse/BIGTOP-2066) | *Major* | **init-hdfs.sh is broken by recent hadoop update**

With hadoop-2.7 and groovy-2.4 It needs additionally this jars: 

commons-io and servlet-api, complains loudly with Class not found Exceptions.


---

* [BIGTOP-2065](https://issues.apache.org/jira/browse/BIGTOP-2065) | *Major* | **Update deployment README.md to reflect on better deployment experience**

Current puppet deployment readme file directs a user to manually create Hiera's site.yaml file. We already provide a site.yaml under {{bigtop-deploy/puppet/hieradata}}. I suggest we change that to copy the template and edit it accordingly instead.


---

* [BIGTOP-2063](https://issues.apache.org/jira/browse/BIGTOP-2063) | *Major* | **Provide default config to deploy hive on top of Ignite**

Let's have a default {{hive-site.xml}} to allow hive deployment on top of Ignite.


---

* [BIGTOP-2059](https://issues.apache.org/jira/browse/BIGTOP-2059) | *Major* | **Bump Ignite to 1.4**

Let's upgrade to 1.4 once it is out in a few days.


---

* [BIGTOP-2057](https://issues.apache.org/jira/browse/BIGTOP-2057) | *Blocker* | **null check doesn't safeguard against non-existing values in the BOM config**

BIGTOP-2051 has switched the build to use configuration properties instead of java properties. One of the unfortunate side effects of such dynamism is that null checks don't work as expected anymore, as empty elements of the config would be assigned with a ConfigObject instance even after simply null check. That leads to failures for component builds where some elements are omitted all-together, e.g bigtop-utils. 

Instead of null checks I propose to user {{.isEmpty()}}


---

* [BIGTOP-2056](https://issues.apache.org/jira/browse/BIGTOP-2056) | *Major* | **Remove top-level check-env.sh**

It doesn't look like {{check-env.sh}} servers any real purpose. Shall we get rid of it?


---

* [BIGTOP-2055](https://issues.apache.org/jira/browse/BIGTOP-2055) | *Major* | **Refactor packages.gradle to get rid of excessive data containers; make code cleaner**

With all-gradle build for packages, it is time to clean it a little bit. There are some spots of code dups, less then optimal use of intermediate data containers, etc.


---

* [BIGTOP-2054](https://issues.apache.org/jira/browse/BIGTOP-2054) | *Major* | **Update Pig**


    Update Pig to 0.15
    Incorporate PIG-4676
    fix other small issues

Needed since hive update will break PIG as it is now


---

* [BIGTOP-2053](https://issues.apache.org/jira/browse/BIGTOP-2053) | *Major* | **After rebasing on Hadoop 2.7.1 yarn module should be returned to ignite-hadoop build**

We removed yarn module from ignite-hadoop as a workaround of some code incompatibility coming from ignite 1.3 release. Now, bring on top of 2.7.1 we don't need it anymore.


---

* [BIGTOP-2052](https://issues.apache.org/jira/browse/BIGTOP-2052) | *Major* | **Remove obsolete environment variables**

These variables are obsolete in packages.gradle
{code}
--preserve-envvar JAVA32\_HOME \
--preserve-envvar JAVA64\_HOME \
--preserve-envvar FORREST\_HOME \
{code}


---

* [BIGTOP-2051](https://issues.apache.org/jira/browse/BIGTOP-2051) | *Major* | **Get rid of hair-brain environment vars left after make-based build**

The last piece of the old make based build is the massive map of environment variables we had to keep around to avoid breaking everything in the builds. Let's get rid of it and start using the configuration object, build from the new DSL


---

* [BIGTOP-2050](https://issues.apache.org/jira/browse/BIGTOP-2050) | *Major* | **Description of clean tasks have null entries**

{{-clean}} entries from {{./gradlew tasks}} have nulls:

{noformat}
hadoop-clean - Removing hadoop component null and null
{noformat}


---

* [BIGTOP-2046](https://issues.apache.org/jira/browse/BIGTOP-2046) | *Major* | **puppet module search path**

When puppet apt modules are installed with puppet-modules, they are available from /etc/puppet/modules 

BIGTOP-1936 seems to break because puppet does not resolve dependencies correctly when invoked via {{gradle toolchain}}


---

* [BIGTOP-2044](https://issues.apache.org/jira/browse/BIGTOP-2044) | *Major* | **Unnecessary printout has been introduced by BIGTOP-1494**

BIGTOP-1494 introduced a piece of debug printing - needs to be removed


---

* [BIGTOP-2043](https://issues.apache.org/jira/browse/BIGTOP-2043) | *Major* | **Kafka source incorrect**

Should be "$name-${version.base}-src.tgz" rather than  "$name-${version.base}-src.tar.gz"


---

* [BIGTOP-2042](https://issues.apache.org/jira/browse/BIGTOP-2042) | *Major* | **Tachyon name is incorrect**

tachyon has a typo in the definition. Should say {{pkg = 'tachyon-tfs'}}


---

* [BIGTOP-2041](https://issues.apache.org/jira/browse/BIGTOP-2041) | *Major* | **Spark pkg name is incorrect**

spark package name should be {{spark-core}}


---

* [BIGTOP-2039](https://issues.apache.org/jira/browse/BIGTOP-2039) | *Major* | **Solr download URL is incorrect**

solr archive should have {{tgz}} suffix instead of {{tar.gz}}


---

* [BIGTOP-2038](https://issues.apache.org/jira/browse/BIGTOP-2038) | *Major* | **Pig destination name incorrect**

destination should be {code}"${name}-${version.base}-src.tar.gz"{code} rather than {code}"${name}-${version.base}.tar.gz"{code}, pig build currently breaks.


---

* [BIGTOP-2037](https://issues.apache.org/jira/browse/BIGTOP-2037) | *Major* | **BIGTOP-1746 Added Files Without Apache License Headers**

BIGTOP-1746 added files under {{bigtop-deploy/puppet/modules/bigtop-util/}} that don't have Apache license headers and break the Apache RAT check.

[~vishnu], [~evans\_ye] could you take a look?


---

* [BIGTOP-2033](https://issues.apache.org/jira/browse/BIGTOP-2033) | *Major* | **Build order of the stack is broken**

As a part of moving to new stack DSL I have inadvertently broke the logic to preserve the order of stack creation as laid-out by the sequence of the BOM file.


---

* [BIGTOP-2027](https://issues.apache.org/jira/browse/BIGTOP-2027) | *Major* | **Bump gradle version, the wrapper to 2.7**

It's like only yesterday we got BIGTOP-1867 in, delivering Gradle 2.4. Now I am looking into 2.6 and see a number of significant improvements (https://docs.gradle.org/current/release-notes) that warrant an upgrade. But perhaps it is worthy to wait a couple of weeks for 2.7, which already has an RC2.

Another point: our Docker images are still on Gradle 2.0 - we just have to bump them up to at least 2.4 and benefit from the performance improvements.


---

* [BIGTOP-2026](https://issues.apache.org/jira/browse/BIGTOP-2026) | *Major* | **Phoenix build defines HBASE\_VERSION in two different places.**

{noformat}
% ack-grep PHOENIX\_HBASE\_VERSION \*
bigtop.mk
282:PHOENIX\_HBASE\_VERSION=HBase-0.98
283:PHOENIX\_TARBALL\_DST=phoenix-$(PHOENIX\_BASE\_VERSION)-$(PHOENIX\_HBASE\_VERSION)-src.tar.gz
285:PHOENIX\_DOWNLOAD\_PATH=/phoenix/phoenix-$(PHOENIX\_BASE\_VERSION)-$(PHOENIX\_HBASE\_VERSION)/src/

bigtop-packages/src/common/phoenix/do-component-build
21:PHOENIX\_HBASE\_VERSION=HBase-0.98
32:tar -C build --strip-components=1 -xzf phoenix-assembly/target/phoenix-$PHOENIX\_VERSION-${PHOENIX\_HBASE\_VERSION}.tar.gz
{noformat}

The variable is defined twice and can lead to integration problems if it gets changed independently. {{do-component-build}} should use the one from the BOM


---

* [BIGTOP-2025](https://issues.apache.org/jira/browse/BIGTOP-2025) | *Major* | **Make BOM to be a directional graph**

It might be a good idea to be able to set up a dependencies between the components, so the build system is aware which parts should be build first, and the sequentially or in parallel.

With new configuration DSL introduced in BIGTOP-1494 we can have a directional graph like this
{code}
    'hadoop' {
      name    = 'hadoop'
      relNotes = 'Apache Hadoop'
      version { base = '2.6.0'; pkg = base; release =1 }
      tarball { destination = "${name}-${version.base}.tar.gz"
                source      = "${name}-${version.base}-src.tar.gz" }
      url     { site = "{apache.APACHE\_MIRROR}/${download\_path}"
                archive = "{apache.APACHE\_ARCHIVE}/${download\_path}"
                download\_path = "/hadoop/common/$name-${version.base}" }
      dependencies { 'zookeeper'}
    }
{code}
which will allow to collect all {{dependencies}} information cross components, build the graph and test it for loops. This information can be used by the build system to order the build process: if {{hadoop-deb}} is invoked it will automatically tries to build {{zookeeper}}; for {{hbase}} it will invoke {{hadoop}} build first, etc.


---

* [BIGTOP-2020](https://issues.apache.org/jira/browse/BIGTOP-2020) | *Major* | **Add Gradle RAT plugin to the top-level project**

Apache Rat is used by Bigtop to find license violations.  To avoid the mistake of failing to run rat from Maven, we should incorporate the upcoming Gradle plugin for Rat into the data generators build.


---

* [BIGTOP-2019](https://issues.apache.org/jira/browse/BIGTOP-2019) | *Major* | **BigPetStore Spark isn't compiling due to changes in SQL API**

Spark no longer supports registering RDDs as temp tables -- they need to be converted to DataFrames first.


---

* [BIGTOP-2018](https://issues.apache.org/jira/browse/BIGTOP-2018) | *Major* | **Create a puppetizing script**

As of BIGTOP-1908 , lets create a shell script which installs dependencies for bare-bone docker images and minimal OS installations.

This will be reused for Dockerfiles (bigtop/puppet) and VM provisioning.


---

* [BIGTOP-2017](https://issues.apache.org/jira/browse/BIGTOP-2017) | *Major* | **Rebase bigtop-slaves on bigtop-puppet**

Rebase the docker images on top of each other: See comments in BIGTOP-2015


---

* [BIGTOP-2014](https://issues.apache.org/jira/browse/BIGTOP-2014) | *Major* | **[VM provisioner] Missing FQDN on Ubuntu causes puppet deployment malfunction**

We implemented and tested Bigtop VM provisioner mainly on CentOS 6 and Debian. However, noticed by [~tomzeng]'s user list question, I found that the puppet deployment on Ubuntu fail to identify \*head\_node\* due to the missing FQDN setting. This is because different Linux distribution has different mechanism for FQDN setting.


---

* [BIGTOP-2008](https://issues.apache.org/jira/browse/BIGTOP-2008) | *Minor* | **build.gradle has out-of-date version**

Version in build.gradle should be 1.1.0-SNAPSHOT, not 0.9.0-SNAPSHOT.


---

* [BIGTOP-2007](https://issues.apache.org/jira/browse/BIGTOP-2007) | *Major* | **bigtop.mk version of the stack needs to be bumped to 1.1.0-SNAPSHOT**

The version of the stack hasn't been moved to the latest one.


---

* [BIGTOP-2005](https://issues.apache.org/jira/browse/BIGTOP-2005) | *Minor* | **Remove SCALA\_HOME requirement**

{{SCALA\_HOME}} isn't required by Spark and Kafka since Scala is retrieved by Maven.


---

* [BIGTOP-2004](https://issues.apache.org/jira/browse/BIGTOP-2004) | *Major* | **Download task fails with Gradle 2.6**

Older versions of the [download task fail\|https://github.com/michel-kraemer/gradle-download-task/issues/29] with Gradle 2.6. 

Upgrading to version 2.0.0 fixes the problem.


---

* [BIGTOP-2003](https://issues.apache.org/jira/browse/BIGTOP-2003) | *Major* | **Bigtop puppet fails to deploy on Ubuntu due to a hiera 1.3.0 bug**

hiera 1.3.0 fails with empty yaml file, hence we get the following error when running deployment on Ubuntu:
{code}
vagrant-puppet-vm $ cat vagrantconfig.yaml
memory\_size: 4096
number\_cpus: 1
box: "puppetlabs/ubuntu-14.04-64-puppet"
repo: "http://bigtop01.cloudera.org:8080/view/Releases/job/Bigtop-1.0.0-deb/BUILD\_ENVIRONMENTS=debian-8%2clabel=docker-slave-07/lastSuccessfulBuild/artifact/output/apt/"
num\_instances: 1
distro: debian
components: [hadoop, yarn]
enable\_local\_repo: false
run\_smoke\_tests: false
smoke\_test\_components: [mapreduce, pig]
jdk: "openjdk-7-jdk"

vagrant-puppet-vm $ vagrant up
...
==\> bigtop1: Error: Error from DataBinding 'hiera' while looking up 'hadoop\_cluster\_node::hadoop\_security\_authentication': Data                    retrieved from /etc/puppet/hieradata/bigtop/noha.yaml is String not Hash on node bigtop1
==\> bigtop1: Wrapped exception:
==\> bigtop1: Data retrieved from /etc/puppet/hieradata/bigtop/noha.yaml is String not Hash
==\> bigtop1: Wrapped exception:
==\> bigtop1: Data retrieved from /etc/puppet/hieradata/bigtop/noha.yaml is String not Hash
==\> bigtop1: Error: Error from DataBinding 'hiera' while looking up 'hadoop\_cluster\_node::hadoop\_security\_authentication': Data                    retrieved from /etc/puppet/hieradata/bigtop/noha.yaml is String not Hash on node bigtop1
{code}


---

* [BIGTOP-2000](https://issues.apache.org/jira/browse/BIGTOP-2000) | *Minor* | **Add BigTop Data Generators to maintainers file**

Add BigTop Data Generator maintainers to the maintainers file.


---

* [BIGTOP-1999](https://issues.apache.org/jira/browse/BIGTOP-1999) | *Major* | **website link to the release bits is broken and points to the top-level mirror's directory**

As discussed in BIGTOP-1998 a similar thing needs to be done for the website, because the release links don't point to the Bigtop releases but rather to the top-level directory of the mirror sites.


---

* [BIGTOP-1997](https://issues.apache.org/jira/browse/BIGTOP-1997) | *Major* | **Bump bigtop-groovy runtime to 2.4.4**

As discussed in BIGTOP-1993 Groovy runtime provided by bigtop-groovy packages needs to be moved forward to the latest version of the SDK.


---

* [BIGTOP-1996](https://issues.apache.org/jira/browse/BIGTOP-1996) | *Major* | **Dockerfiles for bigtop-slaves**

Automate creation of bigtop/slaves docker images.


---

* [BIGTOP-1995](https://issues.apache.org/jira/browse/BIGTOP-1995) | *Major* | **Update BigPetStore to use external locations  data**

When BIGTOP-1986 was added, I must not have added changes in the BigPetStore data generator for the new location data to the patch.  This issue is to update the references in the BPS data generator and the {{settings.gradle}} file.


---

* [BIGTOP-1993](https://issues.apache.org/jira/browse/BIGTOP-1993) | *Major* | **Bump groovy to 2.4.4 in the development toolchain**

Groovy 2.4.4 has fixed some security bugs and is, after all, the first Apache release of the platform. Let's update the toolchain to it


---

* [BIGTOP-1992](https://issues.apache.org/jira/browse/BIGTOP-1992) | *Blocker* | **Fix RAT check errors resulting from BPS data generator move**

The following files are failing:

{noformat}
 bigtop-data-generators/bigtop-name-generator/src/main/resources/input\_data/namedb/namedb.info
 bigtop-data-generators/bigtop-location-data/src/main/resources/input\_data/ACS\_12\_5YR\_S1903/ACS\_12\_5YR\_S1903.txt
 bigtop-data-generators/bigtop-location-data/src/main/resources/input\_data/ACS\_12\_5YR\_S1903/ACS\_12\_5YR\_S1903\_metadata.csv
 bigtop-data-generators/bigtop-location-data/src/main/resources/input\_data/ACS\_12\_5YR\_S1903/ACS\_12\_5YR\_S1903\_with\_ann.csv
 bigtop-data-generators/bigtop-location-data/src/main/resources/input\_data/population\_data.csv
 bigtop-data-generators/bigtop-location-data/src/main/resources/input\_data/zips.csv
{noformat}


---

* [BIGTOP-1991](https://issues.apache.org/jira/browse/BIGTOP-1991) | *Minor* | **Add BigTop Weatherman**

Weatherman is a stochastic model for weather simulation.  I had built it using components from BigPetStore's data generator.  

https://github.com/bigpetstore/bigpetstore-weather-generator

Should be imported into BigTop Data Generators


---

* [BIGTOP-1990](https://issues.apache.org/jira/browse/BIGTOP-1990) | *Minor* | **Add gradle multi-project build files for bigtop-data-generators**

To make it easier to build the BigTop Data Generators, we should add a Gradle multi-project build.


---

* [BIGTOP-1987](https://issues.apache.org/jira/browse/BIGTOP-1987) | *Major* | **Recover resources/kmeans\_data.txt for Spark smokes**

While I did upgrade Spark version, I deleted a resource file for Spark smokes accidentally. This file should be recovered.


---

* [BIGTOP-1986](https://issues.apache.org/jira/browse/BIGTOP-1986) | *Minor* | **Extract location dataset from BigPetStore data generator**

Extract location dataset from BigPetStore data generator


---

* [BIGTOP-1985](https://issues.apache.org/jira/browse/BIGTOP-1985) | *Minor* | **Extract name generator from BigPetStore data generator**

Extract name generator from BigPetStore data generator


---

* [BIGTOP-1984](https://issues.apache.org/jira/browse/BIGTOP-1984) | *Minor* | **Extract samplers library from BigPetStore data generator**

Extract samplers library from BigPetStore data generator.


---

* [BIGTOP-1983](https://issues.apache.org/jira/browse/BIGTOP-1983) | *Minor* | **Move BigPetStore data generator to bigtop-data-generators**

Move bigpetstore-data-generator to bigtop-data-generators


---

* [BIGTOP-1976](https://issues.apache.org/jira/browse/BIGTOP-1976) | *Minor* | **Replace Pair type with Apache Commons Lang Pair type**

Replace Pair type with Apache Commons Lang Pair type


---

* [BIGTOP-1975](https://issues.apache.org/jira/browse/BIGTOP-1975) | *Major* | **Smoke tests for Spark SQL**

Add a smoke test for Spark SQL using Spark's examples


---

* [BIGTOP-1974](https://issues.apache.org/jira/browse/BIGTOP-1974) | *Major* | **Revise SPARK\_HOME/conf/spark-env.sh**

Current spark-env.sh is a bit complex; It's not easy to read and edit. It would be nice to have a simplified spark-env.sh


---

* [BIGTOP-1973](https://issues.apache.org/jira/browse/BIGTOP-1973) | *Minor* | **Add new tests for HDFS Balancer functionality**

Add below tests related to HDFS admin module to the existing test class file TestHDFSBalancer.groovy:
    - test threshold with negative value.
    - test threshold with zero value.
    - test threshold with max value.


---

* [BIGTOP-1971](https://issues.apache.org/jira/browse/BIGTOP-1971) | *Major* | **Support Spark SQL CLI with Apache Hive out of the box**

Spark SQL supports reading and writing Apache Hive tables. To run the spark-sql CLI with Hive support, It's required $\{SPARK\_HOME\}/conf/hive-site.xml file, so, Bigtop should package the hive-site.xml for Spark SQL (with Hive support)


---

* [BIGTOP-1970](https://issues.apache.org/jira/browse/BIGTOP-1970) | *Major* | **Ignite IGFS now fully supports mutiltenancy: deployment should configure it with HDFS backing**

IGFS can work with HCFS as a secondary storage. Let's improve the puppet recipes to configure Ignite node in that way.


---

* [BIGTOP-1967](https://issues.apache.org/jira/browse/BIGTOP-1967) | *Major* | **Update the front-page of the website with new CI hostname**

We have a correct CNAME for the ci.bigtop.apache.org - let's use on the front page.


---

* [BIGTOP-1966](https://issues.apache.org/jira/browse/BIGTOP-1966) | *Blocker* | **site's index.xml is malformatted**

Trying to compile new version of website on the master I am hitting this error:

{code}
[ERROR] Failed to execute goal org.apache.maven.plugins:maven-site-plugin:3.3:site (default-cli) on project bigtop: Error during page generation: Error parsing '/biggy/workspaces/bigtop/src/site/xdoc/index.xml': line [81] Error parsing the model: end tag name \</ul\> must match start tag name \<p\> from line 78 (position: TEXT seen ...ackage tests and a job to build package\n\t\t\t\trepositories.\n\t\t\t\</ul\>... @81:9) -\> [Help 1]
{code}
This seems to be the result of BIGTOP-1916


---

* [BIGTOP-1965](https://issues.apache.org/jira/browse/BIGTOP-1965) | *Major* | **Remove the link to 0.8.0 from the website**

I have removed previous releases of the Bigtop from dist. So, we need to also reflect that 0.8 isn't there anymore on the website. Only 1.0 (the latest) should remain.


---

* [BIGTOP-1964](https://issues.apache.org/jira/browse/BIGTOP-1964) | *Major* | **Upgrade Tez version to 0.6.2**

Upgrade Tez version to 0.6.2


---

* [BIGTOP-1963](https://issues.apache.org/jira/browse/BIGTOP-1963) | *Major* | **Upgrade Mahout to 0.11.0**

Bump up Mahout version to 0.11.0, Expecting enhancement on Spark support


---

* [BIGTOP-1960](https://issues.apache.org/jira/browse/BIGTOP-1960) | *Minor* | **The smoke-test wrapper in bigtop-deploy can only be used in redhat series of Linux**

In {{bigtop-deploy/vm/utils/smoke-tests.sh}}, the JAVA\_HOME is hard coded to  {{/usr/lib/jvm/java-openjdk}} which cause the smoke test failed to run on debian, ubuntu, etc. We should auto detect the JAVA\_HOME by leveraging bigtop-utils so that it supports all the OS bigtop supported.


---

* [BIGTOP-1958](https://issues.apache.org/jira/browse/BIGTOP-1958) | *Blocker* | **Upgrade default repositories and docker images to 1.0**

The default repositories in puppet recipes and bigtop provisioner configurations are still 0.8.0. We should upgrade them to 1.0.0 repo and switch the docker image to 1.0 version as well.


---

* [BIGTOP-1956](https://issues.apache.org/jira/browse/BIGTOP-1956) | *Major* | **Multi RS HBase requires unique hbase.tmp.dir to be set for each RS on a node**

In a multi RS set-up of HBase, each RS instance need to have a unique "hbase.tmp.dir" without which starting of RS automatically at the same time will fail if HBase coprocessors are used due to contention on the temp directory.


---

* [BIGTOP-1955](https://issues.apache.org/jira/browse/BIGTOP-1955) | *Major* | **Upgrade Ignite Hadoop component version from 1.2.0 to 1.3.0**

Since Apache Ignite version 1.3.0 was released, we should upgrade its version in BigTop to 1.3.0.


---

* [BIGTOP-1954](https://issues.apache.org/jira/browse/BIGTOP-1954) | *Major* | **Change the component name in the MAINTAINERS.txt**

MAINTAINERS.txt has {{gridgain-hadoop}} component. Should be {{ignite-hadoop}}


---

* [BIGTOP-1953](https://issues.apache.org/jira/browse/BIGTOP-1953) | *Major* | **Upgrade bigtop\_toolchain to Maven 3.3.3**

In order to upgrade to Spark 1.5.0 once it is released (~Sep 2015), we will need to upgrade the Bigtop toolchain to Maven 3.3.3 due to https://issues.apache.org/jira/browse/SPARK-9521.


---

* [BIGTOP-1951](https://issues.apache.org/jira/browse/BIGTOP-1951) | *Blocker* | **Fix licenses in the source files**

The following files are missing ASL header
{code}
  bigtop-deploy/puppet/modules/hue/templates/hue.ini
  bigtop-deploy/puppet/modules/tachyon/templates/log4j.properties
  bigtop-deploy/puppet/modules/tachyon/templates/tachyon-env.sh
  bigtop-deploy/vm/utils/smoke-tests.sh
  bigtop-deploy/vm/vagrant-puppet-docker/boot2docker/Vagrantfile
  bigtop-deploy/vm/vagrant-puppet-docker/vagrantconfig.yaml
  bigtop-deploy/vm/vagrant-puppet-docker/vagrantconfig\_debian.yaml
  bigtop-deploy/vm/vagrant-puppet-docker/docker-hadoop.sh
  bigtop-deploy/vm/vagrant-puppet-vm/vagrantconfig.yaml
  bigtop-deploy/vm/vagrant-puppet-openstack/para-provision.sh
  bigtop-deploy/vm/vagrant-puppet-openstack/vagrantconfig.yaml
  bigtop-ci/jenkins/jobsCreator.groovy
  MAINTAINERS.txt
  docker/bigtop-puppet/centos-6/Dockerfile
  docker/bigtop-puppet/centos-6/build.sh
  docker/bigtop-puppet/centos-7/Dockerfile
  docker/bigtop-puppet/centos-7/build.sh
  docker/bigtop-puppet/debian-8/Dockerfile
  docker/bigtop-puppet/debian-8/build.sh
  docker/bigtop-puppet/fedora-20/Dockerfile
  docker/bigtop-puppet/fedora-20/build.sh
  docker/bigtop-puppet/opensuse-13.2/Dockerfile
  docker/bigtop-puppet/opensuse-13.2/build.sh
  docker/bigtop-puppet/ubuntu-14.04/Dockerfile
  docker/bigtop-puppet/ubuntu-14.04/build.sh
  bigtop-bigpetstore/README.md
  bigtop-bigpetstore/bigpetstore-data-generator/README.md
  bigtop-bigpetstore/bigpetstore-spark/README.md
  bigtop-bigpetstore/bigpetstore-spark/src/test/scala/org/apache/bigpetstore/spark/TestFullPipeline.scala
  bigtop-bigpetstore/bigpetstore-transaction-queue/Dockerfile
  bigtop-bigpetstore/bigpetstore-transaction-queue/README.md
  bigtop-bigpetstore/bigpetstore-transaction-queue/build.gradle
{code}


---

* [BIGTOP-1950](https://issues.apache.org/jira/browse/BIGTOP-1950) | *Blocker* | **Upgrade maven-assembly plugin: StackOverFlowException is thrown**

During the {{fatjar}} creation an NPE is thrown by maven-assembly plugin. A bit of investigation shows that it is caused by StackOverflowException.

The upgrade to 2.5.5 seems to solve the issue.


---

* [BIGTOP-1949](https://issues.apache.org/jira/browse/BIGTOP-1949) | *Blocker* | **Sqoop 1.4.5 artifacts aren't getting resolved in the release...**

test-artifacts can not be deployed nor verified. the following message is getting thrown from the maven run:

{verbatim}
[ERROR] Failed to execute goal on project sqoop-smoke: Could not resolve dependencies for project org.apache.bigtop.itest:sqoop-smoke:jar:1.0.0: The following artifacts could not be resolved: org.apache.sqoop:sqoop-core:jar:1.4.5, org.apache.sqoop:sqoop-client:jar:1.4.5: Could not find artifact org.apache.sqoop:sqoop-core:jar:1.4.5 in central (http://repo.maven.apache.org/maven2) -\> [Help 1]
{verbatim}
Indeed https://repo1.maven.org/maven2/org/apache/sqoop/ does have nothing of the sort. Does Sqoop community still publish 1.4.\* artifacts at all?


---

* [BIGTOP-1947](https://issues.apache.org/jira/browse/BIGTOP-1947) | *Major* | **Fix RAT plugin configuration to be able to RAT-validate all published artifacts**

Right now an attempt to run {{mvn deploy -Prelease -f bigtop-test-framework/pom.xml}} will fail the RAT-check because some of the static test data files don't have ASL header. This needs to be properly excluded from the validation.


---

* [BIGTOP-1946](https://issues.apache.org/jira/browse/BIGTOP-1946) | *Blocker* | **Missing ASL header in some of iTest files**

The following files are missing the ASL headers
{code}
bigtop-test-framework/src/main/groovy/org/apache/bigtop/itest/failures/FailureExecutor.groovy
bigtop-test-framework/src/main/groovy/org/apache/bigtop/itest/failures/FailureVars.groovy
{code}


---

* [BIGTOP-1943](https://issues.apache.org/jira/browse/BIGTOP-1943) | *Major* | **Upgrade SCALA version to 2.10.4**

Bump up Scala version 2.10.4

Apache Phoenix 4.5+ depends on 2.10.4 at least.


---

* [BIGTOP-1941](https://issues.apache.org/jira/browse/BIGTOP-1941) | *Major* | **Upgrade Phoenix to 4.4.0**

From Phoenix 4.4.0, there are support for Spark and new queryserver. It would be nice to have awesome features on Bigtop.


---

* [BIGTOP-1938](https://issues.apache.org/jira/browse/BIGTOP-1938) | *Major* | **kafka packages /usr/bin on RPM**

one cannot install kafka at least on centos7 since it packages /usr/bin which conflicts with a system package.


---

* [BIGTOP-1937](https://issues.apache.org/jira/browse/BIGTOP-1937) | *Major* | **redhat-lsb is required by kafka daemon**

The Kafka daemon require "redhat-lsb\* to be installed first so that it can successfully bring the daemon up.
{code}
root@fcf41830c410 /]# service kafka-server status
/etc/init.d/kafka-server: line 34: /lib/lsb/init-functions: No such file or directory
/etc/init.d/kafka-server: line 134: pidofproc: command not found
/etc/init.d/kafka-server: line 155: log\_failure\_msg: command not found
{code}


---

* [BIGTOP-1936](https://issues.apache.org/jira/browse/BIGTOP-1936) | *Major* | **Provide JDK8 for Bigtop**

This issue aims at providing an JDK8 to bigtop\_toolchain.

Is a prerequiste for some components, for instance presto


---

* [BIGTOP-1925](https://issues.apache.org/jira/browse/BIGTOP-1925) | *Trivial* | **Add ywkim as a maintainer for YCSB**

Once YCSB get in on Bigtop, I'll maintain the component.


---

* [BIGTOP-1923](https://issues.apache.org/jira/browse/BIGTOP-1923) | *Major* | **Bump Ignite to 1.2 with major fixes**

Let's bump Ignite to the latest 1.2 to take advantage of all latest improvements and updates. As an exception, I propose to get it into pending 1.0 branch as well.


---

* [BIGTOP-1921](https://issues.apache.org/jira/browse/BIGTOP-1921) | *Minor* | **Puppet recipe for YCSB**

Puppet recipe for YCSB(BIGTOP-1920)


---

* [BIGTOP-1920](https://issues.apache.org/jira/browse/BIGTOP-1920) | *Minor* | **Include YCSB in Bigtop**

Yahoo! Cloud Serving Benchmark (YCSB) [1][2] is a widely used benchmark tool for NoSQL databases and other data stores. It would be useful if Bigtop has that as a component to provide a benchmark tool for Apache HBase. Currently there is no YCSB binding for Apache Phoenix but Hopefully, Phoenix would use it to benchmark and evaluate the performance in near future

[1] https://github.com/brianfrankcooper/YCSB/wiki
[2] http://labs.yahoo.com/news/yahoo-cloud-serving-benchmark/


---

* [BIGTOP-1917](https://issues.apache.org/jira/browse/BIGTOP-1917) | *Major* | **Simplify gradle creating apt/yum repositories for better CI**

I propose to simplify the {{packages.gradle}} in order to better support the new docker based CI .

So all the target-yum / target-apt tagets have been removed and a simple repository creation is done by gradle yum/apt which can be run after all packages have been done. Complexity of gradle is removed as a side effect.

In the CI the only thing to be done is to schedule a "gradle yum/apt" .

Maybe we have to discuss to remove the dependencies at all in order to generate \*anything\* if something failed before.


---

* [BIGTOP-1916](https://issues.apache.org/jira/browse/BIGTOP-1916) | *Major* | **Update Website for 1.0**

Will provide a first patch to remove obsolete infos from website.

Is it consensus we will use the wiki for documentation?


---

* [BIGTOP-1914](https://issues.apache.org/jira/browse/BIGTOP-1914) | *Trivial* | **improve puppet README.md file**

I'm propose to improve readability of README file for puppet deployment.


---

* [BIGTOP-1913](https://issues.apache.org/jira/browse/BIGTOP-1913) | *Major* | **Update hive to 1.2.1**

I had issues with complex data structures in 1.0.0. 

Building hive-1.2.1 was surprisingly easy and the issues I had before (jline jar incompatibilites) seems to be fixed by a recent zookeeper update.


---

* [BIGTOP-1910](https://issues.apache.org/jira/browse/BIGTOP-1910) | *Major* | **Adjust the dependency for hue-beeswax**

Recent HUE beeswax does not use beeswax daemon. It just connect hiveserver2 through Thrift. So hue-beeswax does not need 'hive' as a dependency anymore.


---

* [BIGTOP-1909](https://issues.apache.org/jira/browse/BIGTOP-1909) | *Trivial* | **Include compiled .mo files for HUE i18n**

Compiled .mo files are missing. It would be good to have the files for HUE i18n.


---

* [BIGTOP-1902](https://issues.apache.org/jira/browse/BIGTOP-1902) | *Trivial* | **typo in bigtop-deploy/vm/vagrant-puppet-vm/vagrantconfig.yaml**

so `mapreduce` is typed as `mapredcue` which is not that big of a deal, because if users set `run\_smoke\_tests: true` the smoke tests of mapreduce will run smoothly  because it's spelled right in bigtop-deploy/vm/utils/smoke-tests.sh ... but still.


---

* [BIGTOP-1898](https://issues.apache.org/jira/browse/BIGTOP-1898) | *Major* | **Dockerfiles to build bigtop/puppet docker images for 1.0 release**

Since we're upgrading supported OS in 1.0 release(see BIGTOP-1480), all the provided bigtop docker images must be upgraded to proper version as well.
This is also the building block of CI overhaul because all the CI jobs are now running in containers.
The draft version of dockerfiles can be found [here\|https://github.com/evans-ye/bigtop-dockerfiles]. I'll upload a patch once all the image has been tested.


---

* [BIGTOP-1896](https://issues.apache.org/jira/browse/BIGTOP-1896) | *Major* | **bigtop\_toolchain broken bei ant update**

apache-ant-1.9.4-bin.zip has been removed from servers.

We should provide a more robust toolchain support...


---

* [BIGTOP-1894](https://issues.apache.org/jira/browse/BIGTOP-1894) | *Major* | **Snappy development packages are missing from bigtop\_toolchain**

bigtop\_toolchain does not install snappy development packages.


---

* [BIGTOP-1893](https://issues.apache.org/jira/browse/BIGTOP-1893) | *Major* | **Compilation of hadoop-yarn-client failed**

When I tried buid rpm packages of bigtop distribution on current master via gradle:

{noformat}
./gradlew rpm
{noformat}

Compilation of component hadoop-yarn-project fails:

{noformat}
[ERROR] Failed to execute goal org.apache.maven.plugins:maven-compiler-plugin:2.5.1:testCompile (default-testCompile) on project hadoop-yarn-client: Compilation failure
[ERROR] /opt/bigtop/build/hadoop/rpm/BUILD/hadoop-2.6.0-src/hadoop-yarn-project/hadoop-yarn/hadoop-yarn-client/src/test/java/org/apache/hadoop/yarn/client/cli/TestYarnCLI.java:[70,30] error: package org.jboss.netty.logging does not exist
{noformat}

{code:java\|title=referenced line in TestYarnCLI.java}
import org.jboss.netty.logging.CommonsLoggerFactory;
{code}


---

* [BIGTOP-1892](https://issues.apache.org/jira/browse/BIGTOP-1892) | *Minor* | **Current required version of gradle 2.4 is not used everywhere**

Based on the current state of puppet orchestration, Bigtop requires gradle 2.4, but this is not used/stated on all places.


---

* [BIGTOP-1888](https://issues.apache.org/jira/browse/BIGTOP-1888) | *Minor* | **Upgrade Flume to 1.6.0**

Bump up Flume version to 1.6.0

In this Flume release has many fixes and improvements, especially it looks that Kafka integration has been improved [1]

[1]. http://flume.apache.org/releases/1.6.0.html


---

* [BIGTOP-1886](https://issues.apache.org/jira/browse/BIGTOP-1886) | *Minor* | **Kafka server can not create a log-cleaner.log file**

{noformat}
$ cat /var/log/kafka/kafka-server.out

log4j:ERROR setFile(null,true) call failed.
java.io.FileNotFoundException: log-cleaner.log (Permission denied)
	at java.io.FileOutputStream.open(Native Method)
	at java.io.FileOutputStream.\<init\>(FileOutputStream.java:221)
	at java.io.FileOutputStream.\<init\>(FileOutputStream.java:142)
	at org.apache.log4j.FileAppender.setFile(FileAppender.java:294)
	at org.apache.log4j.FileAppender.activateOptions(FileAppender.java:165)
	at org.apache.log4j.DailyRollingFileAppender.activateOptions(DailyRollingFileAppender.java:223)
	at org.apache.log4j.config.PropertySetter.activate(PropertySetter.java:307)
	at org.apache.log4j.config.PropertySetter.setProperties(PropertySetter.java:172)
	at org.apache.log4j.config.PropertySetter.setProperties(PropertySetter.java:104)
	at org.apache.log4j.PropertyConfigurator.parseAppender(PropertyConfigurator.java:809)
	at org.apache.log4j.PropertyConfigurator.parseCategory(PropertyConfigurator.java:735)
	at org.apache.log4j.PropertyConfigurator.parseCatsAndRenderers(PropertyConfigurator.java:639)
	at org.apache.log4j.PropertyConfigurator.doConfigure(PropertyConfigurator.java:504)
	at org.apache.log4j.PropertyConfigurator.doConfigure(PropertyConfigurator.java:547)
	at org.apache.log4j.helpers.OptionConverter.selectAndConfigure(OptionConverter.java:483)
	at org.apache.log4j.LogManager.\<clinit\>(LogManager.java:127)
	at org.apache.log4j.Logger.getLogger(Logger.java:104)
	at kafka.utils.Logging$class.logger(Logging.scala:24)
	at kafka.utils.VerifiableProperties.logger$lzycompute(VerifiableProperties.scala:24)
	at kafka.utils.VerifiableProperties.logger(VerifiableProperties.scala:24)
	at kafka.utils.Logging$class.info(Logging.scala:67)
	at kafka.utils.VerifiableProperties.info(VerifiableProperties.scala:24)
	at kafka.utils.VerifiableProperties.verify(VerifiableProperties.scala:197)
	at kafka.server.KafkaConfig.\<init\>(KafkaConfig.scala:32)
	at kafka.Kafka$.main(Kafka.scala:35)
	at kafka.Kafka.main(Kafka.scala)
...
{noformat}

The 'log-cleaner.log' should be {code}${kafka.logs.dir}/log-cleaner.log{code}. Like this:
{code}
log4j.appender.cleanerAppender.File=${kafka.logs.dir}/log-cleaner.log
{code}

This is fixed by KAFKA-1251 but 0.8.1.x does not have that.


---

* [BIGTOP-1877](https://issues.apache.org/jira/browse/BIGTOP-1877) | *Major* | **Upgrade Crunch to 0.12.0**

Recent release of Apache Crunch added a bunch of  features and improvements. eg., Spark, ORC support ...


---

* [BIGTOP-1838](https://issues.apache.org/jira/browse/BIGTOP-1838) | *Minor* | **Pig build does not publish artifacts of build**

The pig build does not execute the mvn-install target. This means that other pieces of the bigtop ecosystem do not pick up the correct pig dependencies from the bigtop build. Instead, they pick them up from the central maven repository (or they fail to find them if a bigtop has pig version that is not publicly released).

This is a problem because builds like datafu pick up their pig dependency via ivy and they are not able to do so.


---

* [BIGTOP-1821](https://issues.apache.org/jira/browse/BIGTOP-1821) | *Major* | **Add smoke tests for Ignite Hadoop Bigtop module**

The tests should be reworked from former GridGain smoke tests.


---

* [BIGTOP-1809](https://issues.apache.org/jira/browse/BIGTOP-1809) | *Critical* | **Remove gridgain-hadoop component once ignite-hadoop gets added**

GridGain Hadoop superseded by Ignite Hadoop.
Once ignite-hadoop added to BigTop, gridgain should be removed from there.

See https://issues.apache.org/jira/browse/BIGTOP-1806


---

* [BIGTOP-1805](https://issues.apache.org/jira/browse/BIGTOP-1805) | *Major* | **Upgrade Hadoop to 2.7 if released**

YARN-2815 (included in hadoop-2.7) blocks BIGTOP-1701 (upgrade to hive-1.1.0)  since incompatible jline Libraries in hadoop-2.6 and hive-1.1.0 are being used.


---

* [BIGTOP-1795](https://issues.apache.org/jira/browse/BIGTOP-1795) | *Major* | **Upgrade bigtop\_toolchain to Maven 3.2.5**

Zeppelin (see BIGTOP-1769 for main Zeppelin Integration JIRA) requires Maven 3.1+ as of https://github.com/apache/incubator-zeppelin/commit/2498e5d


---

* [BIGTOP-1746](https://issues.apache.org/jira/browse/BIGTOP-1746) | *Major* | **Introduce the concept of roles in bigtop cluster deployment**

Currently, during cluster deployment, puppet categorizes nodes as head\_node, worker\_nodes, gateway\_nodes, standy\_node based on user specified info. This functionality gives user control over picking up a particular node as head\_node, standy\_node, gateway\_node and rest others as worker\_nodes. But, I woulld like to have more fine-grained control on which deamons should run on which node. For example, I do not want to run namenode, datanode on the same node. This functionality can be introduced with the concept of roles. Each node can be assigned a set of role. For example, Node A can be assigned ["namenode", "resourcemanager"] roles. Node B can be assigned ["datanode", "nodemanager"] and Node C can be assigned ["nodemanager", "hadoop-client"]. Now, each node will only run the specified daemons. Prerequisite for this kind of deployment is that each node should be given the necessary configurations that it needs to know. For example, each datanode should know which is the namenode etc... This functionality will allow users to customize the cluster deployment according to their needs.


---

* [BIGTOP-1494](https://issues.apache.org/jira/browse/BIGTOP-1494) | *Major* | **Introduce Groovy DSL to replace bigtop.mk**

 Seems confusing to have a {{.mk}} file which is mostly just a bunch of variable declarations, which is then parsed as a CSV, simply for the sake of guiding the {{packages.gradle}} file .  

Can we be more idiomatic to gradle and either eliminate {{bigtop.mk}} by making it into a native gradle data structure (its really just an array,  and we can  declare in gradle.settings) , so that the {{readBOM}} function is easier to follow ?

I think it is an entry point to understanding bigtop's build system so we should try to simplify it as much as possible to make it maximally easy for people to understand how bigtop's gradle packaging system works.


---

* [BIGTOP-1344](https://issues.apache.org/jira/browse/BIGTOP-1344) | *Major* | **spec files assume RPMs being built on Red Hat**

It would appear the spec files have the locations of brp-compress, etc in the \_\_os\_install\_post stanza are hard-coded with Red Hat paths.  If you try to build RPMs on, for example, an Amazon AMI (and probably OEL as well), those programs are not located there.


---

* [BIGTOP-1149](https://issues.apache.org/jira/browse/BIGTOP-1149) | *Major* | **Package Kite**

I was looking into morphline and Apache Flume and noticed that CDK was needed in order to get the morphline jars.

So let's package morphline so other projects can benefit from it!


---

* [BIGTOP-1126](https://issues.apache.org/jira/browse/BIGTOP-1126) | *Major* | **Add Hama to Bigtop**

Hama is being excluded since 0.4 version. Since latest Hama version is compatible with Hadoop 2, we can start to integrate.



