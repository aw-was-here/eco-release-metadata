
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
# Apache BigTop  1.0.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [BIGTOP-1958](https://issues.apache.org/jira/browse/BIGTOP-1958) | *Blocker* | **Upgrade default repositories and docker images to 1.0**

The default repositories in puppet recipes and bigtop provisioner configurations are still 0.8.0. We should upgrade them to 1.0.0 repo and switch the docker image to 1.0 version as well.


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
[ERROR] Failed to execute goal on project sqoop-smoke: Could not resolve dependencies for project org.apache.bigtop.itest:sqoop-smoke:jar:1.0.0: The following artifacts could not be resolved: org.apache.sqoop:sqoop-core:jar:1.4.5, org.apache.sqoop:sqoop-client:jar:1.4.5: Could not find artifact org.apache.sqoop:sqoop-core:jar:1.4.5 in central (http://repo.maven.apache.org/maven2) -> [Help 1]
{verbatim}
Indeed https://repo1.maven.org/maven2/org/apache/sqoop/ does have nothing of the sort. Does Sqoop community still publish 1.4.* artifacts at all?


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

* [BIGTOP-1939](https://issues.apache.org/jira/browse/BIGTOP-1939) | *Trivial* | **Enable basic hdfs-nfs gateway configuration**

Enable basic configuration of the HDFS-NFS in core-site.xml.

Four additional parameters to hadoop::common\_hdfs are added:

hdfs\_nfs\_bridge (to be set to "enabled")
hdfs\_nfs\_bridge\_user (the user who will start the nfs gateway)
hdfs\_nfs\_gw\_host (the host where the gateway will run)
hdfs\_nfs\_proxy\_groups (the groups that the nfs\_user will proxy for)

This configuration is described here:

https://hadoop.apache.org/docs/r2.6.0/hadoop-project-dist/hadoop-hdfs/HdfsNfsGateway.html


---

* [BIGTOP-1938](https://issues.apache.org/jira/browse/BIGTOP-1938) | *Major* | **kafka packages /usr/bin on RPM**

one cannot install kafka at least on centos7 since it packages /usr/bin which conflicts with a system package.


---

* [BIGTOP-1937](https://issues.apache.org/jira/browse/BIGTOP-1937) | *Major* | **redhat-lsb is required by kafka daemon**

The Kafka daemon require "redhat-lsb* to be installed first so that it can successfully bring the daemon up.
{code}
root@fcf41830c410 /]# service kafka-server status
/etc/init.d/kafka-server: line 34: /lib/lsb/init-functions: No such file or directory
/etc/init.d/kafka-server: line 134: pidofproc: command not found
/etc/init.d/kafka-server: line 155: log\_failure\_msg: command not found
{code}


---

* [BIGTOP-1932](https://issues.apache.org/jira/browse/BIGTOP-1932) | *Major* | **[BigPetStore] Add larger product collection**

Using the new product generator feature from [BIGTOP-1918], we should add a product collection which adds more fields to the existing products, resulting in more products.


---

* [BIGTOP-1931](https://issues.apache.org/jira/browse/BIGTOP-1931) | *Major* | **Add multinomial product purchasing model to BPS Data Generator**

My recent analysis have found problems with our [Markov models|http://rnowling.github.io/math/2015/07/06/bps-product-markov-model.html].  I proposed a [multinomial model|http://rnowling.github.io/math/2015/07/07/bps-product-multinomial.html] and demonstrated that it could produce data amenable to [segmentation|http://rnowling.github.io/math/2015/07/11/customer-segmentation-bps-multinomial.html].  I'd like to add this multinomial model to the BPS data generator, make it the new default model, and evaluate it for a while.


---

* [BIGTOP-1923](https://issues.apache.org/jira/browse/BIGTOP-1923) | *Major* | **Bump Ignite to 1.2 with major fixes**

Let's bump Ignite to the latest 1.2 to take advantage of all latest improvements and updates. As an exception, I propose to get it into pending 1.0 branch as well.


---

* [BIGTOP-1919](https://issues.apache.org/jira/browse/BIGTOP-1919) | *Minor* | **Remove fixConditional methods in BPS data generator**

The fixConditional methods are unused, just adding to code bloat.  They would have been better implemented through composition anyway.


---

* [BIGTOP-1918](https://issues.apache.org/jira/browse/BIGTOP-1918) | *Major* | **Add product enumeration to BPS data generator**

The BigPetStore data generator currently reads products from a JSON file.  Manually creating entries is time consuming and limits our ability to add products with lots of fields.  We want more fields so we can generate a wider range of patterns.

I suggest adding a product generator which takes a description of every field and its possible values and generates a Cartesian product of every possible product.  Logical rules for be used for filtering out certain combinations.  This will significantly reduce the effort required to add a large number of products.


---

* [BIGTOP-1902](https://issues.apache.org/jira/browse/BIGTOP-1902) | *Trivial* | **typo in bigtop-deploy/vm/vagrant-puppet-vm/vagrantconfig.yaml**

so `mapreduce` is typed as `mapredcue` which is not that big of a deal, because if users set `run\_smoke\_tests: true` the smoke tests of mapreduce will run smoothly  because it's spelled right in bigtop-deploy/vm/utils/smoke-tests.sh ... but still.


---

* [BIGTOP-1900](https://issues.apache.org/jira/browse/BIGTOP-1900) | *Major* | **Upgrade bigtop/slaves images on bigtop's dockerhub**

Same reason with BIGTOP-1898, we'll need to build new set of [bigtop/slaves|https://registry.hub.docker.com/u/bigtop/slaves/tags/manage/] images for those supported OSs. A simple way to do this is to setup a [CI job|http://bigtop01.cloudera.org:8080/view/Docker/job/Docker-Toolchain-Evans/] which spin up containers and runs bigtop\_toolchain in side containers to have packages installed. Then we can manually commit and push images up to dockerhub.
This is also blocking 1.0 release since the build process requires build/slaves images.


---

* [BIGTOP-1896](https://issues.apache.org/jira/browse/BIGTOP-1896) | *Major* | **bigtop\_toolchain broken bei ant update**

apache-ant-1.9.4-bin.zip has been removed from servers.

We should provide a more robust toolchain support...


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

{code:java|title=referenced line in TestYarnCLI.java}
import org.jboss.netty.logging.CommonsLoggerFactory;
{code}


---

* [BIGTOP-1886](https://issues.apache.org/jira/browse/BIGTOP-1886) | *Minor* | **Kafka server can not create a log-cleaner.log file**

{noformat}
$ cat /var/log/kafka/kafka-server.out

log4j:ERROR setFile(null,true) call failed.
java.io.FileNotFoundException: log-cleaner.log (Permission denied)
	at java.io.FileOutputStream.open(Native Method)
	at java.io.FileOutputStream.<init>(FileOutputStream.java:221)
	at java.io.FileOutputStream.<init>(FileOutputStream.java:142)
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
	at org.apache.log4j.LogManager.<clinit>(LogManager.java:127)
	at org.apache.log4j.Logger.getLogger(Logger.java:104)
	at kafka.utils.Logging$class.logger(Logging.scala:24)
	at kafka.utils.VerifiableProperties.logger$lzycompute(VerifiableProperties.scala:24)
	at kafka.utils.VerifiableProperties.logger(VerifiableProperties.scala:24)
	at kafka.utils.Logging$class.info(Logging.scala:67)
	at kafka.utils.VerifiableProperties.info(VerifiableProperties.scala:24)
	at kafka.utils.VerifiableProperties.verify(VerifiableProperties.scala:197)
	at kafka.server.KafkaConfig.<init>(KafkaConfig.scala:32)
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

* [BIGTOP-1879](https://issues.apache.org/jira/browse/BIGTOP-1879) | *Major* | **vagrant-puppet-vm is broken**

I ran into following issue:
{noformat}
$ vagrant up

...

==> bigtop1: Error: Unknown function is\_array at /tmp/vagrant-puppet/manifests-f76206f1841b10444f0cea13160540f3/cluster.pp:24 on node bigtop1.vagrant
==> bigtop1: Error: Unknown function is\_array at /tmp/vagrant-puppet/manifests-f76206f1841b10444f0cea13160540f3/cluster.pp:24 on node bigtop1.vagrant

{noformat}


---

* [BIGTOP-1876](https://issues.apache.org/jira/browse/BIGTOP-1876) | *Major* | **Update puppet recipes for Sqoop2**

We included Sqoop 1.4.x and renamed sqoop 1.99.x to sqoop2. So, appropriate updates should be applied to puppet recipes for sqoop2 as well.


---

* [BIGTOP-1875](https://issues.apache.org/jira/browse/BIGTOP-1875) | *Major* | **Oozie build failed due to Codehaus repository is out of service**

Some problem here to Oozie as BIGTOP-1874. The failure log is can be found here:
[Oozie nightly build|http://bigtop01.cloudera.org:8080/view/Bigtop-trunk/job/Docker-Bigtop-trunk-Oozie/BUILD\_ENVIRONMENTS=centos-6,label=docker-slave-03/29/console].


---

* [BIGTOP-1874](https://issues.apache.org/jira/browse/BIGTOP-1874) | *Major* | **HBase build failed due to Codehaus repository is out of service**

It seems that the codehaus repo is out of service and causing the hbase build not being able to download its dependencies . I encounter this first on the [HBase nightly build|http://bigtop01.cloudera.org:8080/view/Bigtop-trunk/job/Docker-Bigtop-trunk-HBase/BUILD\_ENVIRONMENTS=centos-6,label=docker-slave-03/34/console], then manually tested on 4 docker build slaves separately. The results are consistent.


---

* [BIGTOP-1873](https://issues.apache.org/jira/browse/BIGTOP-1873) | *Minor* | **Puppet apt module version must be 2.0.1 or above after BIGTOP-1870**

The behavior change happened in the newest puppet apt module is not backward compatible, hence we need to adopt new implementation in our puppet recipes and document down that the old veriosn of apt module is no longer supported.


---

* [BIGTOP-1872](https://issues.apache.org/jira/browse/BIGTOP-1872) | *Blocker* | **Improve HUE puppet recipies**

Duplicates BIGTOP-1799

and introduces a whole range of new variables to customize hue..

Timezones, Authentication (Specifically LDAP), HA Resource Managers ..,


---

* [BIGTOP-1870](https://issues.apache.org/jira/browse/BIGTOP-1870) | *Major* | **Latest version of Puppet::Apt doesn't work for our deployment recipes**

An attempt to deploy the cluster is producing 
{noformat}
Invalid parameter disable\_keys
{noformat}
It seems that with the latest version of Puppet::Apt module (2.0.1) the following two parameters are no longer valid 
- disable\_keys
- include\_src

We have an option to pin version 1.8.0 of the Apt module, or fix our deployment recipes. [~evans\_ye] is it possible for you to take a look at it? Thanks!


---

* [BIGTOP-1869](https://issues.apache.org/jira/browse/BIGTOP-1869) | *Blocker* | **Hue 3.8.1 refinements**

* bigtop.bom was missing from Sources (rpm)
* centos7 did not pack properly since lib64 is a symlink
* libyaml development headers now needed (all)
* Increase compat level to fix lintian errors (deb)
* useradmin app was missing (all)
* fix python depedencies of hue-common (deb)
* fix shlib dependencies on architecture independent packages (deb)


---

* [BIGTOP-1868](https://issues.apache.org/jira/browse/BIGTOP-1868) | *Major* | **Address the custom 'clean' warning**

after upgrade to Gradle 2.4 the following warning appears in the build:
{noformat}
Defining custom 'clean' task when using the standard Gradle lifecycle plugins has been deprecated and is scheduled to be removed in Gradle 3.0
{noformat}
Let's get rid of it.


---

* [BIGTOP-1867](https://issues.apache.org/jira/browse/BIGTOP-1867) | *Major* | **Upgrade Gradle version to 2.4**

We are running an awfully old version of Gradle. Let's upgrade to 2.4


---

* [BIGTOP-1866](https://issues.apache.org/jira/browse/BIGTOP-1866) | *Major* | **openssl-devel is required by hue RPM package**

The hue package doesn't build on centos 7 and fedora 20 container:
{code}
18:35:00  :hue-rpmerror: Failed build dependencies:
18:35:00  	openssl is needed by hue-3.7.1-1.el7.centos.x86\_64
18:35:00  
18:35:00  Installing /ws/output/hue/hue-3.7.1-1.el7.centos.src.rpm
18:35:00  :hue-rpm FAILED
18:35:00  
18:35:00  FAILURE: Build failed with an exception.
18:35:00  
18:35:00  * Where:
18:35:00  Script '/ws/packages.gradle' line: 420
18:35:00  
18:35:00  * What went wrong:
18:35:00  Execution failed for task ':hue-rpm'.
18:35:00  > Process 'command 'rpmbuild'' finished with non-zero exit value 1
18:35:00  
18:35:00  * Try:
18:35:00  Run with --stacktrace option to get the stack trace. Run with --info or --debug option to get more log output.
18:35:00  
18:35:00  BUILD FAILED
18:35:00  
18:35:00  Total time: 59.451 secs
18:35:05  Build step 'Execute shell' marked build as failure
18:35:05  Archiving artifacts
18:35:10  Finished: FAILURE
{code}
The openssl package can be installed as openssl-devel's dependency on most of the Linux distro., but this does not stand in centos 7 and fedora 20. We should explicitly specify the package to be installed in toolchain.


---

* [BIGTOP-1862](https://issues.apache.org/jira/browse/BIGTOP-1862) | *Major* | **Add release download link to the front page of the website**

To support Bigtop trademark registration we were asked to add "Download" link to the front page of the website.


---

* [BIGTOP-1860](https://issues.apache.org/jira/browse/BIGTOP-1860) | *Major* | **ignite-hadoop release URL should point to apache dist server, not a mirror**

I have noticed that {{IGNITE\_HADOOP\_DOWNLOAD\_PATH}} in the BOM points to an Apache mirror, instead of Apache dist. Should be fixed, to avoid potentially malicious mirrors.

later on we will probably switch to the use of ASF affinity locator so the closest mirror will be selected.


---

* [BIGTOP-1859](https://issues.apache.org/jira/browse/BIGTOP-1859) | *Major* | **Unable to build Hue packages on Amazon Linux**

The Hue install script has a minor issue that prevents build of Hue RPMs on Amazon Linux.

{noformat}
rm: cannot remove 'build/env/lib/python*/site-packages/*.dist-info/RECORD': No such file or directory
error: Bad exit status from /var/tmp/rpm-tmp.JLXZ2a (%install)
    Bad exit status from /var/tmp/rpm-tmp.JLXZ2a (%install)

RPM build errors:
:hue-rpm FAILED
{noformat}


---

* [BIGTOP-1857](https://issues.apache.org/jira/browse/BIGTOP-1857) | *Major* | **Support yarn-built-in proxy**

Yarn supports two modes for the yarn proxy service:

a standalone yarn proxy server and a builtin proxy service.

In order to activate the builtin proxy service one configures either the {{yarn.web-proxy.address}} to be the same as the RM or does not specify it at all. 

In order to support a RM in HA mode it is benificial to not specify {{yarn.web-proxy.address}}  at all.


---

* [BIGTOP-1855](https://issues.apache.org/jira/browse/BIGTOP-1855) | *Major* | **Remove Obsolete Jobtracker settings from mapred-site.xml**

There are a couple of jobtracker settings which are obsolete in MR2 aka yarn


---

* [BIGTOP-1854](https://issues.apache.org/jira/browse/BIGTOP-1854) | *Major* | **Trim Tachyon maintainers' list**

Per an off-line chat with [~dcapwell] he wants to be removed from the component maintenance list


---

* [BIGTOP-1853](https://issues.apache.org/jira/browse/BIGTOP-1853) | *Minor* | **Phoenix build does not properly override Hadoop version property**

The correct property override in phoenix is hadoop-two.version: https://github.com/apache/phoenix/blob/4.2/pom.xml


---

* [BIGTOP-1851](https://issues.apache.org/jira/browse/BIGTOP-1851) | *Major* | **Upgrade to HBase 0.98.12**

Upgrade to HBase 0.98.12


---

* [BIGTOP-1850](https://issues.apache.org/jira/browse/BIGTOP-1850) | *Major* | **Update Hue to 3.8**

New Version out. Improved support for spark included.


---

* [BIGTOP-1849](https://issues.apache.org/jira/browse/BIGTOP-1849) | *Critical* | **toolchain can not set java home correctly in CentOS 7**

Since we're going to support CentOS 7, which has been defined in BIGTOP-1480, we should have CentOS 7 being able to build Bigtop as well.
This JIRA is to fix the the problem that the JAVA\_HOME directory does not contians x86\_64 suffix anymore when installing oepnjdk 1.7 on CentOS 7.


---

* [BIGTOP-1848](https://issues.apache.org/jira/browse/BIGTOP-1848) | *Blocker* | **spark deb packages broken**

At least {{/usr/lib/spark/lib/*}} is missing from spark-core


---

* [BIGTOP-1845](https://issues.apache.org/jira/browse/BIGTOP-1845) | *Critical* | **toolchain can not drop bigtop.sh in fedora because of puppet syntax error**

Guys I apologize for a stupid bug introduced by myself in BIGTOP-1841.
{code}
Error: Syntax error at ':'; expected '}' at /etc/puppet/modules/bigtop\_toolchain/manifests/env.pp:35
{code}
There's a missing *}* in my patch.
This was fixed ONLY in my local environment, but I forgot to regenerate the patch. :(


---

* [BIGTOP-1842](https://issues.apache.org/jira/browse/BIGTOP-1842) | *Major* | **Remove gridgain-hadoop from BOM**

Let's remove the outdated component from the top-level BOM to avoid building it.


---

* [BIGTOP-1841](https://issues.apache.org/jira/browse/BIGTOP-1841) | *Critical* | **toolchain can not set java correctly in fedora**

I discovered this when building new docker slaves. Fedora OS has been missing in jdk.pp completely. And there's no symlink /usr/lib/jvm/java-1.7.0-openjdk.x86\_64 in fedora, we should set java home to /usr/lib/jvm/java-1.7.0-openjdk.


---

* [BIGTOP-1840](https://issues.apache.org/jira/browse/BIGTOP-1840) | *Major* | **datafu does not pick up pig dependency from local repository**

When building datafu there is a sed replacement done to make sure that datafu pulls in the same version of pig that is in the BOM. However, the ivysettings for datafu do not actually resolve to the local repository so datafu does not pick up the locally built pick for the Bigtop but instead grabs pig from the central repository. This is especially problematic when dealing with a custom version of Pig as it cannot be resolved.


---

* [BIGTOP-1839](https://issues.apache.org/jira/browse/BIGTOP-1839) | *Trivial* | **Building RPM for Zookeeper 3.4.6 is broken**

{noformat}
+ cp /home/ywkim/workspace/bigtop/build/zookeeper/rpm//SOURCES/ZOOKEEPER-1911.patch ./
cp: cannot stat '/home/ywkim/workspace/bigtop/build/zookeeper/rpm//SOURCES/ZOOKEEPER-1911.patch': No such file or directory
오류: /var/tmp/rpm-tmp.2ie9jv의 잘못된 종료 상황 (%build)

    /var/tmp/rpm-tmp.2ie9jv의 잘못된 종료 상황 (%build)

RPM 제작 오류:
:zookeeper-rpm FAILED

FAILURE: Build failed with an exception.

{noformat}


---

* [BIGTOP-1836](https://issues.apache.org/jira/browse/BIGTOP-1836) | *Major* | **Better UX for Docker provisioner by integrating it into gradle**

The way to use bigtop docker provisioner is to *cd* into its directory and then use docker-hadoop.sh to bring the cluster up. Integrate this into gradle can provide better UX for bigtop users. 
Designed tasks are:
{code}
Deployment tasks
----------------
docker-provisioner - Provision a Bigtop cluster on Docker container(s). Default to CentOS and 1 node.
Example:
./gradlew docker-provisioner
./gradlew -Pnum\_instances=3 docker-provisioner
./gradlew -Pconfig=vagrantconfig\_debian.yaml -Pnum\_instances=3 docker-provisioner
./gradlew -Prun\_smoke\_tests=true docker-provisioner
docker-provisioner-destroy - Destroy provisioned Bigtop Docker cluster
docker-provisioner-ssh - Show ssh command to get in to the provisioned container
docker-provisioner-status - Show status of Bigtop Docker cluster
{code}


---

* [BIGTOP-1835](https://issues.apache.org/jira/browse/BIGTOP-1835) | *Major* | **Update project RDF file**

I have noticed
 {{<programming-language>Java</programming-language>}}
in {{src/site/resources/bigtop.rdf}} which isn't strictly correct. If anything we use a way more Groovy than any java. Shall we update the file?


---

* [BIGTOP-1834](https://issues.apache.org/jira/browse/BIGTOP-1834) | *Critical* | **Upgrade to Spark 1.3.1**

I realize we're basically in (unofficial?) code freeze for Bigtop 1.0, but if we're going to get Spark 1.3 in (and we are, since it was already committed as part of BIGTOP-1755), we should probably upgrade from 1.3.0 to 1.3.1 because there were some pretty bad bugs introduced in 1.3.0 that have now been fixed in 1.3.1.


---

* [BIGTOP-1833](https://issues.apache.org/jira/browse/BIGTOP-1833) | *Blocker* | **Bump Ignite to 1.1.0**

openjdk-7 on all platforms does not contain javafx.  Hence 1.0 will be failing on OpenJDK build

This specific report is from debian:
{code}
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary:
[INFO]
[INFO] ignite-tools ...................................... FAILURE [58.336s]
[INFO] ignite-core ....................................... SKIPPED
[INFO] ignite-log4j ...................................... SKIPPED
[INFO] ignite-urideploy .................................. SKIPPED
[INFO] ignite-spring ..................................... SKIPPED
[INFO] ignite-hadoop ..................................... SKIPPED
[INFO] ignite-extdata-p2p ................................ SKIPPED
[INFO] ignite-extdata-uri ................................ SKIPPED
[INFO] ignite-indexing ................................... SKIPPED
[INFO] ignite-rest-http .................................. SKIPPED
[INFO] ignite-clients .................................... SKIPPED
[INFO] ignite-web ........................................ SKIPPED
[INFO] ignite-aop ........................................ SKIPPED
[INFO] ignite-ssh ........................................ SKIPPED
[INFO] ignite-jta ........................................ SKIPPED
[INFO] ignite-aws ........................................ SKIPPED
[INFO] ignite-slf4j ...................................... SKIPPED
[INFO] ignite-jcl ........................................ SKIPPED
[INFO] ignite-schema-import .............................. SKIPPED
[INFO] ignite-codegen .................................... SKIPPED
[INFO] ignite-scalar ..................................... SKIPPED
[INFO] ignite-visor-console .............................. SKIPPED
[INFO] ignite-visor-plugins .............................. SKIPPED
[INFO] ignite ............................................ SKIPPED
[INFO] ------------------------------------------------------------------------
[INFO] BUILD FAILURE
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 1:01.184s
[INFO] Finished at: Thu Apr 16 12:05:16 CEST 2015
[INFO] Final Memory: 33M/79M
[INFO] ------------------------------------------------------------------------
[ERROR] Failed to execute goal on project ignite-schema-import: Could not resolve dependencies for project org.apache.ignite:ignite-schema-import:jar:1.0.0: Could not find artifact javafx                   :jfxrt:jar:1.7.0\_75 at specified path /usr/lib/jvm/java-7-openjdk-amd64/jre/lib/jfxrt.jar -> [Help 1]
[ERROR]
{code}


---

* [BIGTOP-1832](https://issues.apache.org/jira/browse/BIGTOP-1832) | *Major* | **hdfs-site.xml: update shortcut reader and remove obsolete shortcut reader users**

{{dfs.block.local-path-access.user}} is deprecated in hadoop 2 
instead introduce a suitable {{dfs.domain.socket.path}} config option
and rename the puppet var {{hdfs\_shortcut\_reader\_user}} to {{hdfs\_shortcut\_reader}}


---

* [BIGTOP-1831](https://issues.apache.org/jira/browse/BIGTOP-1831) | *Blocker* | **Upgrade Mahout to 0.10**

Need to upgrade Mahout to the latest 0.10 release (first Hadoop 2.x compatible release)


---

* [BIGTOP-1830](https://issues.apache.org/jira/browse/BIGTOP-1830) | *Major* | **Move apache-forrest installation from  bigtop\_toolchain to pig compile**

The apache forrest installation within bigtop\_toolchain is a bad idea.

apache-forrest is only needed AFAIK for "pig"

It has to be made r/w in bigtop\_toolchain for all in order to work, since usage of forrest tries to write into forrest.

The solution is to download it in do-component-build, unpack and use it privately there.

In order to address security issues: Download from https and check md5sum


---

* [BIGTOP-1828](https://issues.apache.org/jira/browse/BIGTOP-1828) | *Major* | **Puppet: Tachyon does not get formatted before tachyon daemons are started up**

A non-formatted cluster can have tachyon-master started failed.
There's also a configuration error which does not have tachyon master defined propertly.


---

* [BIGTOP-1827](https://issues.apache.org/jira/browse/BIGTOP-1827) | *Blocker* | **Tachyon package name conflict on Debian/Ubuntu**

Debian and Ubuntu already have a package named "tachyon":

https://packages.debian.org/sid/tachyon

Parallel/Multiprocessor Ray Tracing Software

http://jedi.ks.uiuc.edu/~johns/raytracer/

which has been in Debian since 2008, and apparently was started in 1994.

Because this package has a higher version number (0.99~b2+dfsg-0.4) it will always take precedence to the Bigtop "tachyon" package, and on upgrades this will cause chaos.

Maybe the package should be named tachyon-java or apache-tachyon instead to avoid upgrade problems?


---

* [BIGTOP-1824](https://issues.apache.org/jira/browse/BIGTOP-1824) | *Critical* | **Tachyon master and worker daemon script does not work propertly**

The daemon script used to start tachyon master or worker does not have pid logged in PIDFILE actually. So, it can start the daemon for sure, but it can not stop it, nor could it check the status.
The tachyon-master stop function leverage the daemon script from tachyon project but it stop all the tachyon related daemons(master and worker) instead of only stop the master daemon.


---

* [BIGTOP-1822](https://issues.apache.org/jira/browse/BIGTOP-1822) | *Major* | **Puppet apt module should be automatically installed by toolchain**

On apt package manager distro.(Ubuntu, Debian), the puppetlabs-apt module needs to be installed before running bigtop puppet to deploy the cluster.


---

* [BIGTOP-1818](https://issues.apache.org/jira/browse/BIGTOP-1818) | *Critical* | **ignite-hadoop-service debian is missed; causing Puppet deploy to fail**

Evidently, ignite-hadoop (nor gridgain-hadoop) before produced {{-service}} package, which does exist on RPM side of the things. As the result, existing puppet deployment is failing.


---

* [BIGTOP-1817](https://issues.apache.org/jira/browse/BIGTOP-1817) | *Blocker* | **bigtop-utils deb is missing  init-hcfs.groovy file**

init-hcfs.groovy is missing from deb package.


---

* [BIGTOP-1816](https://issues.apache.org/jira/browse/BIGTOP-1816) | *Major* | **Puppet deploy is broken on Ubuntu**

Looks like puppet deployment doesn't work on Ubuntu. It fails in {{site.xml:33}} with the following error message:
{noformat}
Debug: hiera(): Looking for data source common
Debug: hiera(): Cannot find datafile /var/lib/hiera/common.yaml, skipping
Error: Puppet::Parser::AST::Resource failed with error ArgumentError: Could not find declared class apt at /ws/bigtop-deploy/puppet/manifests/site.pp:33 on node bigtop1.docker
Wrapped exception:
Could not find declared class apt
Error: Puppet::Parser::AST::Resource failed with error ArgumentError: Could not find declared class apt at /ws/bigtop-deploy/puppet/manifests/site.pp:33 on node bigtop1.docker
{noformat}


---

* [BIGTOP-1815](https://issues.apache.org/jira/browse/BIGTOP-1815) | *Major* | **Tez build is broken in the container**

While trying to build 1.0 RC in Ubutu container I got the following error message:

{noformat}
3/53 KB                                                                                                                                                                                                                                                                                        Downloaded: https://maven.atlassian.com/repository/public/org/apache/commons/commons-exec/1.2/commons-exec-1.2.jar (53 KB at 93.9 KB/sec)
bower ESUDO         Cannot be run with sudo

Additional error details:
Since bower is a user command, there is no need to execute it with superuser permissions.
If you're having permission errors when using bower without sudo, please spend a few minutes learning more about how your system should work and make any necessary repairs.

http://www.joyent.com/blog/installing-node-and-npm
https://gist.github.com/isaacs/579814

You can however run a command with sudo using --allow-root option
{noformat}
And the build stopped


---

* [BIGTOP-1814](https://issues.apache.org/jira/browse/BIGTOP-1814) | *Critical* | **Puppet deployment code needs to work with ignite-hadoop component**

After BIGTOP-1806 has been committed the deployment code needs to work with new component now.


---

* [BIGTOP-1813](https://issues.apache.org/jira/browse/BIGTOP-1813) | *Major* | **Create /user/hbase HDFS directory**

There is a need to run ExportSnapshot (part of HBase) MR job on behalf of hbase user, 
to avoid problems with permissions on data/snapshot files in `/hbase` HDFS directory.

But the problem is there is no `/user/hbase` directory that ExportSnapshot tries to use as a working directory.

Going to add `/user/hbase` in `init-hcfs.json`.


---

* [BIGTOP-1810](https://issues.apache.org/jira/browse/BIGTOP-1810) | *Major* | **Spark thriftserver service does not indicate success**

Although the thriftsever starts running the return code is wrong, so systemctl reports a failure to start.  Currently checkstatusofproc tests for the pid which is supposed to be stored in "/var/run/spark/${DAEMON}.pid", but this file does not exist.  I have a patch for this which I have tested to confirm that the service indicates success/failure appropriately.


---

* [BIGTOP-1809](https://issues.apache.org/jira/browse/BIGTOP-1809) | *Critical* | **Remove gridgain-hadoop component once ignite-hadoop gets added**

GridGain Hadoop superseded by Ignite Hadoop.
Once ignite-hadoop added to BigTop, gridgain should be removed from there.

See https://issues.apache.org/jira/browse/BIGTOP-1806


---

* [BIGTOP-1808](https://issues.apache.org/jira/browse/BIGTOP-1808) | *Major* | **hive 1.0.0 : kerberos does not work correctly**

See upstream bug HIVE-10240


---

* [BIGTOP-1806](https://issues.apache.org/jira/browse/BIGTOP-1806) | *Critical* | **Integrate Apache Ignite (incubating) with BigTop**

We need to switch to the ASF version of this component. 

Provides Apache Ignite (incubating) BigTop build.
The code is basically former "gridgain" build project adapted to Ignite project.


---

* [BIGTOP-1804](https://issues.apache.org/jira/browse/BIGTOP-1804) | *Blocker* | **Not again: srpm target fails on SUSE**

I think we've been through this before: on SUSE platform {{rpmbuild}} command doesn't create all needed directories under {{PKG\_BUILD\_DIR/rpm}}. As the result, {{srpm}} target fails.


---

* [BIGTOP-1803](https://issues.apache.org/jira/browse/BIGTOP-1803) | *Trivial* | **Overide Vagrant configurations from environment variables**

Something like this:
{noformat}
$ REPO="http://hostname/yum/path/to/" vagrant up
{noformat}


---

* [BIGTOP-1801](https://issues.apache.org/jira/browse/BIGTOP-1801) | *Major* | **Generalize subst pattern matching for BOM file**

At the moment the only {{subst}} operation that gradle build recognizes is from {{-}} to {{.}}. However, in some cases we might want to have more complex substitutions to be done, e.g. when building against a snapshot version of a component. In such the case we might need to replace "-SNAPSHOT" with something else or completely remove it.


---

* [BIGTOP-1794](https://issues.apache.org/jira/browse/BIGTOP-1794) | *Minor* | **Update README for bigtop\_toolchain**

Update README for bigtop\_toolchain (version 1.0.0)


---

* [BIGTOP-1793](https://issues.apache.org/jira/browse/BIGTOP-1793) | *Trivial* | **bigtop\_toolchain: remove JAVA\_HOME/bin from PATH**

From BIGTOP-1780, it has been removed 'JAVA\[6,7\]\_HOME' env variables. So it should be removed remaining 'JAVA7\_HOME'.


---

* [BIGTOP-1791](https://issues.apache.org/jira/browse/BIGTOP-1791) | *Trivial* | **Set group of /user/hue to "hue" in HDFS**

The /user/hue folder in HDFS to have group set to "hue" to match common hue configuration. 

Cloudera's demo Hue cluster follows setup:
http://demo.gethue.com/filebrowser/#/user/hue

A Hue integration test assumes this is the case as well:
https://github.com/cloudera/hue/blob/release-3.7.1/apps/oozie/src/oozie/tests.py#L2872


---

* [BIGTOP-1790](https://issues.apache.org/jira/browse/BIGTOP-1790) | *Minor* | **Top level menu says 'Power By' - needs to be fixed**

There's a typo on the top-level menu of the website


---

* [BIGTOP-1787](https://issues.apache.org/jira/browse/BIGTOP-1787) | *Major* | **puppet: Update hue.ini to match Hue 3.7.1 template**

The hue.ini template in the hue puppet module is quite outdated with many options no longer used by Hue 3.7.1 and many missing sections that were added in later Hue releases. 

The hue.ini template should be remodeled to resemble the [default Hue 3.7.1 template | https://github.com/cloudera/hue/blob/release-3.7.1/desktop/conf.dist/hue.ini].


---

* [BIGTOP-1783](https://issues.apache.org/jira/browse/BIGTOP-1783) | *Major* | **Import BigPetStore Data Generator into BigTop**

It's time to move the BigPetStore data generator from [GitHub rnowling/bigpetstore-data-generator|https://github.com/rnowling/bigpetstore-data-generator] into BigTop.


---

* [BIGTOP-1781](https://issues.apache.org/jira/browse/BIGTOP-1781) | *Major* | **tachyon fails to build**

{code}
++ JDK\_VERSION=1.7
++ SCALA\_VERSION=2.10.3
++ ZOOKEEPER\_VERSION=3.4.5
++ HADOOP\_VERSION=2.6.0
++ GRIDGAIN\_HADOOP\_VERSION=6.5.6
++ HBASE\_VERSION=0.98.10.1
++ PIG\_VERSION=0.14.0
++ HIVE\_VERSION=1.1.0
++ TEZ\_VERSION=0.6.0
++ SQOOP\_VERSION=1.4.5
++ SQOOP2\_VERSION=1.99.4
++ OOZIE\_VERSION=4.0.1
++ MAHOUT\_VERSION=0.9
++ FLUME\_VERSION=1.5.2
++ GIRAPH\_VERSION=1.1.0
++ HUE\_VERSION=3.7.1
++ DATAFU\_VERSION=1.0.0
++ SOLR\_VERSION=4.9.0
++ CRUNCH\_VERSION=0.10.0
++ SPARK\_VERSION=1.2.0
++ PHOENIX\_VERSION=4.2.2
++ BIGTOP\_GROOVY\_VERSION=2.3.8
++ BIGTOP\_UTILS\_VERSION=1.0.0
++ BIGTOP\_JSVC\_VERSION=1.0.15
++ BIGTOP\_TOMCAT\_VERSION=6.0.36
++ TACHYON\_VERSION=0.6.0
++ KAFKA\_VERSION=0.8.1.1
+ mvn -q clean install -DskipTests -Dhadoop.version=2.6.0 -Dmaven.repo.local=/home/olaf/.m2/repository
[ERROR] Failed to execute goal com.mycila:license-maven-plugin:2.9:check (default) on project tachyon-parent: Some files do not have the expected license header -> [Help 1]
[ERROR] 
[ERROR] To see the full stack trace of the errors, re-run Maven with the -e switch.
[ERROR] Re-run Maven using the -X switch to enable full debug logging.
[ERROR] 
[ERROR] For more information about the errors and possible solutions, please read the following articles:
[ERROR] [Help 1] http://cwiki.apache.org/confluence/display/MAVEN/MojoExecutionException
{code}


---

* [BIGTOP-1780](https://issues.apache.org/jira/browse/BIGTOP-1780) | *Major* | **bigtop\_toolchain: JAVA\_HOME incorrect, remove JAVA6\_HOME**

The  bigtop.sh file is incorrect with respect to JAVA\_HOME on centos


---

* [BIGTOP-1779](https://issues.apache.org/jira/browse/BIGTOP-1779) | *Major* | **giraph compile broken**

{code}
[INFO] -------------------------------------------------------------
[ERROR] COMPILATION ERROR : 
[INFO] -------------------------------------------------------------
[ERROR] /home/olaf/bigtop/output/giraph/giraph-1.1.0/giraph-core/src/main/java/org/apache/giraph/comm/netty/SaslNettyClient.java:[79,24] cannot find symbol
  symbol:   variable SASL\_PROPS
  location: class org.apache.hadoop.security.SaslRpcServer
[ERROR] /home/olaf/bigtop/output/giraph/giraph-1.1.0/giraph-core/src/main/java/org/apache/giraph/comm/netty/SaslNettyServer.java:[97,24] cannot find symbol
  symbol:   variable SASL\_PROPS
  location: class org.apache.hadoop.security.SaslRpcServer
[INFO] 2 errors 
[INFO] -------------------------------------------------------------
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary:
[INFO] 
[INFO] Apache Giraph Parent .............................. SUCCESS [4.700s]
[INFO] Apache Giraph Core ................................ FAILURE [7.019s]
[INFO] Apache Giraph Examples ............................ SKIPPED
[INFO] Apache Giraph Accumulo I/O ........................ SKIPPED
[INFO] Apache Giraph HBase I/O ........................... SKIPPED
[INFO] Apache Giraph HCatalog I/O ........................ SKIPPED
[INFO] Apache Giraph Hive I/O ............................ SKIPPED
[INFO] Apache Giraph Gora I/O ............................ SKIPPED
[INFO] Apache Giraph Rexster I/O ......................... SKIPPED
[INFO] Apache Giraph Rexster Kibble ...................... SKIPPED
[INFO] Apache Giraph Rexster I/O Formats ................. SKIPPED
[INFO] Apache Giraph Distribution ........................ SKIPPED
[INFO] ------------------------------------------------------------------------
[INFO] BUILD FAILURE
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 12.472s
[INFO] Finished at: Fri Mar 27 10:35:34 CET 2015
[INFO] Final Memory: 41M/395M
[INFO] ------------------------------------------------------------------------
{code}


---

* [BIGTOP-1778](https://issues.apache.org/jira/browse/BIGTOP-1778) | *Major* | **spark-1.3.0 broke hive**

{code}
[INFO] -------------------------------------------------------------
[ERROR] COMPILATION ERROR : 
[INFO] -------------------------------------------------------------
[ERROR] /home/olaf/bigtop/output/hive/hive-1.1.0/spark-client/src/main/java/org/apache/hive/spark/client/RemoteDriver.java:[423,11] org.apache.hive.spark.client.RemoteDriver.ClientListener is not abstract and does not override abstract method onExecutorRemoved(org.apache.spark.scheduler.SparkListenerExecutorRemoved) in org.apache.spark.scheduler.SparkListener
[INFO] 1 error
[INFO] -------------------------------------------------------------
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary:
[INFO] 
[INFO] Hive .............................................. SUCCESS [3.328s]
[INFO] Hive Shims Common ................................. SUCCESS [4.690s]
[INFO] Hive Shims 0.20S .................................. SUCCESS [0.950s]
[INFO] Hive Shims 0.23 ................................... SUCCESS [3.070s]
[INFO] Hive Shims Scheduler .............................. SUCCESS [0.589s]
[INFO] Hive Shims ........................................ SUCCESS [0.553s]
[INFO] Hive Common ....................................... SUCCESS [3.379s]
[INFO] Hive Serde ........................................ SUCCESS [5.979s]
[INFO] Hive Metastore .................................... SUCCESS [12.397s]
[INFO] Hive Ant Utilities ................................ SUCCESS [0.430s]
[INFO] Spark Remote Client ............................... FAILURE [5.161s]
[INFO] Hive Query Language ............................... SKIPPED
[INFO] Hive Service ...................................... SKIPPED
[INFO] Hive Accumulo Handler ............................. SKIPPED
[INFO] Hive JDBC ......................................... SKIPPED
[INFO] Hive Beeline ...................................... SKIPPED
[INFO] Hive CLI .......................................... SKIPPED
[INFO] Hive Contrib ...................................... SKIPPED
[INFO] Hive HBase Handler ................................ SKIPPED
[INFO] Hive HCatalog ..................................... SKIPPED
[INFO] Hive HCatalog Core ................................ SKIPPED
[INFO] Hive HCatalog Pig Adapter ......................... SKIPPED
[INFO] Hive HCatalog Server Extensions ................... SKIPPED
[INFO] Hive HCatalog Webhcat Java Client ................. SKIPPED
[INFO] Hive HCatalog Webhcat ............................. SKIPPED
[INFO] Hive HCatalog Streaming ........................... SKIPPED
[INFO] Hive HWI .......................................... SKIPPED
[INFO] Hive ODBC ......................................... SKIPPED
[INFO] Hive Shims Aggregator ............................. SKIPPED
[INFO] Hive TestUtils .................................... SKIPPED
[INFO] Hive Packaging .................................... SKIPPED
[INFO] ------------------------------------------------------------------------
[INFO] BUILD FAILURE
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 41.394s
[INFO] Finished at: Fri Mar 27 10:28:06 CET 2015
[INFO] Final Memory: 79M/1364M
[INFO] ------------------------------------------------------------------------
[ERROR] Failed to execute goal org.apache.maven.plugins:maven-compiler-plugin:3.1:compile (default-compile) on project spark-client: Compilation failure
[ERROR] /home/olaf/bigtop/output/hive/hive-1.1.0/spark-client/src/main/java/org/apache/hive/spark/client/RemoteDriver.java:[423,11] org.apache.hive.spark.client.RemoteDriver.ClientListener is not abstract and does not override abstract method onExecutorRemoved(org.apache.spark.scheduler.SparkListenerExecutorRemoved) in org.apache.spark.scheduler.SparkListener
[ERROR] -> [Help 1]
[ERROR] 
[ERROR] To see the full stack trace of the errors, re-run Maven with the -e switch.
[ERROR] Re-run Maven using the -X switch to enable full debug logging.
[ERROR] 
[ERROR] For more information about the errors and possible solutions, please read the following articles:
[ERROR] [Help 1] http://cwiki.apache.org/confluence/display/MAVEN/MojoFailureException
[ERROR] 
[ERROR] After correcting the problems, you can resume the build with the command
[ERROR]   mvn <goals> -rf :spark-client
{code}


---

* [BIGTOP-1776](https://issues.apache.org/jira/browse/BIGTOP-1776) | *Trivial* | **Resolve an warning on packaging Hadoop RPM**

There is an warning on building Hadoop(2.6.0) rpm:
{noformat}
...
경고: Installed (but unpackaged) file(s) found:
   /etc/hadoop/conf.empty/kms-acls.xml
   /etc/hadoop/conf.empty/kms-env.sh
   /etc/hadoop/conf.empty/kms-log4j.properties
   /etc/hadoop/conf.empty/kms-site.xml
   /usr/lib/hadoop/libexec/hadoop-config.cmd
   /usr/lib/hadoop/libexec/hdfs-config.cmd
   /usr/lib/hadoop/libexec/kms-config.sh
   /usr/lib/hadoop/libexec/mapred-config.cmd
   /usr/lib/hadoop/libexec/yarn-config.cmd
...
{noformat}


---

* [BIGTOP-1775](https://issues.apache.org/jira/browse/BIGTOP-1775) | *Major* | **Fix typos and mistakes on mailing list page**

This page has some small mistakes (like "Bigtop announcements page" section says \_The Bigtop CI mailing list is : announce@bigtop.apache.org\_). Let's patch it up a bit.


---

* [BIGTOP-1771](https://issues.apache.org/jira/browse/BIGTOP-1771) | *Minor* | **Let the user specify what components to be tested when running smoke-tests by Docker/VM provisioner**

Currently we only have fixed components to be tested when running smoke-tests by Docker/VM provisioner: mapreduce and pig({{bigtop-deploy/vm/utils/smoke-tests.sh}}).
It would be better to allow users to specify what components they'd like to test in vagrantconfig.yaml.


---

* [BIGTOP-1770](https://issues.apache.org/jira/browse/BIGTOP-1770) | *Minor* | **Let the user specify which JDK package to be installed in vagrantconfig.yaml**

Currently we specify fixed JDK package names in {{bigtop-deploy/vm/vagrant-puppet-docker/provision.sh}} for centos and debian only. We should let user choose what JDK version they'd like to be installed.


---

* [BIGTOP-1768](https://issues.apache.org/jira/browse/BIGTOP-1768) | *Major* | **Use openjdk in ubuntu14, Remove references to jdk6**

Use openjdk for ubuntu as well.

Remove obsolete jdk6.pp

Remove redundant jenkins.sh.ubu


---

* [BIGTOP-1765](https://issues.apache.org/jira/browse/BIGTOP-1765) | *Major* | **Bump the stack version to 1.0**

Need the change the versions to 1.0


---

* [BIGTOP-1764](https://issues.apache.org/jira/browse/BIGTOP-1764) | *Minor* | **Fix copying mapreduce jars to HDFS for Oozie**

On HDFS after puppet apply, */user/oozie/share/lib/distcp* does not exist and */user/oozie/share/lib/mapreduce-streaming* is empty. This looks to be a bug in copying jars in [init-hcfs.groovy#L283|https://github.com/apache/bigtop/blob/master/bigtop-packages/src/common/bigtop-utils/init-hcfs.groovy#L283]

{code}
$ hadoop fs -ls /user/oozie/share/lib/
drwxr-xr-x   - hdfs hadoop          0 2015-03-18 21:47 /user/oozie/share/lib/distcp
drwxr-xr-x   - hdfs hadoop          0 2015-03-18 21:47 /user/oozie/share/lib/hive
drwxr-xr-x   - hdfs hadoop          0 2015-03-18 21:47 /user/oozie/share/lib/mapreduce
drwxr-xr-x   - hdfs hadoop          0 2015-03-18 21:47 /user/oozie/share/lib/mapreduce-streaming
drwxr-xr-x   - hdfs hadoop          0 2015-03-18 21:47 /user/oozie/share/lib/pig
{code}

{code}
$ hadoop fs -ls /user/oozie/share/lib/mapreduce-streaming
{code}


---

* [BIGTOP-1763](https://issues.apache.org/jira/browse/BIGTOP-1763) | *Critical* | **Handle broken symlinks when copying jars**

When Hive is installed on a cluster and HBase isn't, init-hcfs.groovy will fail copying jars to HDFS for Oozie during puppet apply. This is because of a broken simlink in */usr/lib/hive/lib*, namely *hbase.jar* which links to */usr/lib/hbase/hbase.jar*.

This is introduced by [BIGTOP-1235| https://issues.apache.org/jira/browse/BIGTOP-1235].

The exception thrown in init-hcfs.groovy:
{code}
java.io.FileNotFoundException: File /usr/lib/hive/lib/hbase.jar does not exist
  at org.apache.hadoop.fs.RawLocalFileSystem.deprecatedGetFileStatus(RawLocalFileSystem.java:516)
  at org.apache.hadoop.fs.RawLocalFileSystem.getFileLinkStatusInternal(RawLocalFileSystem.java:729)
  at org.apache.hadoop.fs.RawLocalFileSystem.getFileStatus(RawLocalFileSystem.java:506)
  at org.apache.hadoop.fs.FilterFileSystem.getFileStatus(FilterFileSystem.java:407)
  at org.apache.hadoop.fs.FileUtil.copy(FileUtil.java:337)
  at org.apache.hadoop.fs.FileSystem.copyFromLocalFile(FileSystem.java:1951)
  at org.apache.hadoop.fs.FileSystem.copyFromLocalFile(FileSystem.java:1919)
  at org.apache.hadoop.fs.FileSystem.copyFromLocalFile(FileSystem.java:1884)
  at org.apache.hadoop.fs.FileSystem$copyFromLocalFile$1.call(Unknown Source)
  at init-hcfs$\_run\_closure7\_closure8.doCall(init-hcfs.groovy:258)
  at init-hcfs$\_run\_closure7.doCall(init-hcfs.groovy:252)
  at init-hcfs.run(init-hcfs.groovy:281)

{code}


---

* [BIGTOP-1761](https://issues.apache.org/jira/browse/BIGTOP-1761) | *Major* | **Delete testConf.xml from hadoop-smoke resources**

We are no longer using testConf.xml -- all the CLI tests are using the other configuration files. As per [BIGTOP-1750 comment|https://issues.apache.org/jira/browse/BIGTOP-1750?focusedCommentId=14356867&page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel#comment-14356867], looks like we can delete it:


---

* [BIGTOP-1757](https://issues.apache.org/jira/browse/BIGTOP-1757) | *Major* | **bigtop\_toolchain has to differentiate between centos6 and centos7**

Problem is that centos7 uses mariadb , centos6 mysql package names.


---

* [BIGTOP-1756](https://issues.apache.org/jira/browse/BIGTOP-1756) | *Major* | **Add HADOOP\_MAPRED\_HOME property to common**

A couple of tests in hadoop need this property to be set, but it's being checked within the tests. Since crunch and datafu also need mapred, let's carry the enforcer out to bigtop-tests-test-execution/common/pom.xml.


---

* [BIGTOP-1755](https://issues.apache.org/jira/browse/BIGTOP-1755) | *Critical* | **Upgrade to Spark 1.3.0**

Spark 1.3.0 was released today (see http://spark.apache.org/news/spark-1-3-0-released.html), so I figured that I might as well upgrade it in Bigtop as soon as possible.  I have already tested that Spark 1.3.0 works fine with just the trivial changes to the Spark version number in bigtop.mk.


---

* [BIGTOP-1751](https://issues.apache.org/jira/browse/BIGTOP-1751) | *Major* | **Puppet deployment ignores bigtop\_repo\_uri variable**

It seems that new Puppet deployment mechanism is ignoring the alternative URL in {{hieradata/site.yaml:bigtop::bigtop\_repo\_uri}} and keep on using the default value, pointed to the release 0.8.0


---

* [BIGTOP-1744](https://issues.apache.org/jira/browse/BIGTOP-1744) | *Major* | **Add BigPigPetstore File and REST Load Generation.**

We have an example of using BPS to generate data for spark.

A more realistic thing, however, which is increasingly important, is streaming data.

So, I would like to now add in https://github.com/jayunit100/PetStoreLoadGenerator/ as a direct project inside the {{bigtop-bigpetstore}} repository.  Its essentially a way to  generate (1) HTTP load or (2) Disk load using the existing BigPetStore data generation algorithm.

Im tagging this as 0.9, because I think its a great feature to release with.    I can create a patch this week.  It will be a good way, for example, to do scale tests of flume and kafka.

Open to ideas/opinions on this.


---

* [BIGTOP-1743](https://issues.apache.org/jira/browse/BIGTOP-1743) | *Trivial* | **Add RJ Nowling as committer to website**

I want to add myself to the list of committers on the BigTop website.


---

* [BIGTOP-1742](https://issues.apache.org/jira/browse/BIGTOP-1742) | *Trivial* | **Add ywkim as a maintainer for Apache Hive, Spark, Sqoop\* and Phoenix**

Add ywkim as a maintainer for Apache Hive, Spark, Sqoop* and Phoenix


---

* [BIGTOP-1741](https://issues.apache.org/jira/browse/BIGTOP-1741) | *Blocker* | **Upgrade to Apache Phoenix 4.3.1**

Bump up Phoenix version to 4.3.1.

Notable changes for Phoenix 4.3.1:
{quote}
The Apache Phoenix team is pleased to announce the immediate
availability of the 4.3.1 release. Highlights of the release being:

- Global client side resource metrics
- SQL command to turn Phoenix tracing ON/OFF
- SQL command to allow setting tracing sampling frequency
- Capability to pass guide post config params through UPDATE STATISTIC call
- Over 20 bug fixes
{quote}

Release notes for Phoenix 4.3.0:
{quote}
The Apache Phoenix team is pleased to announce the immediate
availability of the 4.3 release. Highlights include:

- functional indexes [1]
- map-reduce over Phoenix tables [2]
- cross join support [3]
- query hint to force index usage [4]
- set HBase properties through ALTER TABLE
- ISO-8601 date format support on input
- RAND built-in for random number generation
- ANSI SQL date/time literals
- query timeout support in JDBC Statement
- over 90 bug fixes

The release is available through maven or may be downloaded here [5].

Regards,
The Apache Phoenix Team

[1] http://phoenix.apache.org/secondary\_indexing.html#Functional\_Indexes
[2] http://phoenix.apache.org/phoenix\_mr.html
[3] http://phoenix.apache.org/joins.html
[4] http://phoenix.apache.org/secondary\_indexing.html#Examples
[5] http://phoenix.apache.org/download.html
{quote}


---

* [BIGTOP-1738](https://issues.apache.org/jira/browse/BIGTOP-1738) | *Major* | **Update HBase because javadoc broken**

hbase does not compile any more

{code}
[WARNING] /home/olaf/bigtop/output/hbase/hbase-0.98.5/hbase-server/src/main/java/org/apache/hadoop/hbase/security/access/AccessController.java:149: warning - Tag @link: reference not found: org.apache.hadoop.hbase.ipc.RpcServerEngine
[INFO] Generating "User API" report    --- maven-javadoc-plugin:2.9.1
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary:
[INFO] 
[INFO] HBase ............................................. FAILURE [5:15.805s]
[INFO] HBase - Common .................................... SKIPPED
[INFO] HBase - Protocol .................................. SKIPPED
[INFO] HBase - Client .................................... SKIPPED
[INFO] HBase - Hadoop Compatibility ...................... SKIPPED
[INFO] HBase - Hadoop Two Compatibility .................. SKIPPED
[INFO] HBase - Prefix Tree ............................... SKIPPED
[INFO] HBase - Server .................................... SKIPPED
[INFO] HBase - Testing Util .............................. SKIPPED
[INFO] HBase - Thrift .................................... SKIPPED
[INFO] HBase - Shell ..................................... SKIPPED
[INFO] HBase - Integration Tests ......................... SKIPPED
[INFO] HBase - Examples .................................. SKIPPED
[INFO] HBase - Assembly .................................. SKIPPED
[INFO] ------------------------------------------------------------------------
[INFO] BUILD FAILURE
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 5:17.105s
[INFO] Finished at: Sun Mar 08 16:11:23 CET 2015
[INFO] Final Memory: 80M/852M
[INFO] ------------------------------------------------------------------------
[ERROR] Failed to execute goal org.apache.maven.plugins:maven-site-plugin:3.3:site (default-site) on project hbase: Error during page generation: Error rendering Maven report: Unable to resolve artifact:groupId = 'org.apache.hadoop'
[ERROR] artifactId = 'hadoop-common'
[ERROR] version = '2.6.0': Missing:
[ERROR] ----------
[ERROR] 1) org.apache.directory.jdbm:apacheds-jdbm1:bundle:2.0.0-M2
[ERROR] 
[ERROR] Try downloading the file manually from the project website.
[ERROR] 
[ERROR] Then, install it using the command:
[ERROR] mvn install:install-file -DgroupId=org.apache.directory.jdbm -DartifactId=apacheds-jdbm1 -Dversion=2.0.0-M2 -Dpackaging=bundle -Dfile=/path/to/file
[ERROR] 
[ERROR] Alternatively, if you host your own repository you can deploy the file there:
[ERROR] mvn deploy:deploy-file -DgroupId=org.apache.directory.jdbm -DartifactId=apacheds-jdbm1 -Dversion=2.0.0-M2 -Dpackaging=bundle -Dfile=/path/to/file -Durl=[url] -DrepositoryId=[id]
[ERROR] 
[ERROR] Path to dependency:
[ERROR] 1) org.apache.hadoop:hadoop-common:jar:2.6.0
[ERROR] 2) org.apache.hadoop:hadoop-minikdc:jar:2.6.0
[ERROR] 3) org.apache.directory.server:apacheds-jdbm-partition:jar:2.0.0-M15
[ERROR] 4) org.apache.directory.jdbm:apacheds-jdbm1:bundle:2.0.0-M2
[ERROR] 
[ERROR] ----------
[ERROR] 1 required artifact is missing.
[ERROR] 
[ERROR] for artifact:
[ERROR] org.apache.hadoop:hadoop-common:jar:2.6.0
[ERROR] 
[ERROR] from the specified remote repositories:
[ERROR] apache.snapshots.https (https://repository.apache.org/content/repositories/snapshots, releases=true, snapshots=true),
[ERROR] repository.jboss.org (http://repository.jboss.org/nexus/content/groups/public/, releases=true, snapshots=false),
[ERROR] central (http://repo.maven.apache.org/maven2, releases=true, snapshots=false),
[ERROR] apache release (https://repository.apache.org/content/repositories/releases/, releases=true, snapshots=true),
[ERROR] java.net (http://download.java.net/maven/2/, releases=true, snapshots=false),
[ERROR] codehaus (http://repository.codehaus.org/, releases=true, snapshots=false),
[ERROR] ghelmling.testing (http://people.apache.org/~garyh/mvn/, releases=true, snapshots=true),
[ERROR] apache.snapshots (http://repository.apache.org/snapshots, releases=false, snapshots=true)
[ERROR] -> [Help 1]
[ERROR] 
[ERROR] To see the full stack trace of the errors, re-run Maven with the -e switch.
[ERROR] Re-run Maven using the -X switch to enable full debug logging.
[ERROR] 
[ERROR] For more information about the errors and possible solutions, please read the following articles:
[ERROR] [Help 1] http://cwiki.apache.org/confluence/display/MAVEN/MojoExecutionException
debian/rules:34: recipe for target 'override\_dh\_auto\_build' failed
make[1]: *** [override\_dh\_auto\_build] Error 1
make[1]: Leaving directory '/home/olaf/bigtop/output/hbase/hbase-0.98.5'
debian/rules:31: recipe for target 'build' failed
make: *** [build] Error 2
dpkg-buildpackage: Fehler: Fehler-Exitstatus von debian/rules build war 2
debuild: fatal error at line 1376:
{code}


---

* [BIGTOP-1733](https://issues.apache.org/jira/browse/BIGTOP-1733) | *Major* | **fix local\_yum implementation**

looks like local\_yum\_repo implementation is broke for vagrant provisioners. looking at it now.


---

* [BIGTOP-1732](https://issues.apache.org/jira/browse/BIGTOP-1732) | *Minor* | **remove has\_ssh in Docker provisioner**

Set {{has\_ssh = true}} in Vagrantfile can cause following error if running on non-Linux hosts:
{code}
==> bigtop1: Waiting for machine to boot. This may take a few minutes...
Vagrant::Errors::VMBootTimeout: Timed out while waiting for the machine to boot. This means that
Vagrant was unable to communicate with the guest machine within
the configured ("config.vm.boot\_timeout" value) time period.

If you look above, you should be able to see the error(s) that
Vagrant had when attempting to connect to the machine. These errors
are usually good hints as to what may be wrong.

If you're using a custom box, make sure that networking is properly
working and you're able to connect to the machine. It is a common
problem that networking isn't setup properly in these boxes.
Verify that authentication configurations are also setup properly,
as well.

If the box appears to be booting properly, you may want to increase
the timeout ("config.vm.boot\_timeout") value.
{code}

According to conclusion reached in BIGTOP-1643's comments, this JIRA is going to remove {{has\_ssh}} setting.


---

* [BIGTOP-1731](https://issues.apache.org/jira/browse/BIGTOP-1731) | *Major* | **Gradle mustRunAfter doesn't work is expected**

Evidently, and attempt to run {{gradle install-hbase}} or anything like that on a freshly minted BOM will fail as iTest won't get installed automatically. iTest installation depends on top-level pom, which would be the second failure in the chain. 

Turns out, mustRunAfter doesn't work as expected (no wonder the feature is not finalized yet). Needs to be replaced with {{dependsOn}}


---

* [BIGTOP-1729](https://issues.apache.org/jira/browse/BIGTOP-1729) | *Critical* | **Install Hive has typo in HCATALOG option**

The install\_hive has a typo in both HCATALOG\_DIR and INSTALLED\_HCATALOG\_DIR where some references are using one underscore and others are using two underscore


---

* [BIGTOP-1727](https://issues.apache.org/jira/browse/BIGTOP-1727) | *Major* | **Fix a build failure for Spark 1.2.1**

Related BIGTOP-1716.

Remove Scala related build options to fix the build.


---

* [BIGTOP-1726](https://issues.apache.org/jira/browse/BIGTOP-1726) | *Major* | **Confirm that Spark 1.2.1 runs properly in BigTop, and run the BPS integration test.**

According to a mailing list thread in spark, some folks have been failing at compiling spark 1.2.1 manually, and are curious wether bigtop compiles it properly or not.

Lets do a second round of testing to confirm that spark 1.2.1 is in tip top shape.


---

* [BIGTOP-1724](https://issues.apache.org/jira/browse/BIGTOP-1724) | *Major* | **Update centos vagrant box**

From the link below, Centos-6.5-64-nocm vagrant box is no longer available at vagrantclouds. Latest is based on centos-6.6. Need to update it in vagrant  recipe

https://vagrantcloud.com/puppetlabs/


---

* [BIGTOP-1723](https://issues.apache.org/jira/browse/BIGTOP-1723) | *Major* | **update Tachyon Maintainers**

In addition to David and Jay, I also want to co-maintain the Tachyon package.


---

* [BIGTOP-1722](https://issues.apache.org/jira/browse/BIGTOP-1722) | *Major* | **upgrade tachyon to 0.6.0**

Latest Tachyon is 0.6.0, bigtop releases 0.5.0.


---

* [BIGTOP-1721](https://issues.apache.org/jira/browse/BIGTOP-1721) | *Minor* | **Remove unnecessary files from Sqoop package**

Unnecessary files like *.cmd and .gitignore should be removed from package.


---

* [BIGTOP-1718](https://issues.apache.org/jira/browse/BIGTOP-1718) | *Minor* | **add facility for printing out BOM in json format**

It would be useful to have a facility for printing out the BOM in json format. This would allow applications built on top of Bigtop without needing to know how to parse the BOM.


---

* [BIGTOP-1716](https://issues.apache.org/jira/browse/BIGTOP-1716) | *Major* | **Define SCALA\_VERSION in bigtop.bom**

Let the components read Scala version from bigtop.bom. As of now, Kafka and Spark will be affected.


---

* [BIGTOP-1712](https://issues.apache.org/jira/browse/BIGTOP-1712) | *Major* | **Specification for Docker images.**

Hi folks.  we now have several bigtop related docker images.

Lets create a wiki page for the scope and specification of the images which bigtop curates.

- bigpetstore-load-generator.
- the recently created https://github.com/tzolov/bigtop-centos images.
- the existing bigtop centos images.

As part of this, I'd like to add to that Specification that we curate the bigpetstore-load-generator image which I recently described on the mailing list.


---

* [BIGTOP-1711](https://issues.apache.org/jira/browse/BIGTOP-1711) | *Major* | **add packages to compile hue**

A new attempt to include necessary build requirements for hue builds.


---

* [BIGTOP-1710](https://issues.apache.org/jira/browse/BIGTOP-1710) | *Major* | **Spark 1.1.0 does not build for DEB**

Error Message
{code}
make[1]: Leaving directory '/home/olaf/bigtop/output/spark/spark-core-1.1.0'
   dh\_install
	install -d debian/spark-core///etc
	cp -a debian/tmp//etc/spark debian/spark-core///etc/
	install -d debian/spark-core///usr/bin
	cp -a debian/tmp//usr/bin/spark-executor debian/spark-core///usr/bin/
	cp -a debian/tmp//usr/bin/spark-submit debian/spark-core///usr/bin/
	cp -a debian/tmp//usr/bin/spark-shell debian/spark-core///usr/bin/
	install -d debian/spark-core///usr/lib/spark
	cp -a debian/tmp//usr/lib/spark/bin/ debian/spark-core///usr/lib/spark/
	cp -a debian/tmp//usr/lib/spark/lib debian/spark-core///usr/lib/spark/
	cp -a debian/tmp//usr/lib/spark/sbin debian/spark-core///usr/lib/spark/
	cp -a debian/tmp//usr/lib/spark/ui-resources debian/spark-core///usr/lib/spark/
cp: der Aufruf von stat für „debian/tmp//usr/lib/spark/ui-resources“ ist nicht möglich: Datei oder Verzeichnis nicht gefunden
dh\_install: cp -a debian/tmp//usr/lib/spark/ui-resources debian/spark-core///usr/lib/spark/ returned exit code 1
debian/rules:26: recipe for target 'binary' failed
make: *** [binary] Error 2
dpkg-buildpackage: Fehler: Fehler-Exitstatus von fakeroot debian/rules binary war 2
debuild: fatal error at line 1376:
{code}


---

* [BIGTOP-1709](https://issues.apache.org/jira/browse/BIGTOP-1709) | *Minor* | **Enable "hadoop26" profile for Apache Tez**

Enable "hadoop26" profile on Tez build.


---

* [BIGTOP-1707](https://issues.apache.org/jira/browse/BIGTOP-1707) | *Major* | **Upgrade Hadoop to 2.6.0**

Try to upgrade Hadoop version to 2.6.0


---

* [BIGTOP-1706](https://issues.apache.org/jira/browse/BIGTOP-1706) | *Major* | **Make TestBlockRecovery runnable under all users**

Currently, TestBlockRecovery can only be run under user hdfs


---

* [BIGTOP-1705](https://issues.apache.org/jira/browse/BIGTOP-1705) | *Major* | **puppet: Allow configuring which hue apps to install**

Deployment via Puppet should allow customization of which Hue app plugins are install. Currently, the hue metapackage is installed which installs all Hue packages including all its app plugins.

For example, the following could be provided in site.yaml. When puppet is applied, only hue-beeswax, hue-pig, hue-search, and hue-server would be installed.
{code}
hue::server::hue\_apps:
  - beeswax
  - pig
  - search
{code}


---

* [BIGTOP-1703](https://issues.apache.org/jira/browse/BIGTOP-1703) | *Major* | **Limt override of JAVA\_OPTS in install\_solr.sh to cause minimal side-effects**

The following line in https://github.com/apache/bigtop/blob/master/bigtop-packages/src/common/solr/install\_solr.sh#L273


# FIXME: for some reason catalina doesn't use CATALINA\_OPTS for stop action
#        and thus doesn't know the admin port
export JAVA\_OPTS="$CATALINA\_OPTS"


appears to have been added so that "service solr-server stop" would work correctly.  I see a couple of problems with this:

1. This overwrites JAVA\_OPTS even when we are not trying to stop the service (e.g. when we do a (service solr-server start" )
2. If JAVA\_OPTS is already set to something useful we will be overriding it

I am proposing that we  change it to something like

if [ "$1" = "stop" ] ; then
    export JAVA\_OPTS="$JAVA\_OPTS $CATALINA\_OPTS"
fi

so that we minimize changes to JAVA\_OPTS


---

* [BIGTOP-1700](https://issues.apache.org/jira/browse/BIGTOP-1700) | *Trivial* | **Package YARN Timeline Server service for Apache Hadoop**

Apache Hadoop (>= 2.4.0) includes an YARN timeline server service.  http://hadoop.apache.org/docs/r2.4.0/hadoop-yarn/hadoop-yarn-site/TimelineServer.html


---

* [BIGTOP-1698](https://issues.apache.org/jira/browse/BIGTOP-1698) | *Major* | **Following BIGTOP-1697 improve README entry on toolchain setup**

bigtop\_toolchain/README.md (and potentially others) needs to be updated to reflect the changes introduced in BIGTOP-1697


---

* [BIGTOP-1697](https://issues.apache.org/jira/browse/BIGTOP-1697) | *Critical* | **Bootstrap: hook up toolchain into gradle build**

We can simplify the bootstrap of the development environment by hooking the toolchain right into the gradle build.

Thanks to the development of {{gradlew}} now you don't need to have anything on a system to have a functional build. I'd say a need to run {{puppet apply}} manually is going against this great paradigm: users needs to go through README files and try to figure out what to do.  I'd rather do 
{{gradle toolchain}} that will run {{sudo puppet apply...}} under the hood and deliver a functional environment.


---

* [BIGTOP-1696](https://issues.apache.org/jira/browse/BIGTOP-1696) | *Major* | **Provide build command to show BOM list**

It might be convenient to see what versions of which components are included in the current stack. Having a gradle task to provide something like:
{noformat}
        bigtop\_groovy             2.3.8
        bigtop\_jsvc              1.0.15
        bigtop\_tomcat            6.0.36
        bigtop\_utils              0.9.0
{noformat}
would be pretty nice.


---

* [BIGTOP-1694](https://issues.apache.org/jira/browse/BIGTOP-1694) | *Major* | **puppet: Make httpfs subscribe to core-site and hdfs-site**

When applying puppet on a cluster, the HttpFS service can be started before core-site.xml template is filled. This results in HttpFS using the default value of fs.defaultFS which is 'file://'. HttpFS will then be using the local file system instead of HDFS. If Hue is installed on the cluster as well, its file browser will show the local file system instead of HDFS.


---

* [BIGTOP-1693](https://issues.apache.org/jira/browse/BIGTOP-1693) | *Major* | **Puppet stdlib should be automatically installed by toolchain**

Right now we have an explicit instruction for a user to install puppet stdlib before doing the deployment. This is a bad UX. 

I think the installation should be done in the {{bigtop\_toolchain::deployment\_tools}}


---

* [BIGTOP-1692](https://issues.apache.org/jira/browse/BIGTOP-1692) | *Major* | **hieradata/site.yaml is missing gridgain-hadoop component**

gridgain-hadoop component is missing from the initial list, although we have the recipes for its deployment.


---

* [BIGTOP-1691](https://issues.apache.org/jira/browse/BIGTOP-1691) | *Major* | **Heira site.yaml template needs to have repo uri**

It seems that {{bigtop-deploy/puppet/hieradata/site.yaml}} is missing repo uri line without which a package manager won't be able to install cluster packages. I think with  BIGTOP-1676 the same will be true for apt.

BTW, can we have multiple URLs specified for the repos? A typical use case would be when you have say release repo and a dev.repo with your experimental stuff. Right now the only way around it is by setting a second repo manually.


---

* [BIGTOP-1687](https://issues.apache.org/jira/browse/BIGTOP-1687) | *Major* | **Puppet: fix wrong array representation for hadoop-zookeeper::server::ensemble**

The variable for hadoop-zookeeper::server::ensemble in hieradata/bigtop/cluster.yaml has a problem:
{code}
hadoop-zookeeper::server::ensemble:
- ["%{hiera('bigtop::hadoop\_head\_node')}:2888:3888"]
{code}

This will result in the deployed *zoo.cfg* has wrong configuration:
{code}
server.0:["bigtop1.docker:2888:3888"]
{code}
Hence the zookeeper and HBase can not successfully deployed.

Here's the correct version of zoo.cfg. It should be some thing like this:
{code}
server.0=bigtop1.docker:2888:3888
{code}


---

* [BIGTOP-1686](https://issues.apache.org/jira/browse/BIGTOP-1686) | *Major* | **puppet hadoop/mapred: Update and clean mapred template and namespace**

Update the mapred-site.xml template to current names for settings.
Remove outdated settings. Make more settings adjustable and move their
defaults into the Puppet class.

Change variable names to consistently resemble the setting names.


---

* [BIGTOP-1685](https://issues.apache.org/jira/browse/BIGTOP-1685) | *Major* | **puppet hadoop: Remove useless use of explicit hiera lookup**

Two explicit hiera lookups are left over from reworking the variable
lookup logic for ssh fencing key parameters. Those can go now.


---

* [BIGTOP-1684](https://issues.apache.org/jira/browse/BIGTOP-1684) | *Major* | **puppet hadoop/yarn: Make container executor configurable**

Make options for container executor configurable and work around the
executor crashing at startup if banned\_users is not set at all. See
https://issues.apache.org/jira/browse/YARN-2847. Also synchronise
yarn.nodemanager.linux-container-executor.group setting in yarn-site.xml
with what's actually used in the filesystem and container-executor.cfg.


---

* [BIGTOP-1683](https://issues.apache.org/jira/browse/BIGTOP-1683) | *Major* | **puppet hadoop-env.sh: Add option to configure tez environment**

This patch adds the option to class common of puppet module hadoop to 
set environment variables required for tez.


---

* [BIGTOP-1681](https://issues.apache.org/jira/browse/BIGTOP-1681) | *Major* | **[BigPetStore] Clean up BPS SparkSQL analytics module, add new queries**

Clean up and add new queries to the SparkSQL analytics module in the BPS Spark demo application.

Improvements to be  done include:
* Removing unnecessary semicolons
* Clean up and reorganize imports
* General refactoring of code for clarity
* Fix total transaction count (currently counts number of months)


---

* [BIGTOP-1678](https://issues.apache.org/jira/browse/BIGTOP-1678) | *Minor* | **Use openjdk7 for AmazonLinux**

Based on [BIGTOP-1609]


---

* [BIGTOP-1677](https://issues.apache.org/jira/browse/BIGTOP-1677) | *Critical* | **Tez packaging is still failing**

The tez rpm can not be built. After some self hacks I finally figured out the root cause:

BIGTOP-1179 commit is weird. The commit message shows that it was [authored on 27 Nov 2014|https://github.com/apache/bigtop/commit/f506701c8e8cd1b9e596c3f728996c988705e7d0], which should be an old patch targeted on 0.5.2 instead of the new one authored by [~oflebbe]. The wired thing is that the tez version of that commit is 0.6.0, which is new, but the code in that commit looked the same as the old patch submitted on 27 Nov 2014.

Anyhow, we need to sync up the code to the final reviewed version in BIGTOP-1179.


---

* [BIGTOP-1676](https://issues.apache.org/jira/browse/BIGTOP-1676) | *Major* | **Puppet: add deb repo auto deploy**

Our puppet recipes currently only implement yum repo auto deploy. we shall have deb repo being automatically set up as well.


---

* [BIGTOP-1675](https://issues.apache.org/jira/browse/BIGTOP-1675) | *Minor* | **Puppet: remove wheel group setting for bigtop\_real\_users**

When deploying BigTop Hadoop atop debian containers, it failed to add bigtop\_real\_users. The reason why it failed is because debian do not have wheel group by default. It seems that wheel group is less useful now and GNU su does not even support wheel group. So, I think we can just remove the group setting to support BigTop deployment at debian side.


---

* [BIGTOP-1674](https://issues.apache.org/jira/browse/BIGTOP-1674) | *Minor* | **Account for BPS simulation "burn-in" time**

The BPS Spark data generator has a burn-in time where all customers buy more than the usual amount of products.  If we exclude the first 7 days of transactions, we can account for the burn-in time and prevent unrealistic transactions from being included.


---

* [BIGTOP-1670](https://issues.apache.org/jira/browse/BIGTOP-1670) | *Major* | **puppet: Support Kerberos authentication on Hadoop component web GUIs**

Support configuration of Kerberos authentication on Hadoop component web GUIs. Also introduce support for trocla for randomly generating secrets that are stored on the master, don't change after creation and can be the same across hosts.


---

* [BIGTOP-1669](https://issues.apache.org/jira/browse/BIGTOP-1669) | *Major* | **puppet: Hadoop: Separate dependencies on Kerberos keytabs**

When trying to set up a node as only a datanode but with Kerberos security class hadoop::kerberos pulls in a dependency on package hadoop-yarn which makes puppet fail. This patch puts keytab creation into their respective component classes.

Also it corrects an insufficient dependency on "namenode format" by the datanode since the datanode needs the namenode to actually run before it can work.


---

* [BIGTOP-1668](https://issues.apache.org/jira/browse/BIGTOP-1668) | *Major* | **puppet: Adjust kerberos module for current Debian**

On current debian the krb5kdc service is very confined to its standard directories by systemd settings (writeable paths in systemd unit etc.). Adjust kerberos module to use those paths so it can work.


---

* [BIGTOP-1667](https://issues.apache.org/jira/browse/BIGTOP-1667) | *Minor* | **Clean up and simplify the install phase for Apache Spark**

Need to do:
 - Simplifying install phase for Spark
 - Remove ugly 'sed' trick
 - Layout in line with the upstream layout


---

* [BIGTOP-1665](https://issues.apache.org/jira/browse/BIGTOP-1665) | *Blocker* | **Update Wiki pages on how to develop and build Bigtop**

At least, the following pages are incorrect and do not reflect the convenience of bigtop\_toolchain and gradle-based build:
- https://cwiki.apache.org/confluence/display/BIGTOP/Building+Bigtop+on+Ubuntu
- https://cwiki.apache.org/confluence/display/BIGTOP/Building+Bigtop+on+RHEL7


---

* [BIGTOP-1664](https://issues.apache.org/jira/browse/BIGTOP-1664) | *Major* | **make test unpack resources optional**

allow unpackTestResources to be optional for the test utils... so that {{smoke-tests}} can work without needing jars.


---

* [BIGTOP-1663](https://issues.apache.org/jira/browse/BIGTOP-1663) | *Major* | **TestHadoopSmoke is failing because of improper set-up**

The set-up required for this test is already written, but it's commented out. Looks like it was broken by BIGTOP-1222.


---

* [BIGTOP-1662](https://issues.apache.org/jira/browse/BIGTOP-1662) | *Major* | **puppet: Fix hadoop configuration file incompleteness due to hiera conversion**

The changes from BIGTOP-1634 omit kerberos\_realm and hadoop\_security\_authentication variables from some classes so that they're not correctly entered in the generated configuration files. Also, a hasty "fix" to hadoop-env.sh causes all variables to remain unset always.


---

* [BIGTOP-1660](https://issues.apache.org/jira/browse/BIGTOP-1660) | *Major* | **Upgrade to Hive-1.0**

Just a reminder


---

* [BIGTOP-1659](https://issues.apache.org/jira/browse/BIGTOP-1659) | *Major* | **gridgain-hadoop packages need to provide unversioned softlinks for accelerator jar files**

gridgain-hadoop package needs to provide unversioned links for gridgain-core and gridgain-hadoop jar files to ease later deployment where these need to be linked from under {{/usr/lib/hadoop/lib}}


---

* [BIGTOP-1657](https://issues.apache.org/jira/browse/BIGTOP-1657) | *Major* | **bigtop-deploy puppets to support tez**

If tez configuration is selected: supply yarn-tez to mapred.xml and select hive.execution.engine=tez and others in hive-site.xml configuration


---

* [BIGTOP-1655](https://issues.apache.org/jira/browse/BIGTOP-1655) | *Major* | **Update VM and Docker provisioner to work with hiera converted puppet recipes**

After BIGTOP-1634 has been checked in, vagrant-puppet-vm and vagrant-puppet-docker need to be updated to work with hiera converted puppet recipes. The primary change in this JIRA would be to generate site.yaml as the configuration file instead of site.csv.


---

* [BIGTOP-1653](https://issues.apache.org/jira/browse/BIGTOP-1653) | *Major* | **Add queries for customer, state, and product statistics w/ d3 friendly JSON output to analytics phase.**

Follow on to BIGTOP-1536, this time we can use a scala json library if a good one exists.


---

* [BIGTOP-1651](https://issues.apache.org/jira/browse/BIGTOP-1651) | *Major* | **puppet: Format namenode and zkfc in noninteractive mode**

Format namenode and zkfc using noninteractive mode and honour return
codes.


---

* [BIGTOP-1649](https://issues.apache.org/jira/browse/BIGTOP-1649) | *Minor* | **Upgrade Apache Flume to 1.5.2**

Bump up Flume version to 1.5.2


---

* [BIGTOP-1648](https://issues.apache.org/jira/browse/BIGTOP-1648) | *Major* | **Update to Spark 1x to Spark 1.2.1**

Time to update spark ?  Looks like 1.2 is out. I don't see much value in lagging behind .   Tons of improvements in 1.2, for pyspark, machine learning,  and performance


---

* [BIGTOP-1645](https://issues.apache.org/jira/browse/BIGTOP-1645) | *Minor* | **Add subpackages for spark history server and thrift server**

Add subpackages for Apache Spark:
 - spark-history-server
 - spark-thriftserver (for Spark SQL)


---

* [BIGTOP-1640](https://issues.apache.org/jira/browse/BIGTOP-1640) | *Major* | **Add missing files for Apache Spark**

Apache Spark package includes shaded assembly jar but there are missing files for Spark's built-on modules.


---

* [BIGTOP-1636](https://issues.apache.org/jira/browse/BIGTOP-1636) | *Major* | **Missing patches and files for hue**

While merging patches I missed to commit two already reviewed patches from BIGTOP-1486.


---

* [BIGTOP-1635](https://issues.apache.org/jira/browse/BIGTOP-1635) | *Major* | **hue compile on vanilla debian**

Compile fails with

{code}
        -----------------------------------------------------------------------------------------------------------------
        If on Ubuntu 14.04 Trusty, you might be hitting https://bugs.launchpad.net/ubuntu/+source/python2.7/+bug/1115466.

        Recommended workaround:
        sudo ln -s /usr/lib/python2.7/plat-*/\_sysconfigdata\_nd.py /usr/lib/python2.7/

        More information:
        http://gethue.com/how-to-build-hue-on-ubuntu-14-04-trusty/
        -----------------------------------------------------------------------------------------------------------------
{code}

we might need to fix this in puppet


---

* [BIGTOP-1634](https://issues.apache.org/jira/browse/BIGTOP-1634) | *Major* | **Puppet class parameter and hiera conversion**

As discussed on the DEV list:
Update the puppet code to use self-contained, parametrised classes and proper scoping. Replace all extlookup calls bei either explicit or automatic hiera parameter lookups. Implement HA/non-HA alternative via hiera lookup hierarchy. Replace append\_each from bigtop\_util by suffix from stdlib. Do file imports via puppet:/// scheme. Remove bigtop\_util because remaining function get\_settings is not needed any more.

Additionally: Add additional configuration options for zookeeper and yarn as well as a new class for journalnode configuration.

I've separated it into two patches of ease of review:
0001: actual hiera/class conversion
0002: functional enhancements including journalnode configuration on top of that. Mainly meant as an example for ease of further expansion and containment of changes to single modules.

This JIRA is meant for the stuff contained in 0001, the actual hiera conversion. I can resubmit 0002 as a separate JIRA if desired. Also it should be possible to backport 0002 to the current puppet code base without much fuss.


---

* [BIGTOP-1633](https://issues.apache.org/jira/browse/BIGTOP-1633) | *Major* | **Pig compile fails again**

After BIGTOP-1594: Upgrade Pig to 0.14.0

The issue BIGTOP-1445 is undead again. 

Will apply the fix from BIGTOP-1445 again


---

* [BIGTOP-1632](https://issues.apache.org/jira/browse/BIGTOP-1632) | *Major* | **Support JMX monitoring when multiple HBase RS is brought up in a node**

Update made to the HBase init.d script in BIGTOP-732 allows users to bring up more than 1 RS on a node. This task is to make changes to HBase init.d script which will allow users to perform monitoring of all the RS through JMX.


---

* [BIGTOP-1629](https://issues.apache.org/jira/browse/BIGTOP-1629) | *Major* | **Move testDFSCLI from hcfs to hdfs directory**

This is an HDFS-only test, so let's move it out of HCFS.


---

* [BIGTOP-1627](https://issues.apache.org/jira/browse/BIGTOP-1627) | *Minor* | **Move enable\_local\_yum implementation to bigtop-deploy/utils/setup-env.sh to share with Docker provisioner**

Currently, we have *enable\_local\_yum* feature implemented in *vagrant-puppet-vm*'s Vagrantfile(see BIGTOP-1562's patch). This jira is proposing to move the implementation to {{bigtop-deploy/utils/setup-env.sh}} so that the we can share the general implementation between BigTop's VM provisoner and Docker provisioner.


---

* [BIGTOP-1621](https://issues.apache.org/jira/browse/BIGTOP-1621) | *Major* | **Migrate itest to gradle**

 build itest w gradle, so that we can call gradle tasks to install it as a local dependency, as part of supporting one single testing framework.  See BIGTOP-1608.

This is the first step, the minimal work necessary to allo gradle based smoke tests to use gradle best itest framework via calling {{gradle install}}  later those doing publishing of itest jars can finalize the process and test gradle for publishing.


---

* [BIGTOP-1620](https://issues.apache.org/jira/browse/BIGTOP-1620) | *Major* | **Hadoop deb Packages for architecture "all" containing binaries**

For instance package hadoop: /usr/lib/hadoop/lib/native/libhadoop.so

>apt-cache show hadoop
Package: hadoop
Version: 2.4.1-2
Architecture: *all*

RPM packages are for architecture "x86\_64" 

Recommending a patch to move architecture "all" to binary.


---

* [BIGTOP-1619](https://issues.apache.org/jira/browse/BIGTOP-1619) | *Trivial* | **change hadoop namenode port to 8020 (apache default port) in puppet script**

In puppet script, 17020 is used as the default port for namenode which is different from apache default namenode port (8020). We should change it to use apache default port to be consistent with apache standards. Also, since this is a configurable parameter (using puppet extlookup()), user should be able to specify custom port if they would like to.


---

* [BIGTOP-1618](https://issues.apache.org/jira/browse/BIGTOP-1618) | *Major* | **iTest integration tests need only to be bound to verify goal**

our CI is using {{deploy}} in the  iTest artifacts build. The issue is that {[deploy}} is bound to {{integration-test}} hence will execute new integration tests automatically. This will be running tests involving network and services manipulations on the shared build machines.

I suggest we only bind these tests to {{verify}} goal, which will let us to avoid running such tests as a part of {{deploy}}.


---

* [BIGTOP-1617](https://issues.apache.org/jira/browse/BIGTOP-1617) | *Major* | **Make clean-up commands in TestCLI more specific**

Currently, some of the tests in TestCLI clean up by deleting the entire user directory:

{noformat}<cleanup-commands>
<command>-fs NAMENODE -rm -r /user/USER\_NAME</command>
</cleanup-commands>{noformat}

If this directory exists prior to running the test and contains something other than subdirectories created during the test, stuff that shouldn't be deleted by TestCLI might get thrown out. The clean-up commands should specify which subdirectories and/or files to delete.


---

* [BIGTOP-1615](https://issues.apache.org/jira/browse/BIGTOP-1615) | *Blocker* | **Tests dependencies are on old Hadoop versions (2.3.0, 2.4.1)**

Hadoop dependency version needs to be bumped to what we are aiming for in 0.9 release


---

* [BIGTOP-1614](https://issues.apache.org/jira/browse/BIGTOP-1614) | *Trivial* | **Add .gitignore file for docker-puppet**

There are files we do not need to track at bigtop-deploy/vm/docker-puppet/. Let's add the files to .gitignore file.

Files to add:
{noformat}
Untracked files:
  (use "git add <file>..." to include in what will be committed)

	bigtop-deploy/vm/docker-puppet/config.rb
	bigtop-deploy/vm/docker-puppet/config/
	bigtop-deploy/vm/docker-puppet/hosts

{noformat}


---

* [BIGTOP-1613](https://issues.apache.org/jira/browse/BIGTOP-1613) | *Trivial* | **Add .gitignore for vagrant-puppet**

'bigtop-deploy/vm/vagrant-puppet/config' directory created from Vagrantfile so it should add to .gitignore file.


---

* [BIGTOP-1612](https://issues.apache.org/jira/browse/BIGTOP-1612) | *Trivial* | **Update README for smoke-tests**

README for Bigtop smoke-tests is not consistent with current deployment. It should be updated.


---

* [BIGTOP-1611](https://issues.apache.org/jira/browse/BIGTOP-1611) | *Major* | **mahoutsmokes aren't compiling**

{noformat}[ERROR] Failed to execute goal org.apache.maven.plugins:maven-compiler-plugin:3.1:compile (default-compile) on project mahout-smoke: Compilation failure: Compilation failure:
[ERROR] /Users/sananthaleggat/Downloads/real-bigtop/bigtop-tests/test-artifacts/mahout/src/main/groovy/org/apache/bigtop/itest/mahout/smoke/TestMahoutExamples.groovy:[74,1] 1. ERROR in /Users/sananthaleggat/Downloads/real-bigtop/bigtop-tests/test-artifacts/mahout/src/main/groovy/org/apache/bigtop/itest/mahout/smoke/TestMahoutExamples.groovy (at line 74)
[ERROR] f\_name,loc -&gt;
[ERROR] ^
[ERROR] Groovy:unexpected token: f\_name @ line 74, column 13.
[ERROR] 
[ERROR] /Users/sananthaleggat/Downloads/real-bigtop/bigtop-tests/test-artifacts/mahout/src/main/groovy/org/apache/bigtop/itest/mahout/smoke/TestMahoutExamples.groovy:[75,1] 2. ERROR in /Users/sananthaleggat/Downloads/real-bigtop/bigtop-tests/test-artifacts/mahout/src/main/groovy/org/apache/bigtop/itest/mahout/smoke/TestMahoutExamples.groovy (at line 75)
[ERROR] sh.exec("if [ ! -f ${download\_dir}/${f\_name} ]; then " +
[ERROR] ^
[ERROR] Groovy:unexpected token: sh @ line 75, column 13.
[ERROR] 
[ERROR] /Users/sananthaleggat/Downloads/real-bigtop/bigtop-tests/test-artifacts/mahout/src/main/groovy/org/apache/bigtop/itest/mahout/smoke/TestMahoutExamples.groovy:[80,1] 3. ERROR in /Users/sananthaleggat/Downloads/real-bigtop/bigtop-tests/test-artifacts/mahout/src/main/groovy/org/apache/bigtop/itest/mahout/smoke/TestMahoutExamples.groovy (at line 80)
[ERROR] assertTrue("file "+ f\_name + " at  "+loc + " len=" + file.length() + " is &gt; 5k bytes", file.length() &gt; 5000 );
[ERROR] ^
[ERROR] Groovy:unexpected token: assertTrue @ line 80, column 13.
[ERROR] 
[ERROR] /Users/sananthaleggat/Downloads/real-bigtop/bigtop-tests/test-artifacts/mahout/src/main/groovy/org/apache/bigtop/itest/mahout/smoke/TestMahoutExamples.groovy:[83,1] 4. ERROR in /Users/sananthaleggat/Downloads/real-bigtop/bigtop-tests/test-artifacts/mahout/src/main/groovy/org/apache/bigtop/itest/mahout/smoke/TestMahoutExamples.groovy (at line 83)
[ERROR] }
[ERROR] ^
[ERROR] Groovy:unexpected token: } @ line 83, column 5.
[ERROR] 
[ERROR] Found 4 errors and 0 warnings.{noformat}

It's caused by commit 3b13a811a8c6ad568a6a3a7b586be9f2fdf4e810 of BIGTOP-1287.


---

* [BIGTOP-1610](https://issues.apache.org/jira/browse/BIGTOP-1610) | *Major* | **Fix /etc/profile.d/bigtop.sh scripts**

Forgot to commit the debian file, centos have to be changed after switch to openjdk7


---

* [BIGTOP-1609](https://issues.apache.org/jira/browse/BIGTOP-1609) | *Major* | **Use openjdk7 for CentOS**

bigtop-toolchain uses oracle jdk for all platforms. In [BIGTOP-1480] it seems consensus to use openjdk7 instead.

Since Oracle will stop free support of Oracle JDK 7 in near future it is better to rely on the distribution supplied openjdk 7 instead


---

* [BIGTOP-1606](https://issues.apache.org/jira/browse/BIGTOP-1606) | *Major* | **Tachyon webapp directory not located where expected**

Here is where the RPM places the webapp

{code}
bash-4.1# rpm -ql tachyon | grep webapp
/usr/share/tachyon/web/webapp
/usr/share/tachyon/web/webapp/browse-pagination-header.jsp
/usr/share/tachyon/web/webapp/browse.jsp
/usr/share/tachyon/web/webapp/configuration.jsp
/usr/share/tachyon/web/webapp/css
/usr/share/tachyon/web/webapp/css/bootstrap-responsive.min.css
/usr/share/tachyon/web/webapp/css/bootstrap.min.css
/usr/share/tachyon/web/webapp/css/tachyoncustom.min.css
/usr/share/tachyon/web/webapp/dependency.jsp
/usr/share/tachyon/web/webapp/footer.jsp
/usr/share/tachyon/web/webapp/general.jsp
/usr/share/tachyon/web/webapp/header.jsp
/usr/share/tachyon/web/webapp/img
/usr/share/tachyon/web/webapp/img/amplab\_logo.png
/usr/share/tachyon/web/webapp/img/glyphicons-halflings-white.png
/usr/share/tachyon/web/webapp/img/glyphicons-halflings.png
/usr/share/tachyon/web/webapp/img/logo.png
/usr/share/tachyon/web/webapp/index.html
/usr/share/tachyon/web/webapp/js
/usr/share/tachyon/web/webapp/js/bootstrap.min.js
/usr/share/tachyon/web/webapp/js/cookies.min.js
/usr/share/tachyon/web/webapp/js/jquery-1.9.1.min.js
/usr/share/tachyon/web/webapp/memory-pagination-header.jsp
/usr/share/tachyon/web/webapp/memory.jsp
/usr/share/tachyon/web/webapp/pagination-component.jsp
/usr/share/tachyon/web/webapp/pagination-control.jsp
/usr/share/tachyon/web/webapp/viewFile.jsp
/usr/share/tachyon/web/webapp/workers.jsp
{code}


Here is where tachyon expects it

{code}
# less /var/lib/tachyon/logs/master.log\@172.17.0.3\_01-17-2015
015-01-17 23:36:56,897 WARN  webapp.WebAppContext (WebAppContext.java:doStart) - Failed startup of context o.e.j.w.WebAppContext{/,null},/var/lib/tachyon/core/src/main/webapp
java.io.FileNotFoundException: /var/lib/tachyon/core/src/main/webapp
{code}


---

* [BIGTOP-1605](https://issues.apache.org/jira/browse/BIGTOP-1605) | *Major* | **Tachyon RPM does not depend on bigtop utils**

Tachyon init scripts assume that the bigtop utils is installed, but does not require it in the RPM.  Noticed this when I tried to run the init script

{code}
bash-4.1# /etc/init.d/tachyon-master start
/etc/init.d/tachyon-master: line 40: /usr/lib/bigtop-utils/bigtop-detect-javahome: No such file or directory
Starting Tachyon master (tachyon-master):                  [  OK  ]
{code}


---

* [BIGTOP-1604](https://issues.apache.org/jira/browse/BIGTOP-1604) | *Critical* | **Create a MAINTAINERS.txt File**

Start with 0.9, lets maintain a MAINTAINERS.txt file which has component, maintainer names.  

Everybody *please* add entries here for components in bigtop that you will maintain. 

I think we Are we in agreement that, 
- Components that *ARE NOT* in this file, can be dropped without much debate.  No point in releasing something that is maintained by pure chance of randomly someone deciding to add a patch.
- Components that *ARE* added in this file will, for obvious reasons, be central to the architecture of the bigtop distribution. 

Componets are : YARN, HBASE, SPARK, HIVE, PIG, MAHOUT, FLUME, (many others ...)  folks please chime in on what you can maintain in the comments below, and I'll craft the file. 

{panel:title=Maintainers list draft}
tachyon: david capwell, jay vyas
spark: jay vyas,
hbase: andrew purtell
hadoop: mark grover, cos, andrew purtell
hive: mark grover
phoenix: andrew purtell
bigtop-deploy/vagrant: jay vyas, evans ye
bigtop-deploy/puppet: jay vyas, cos, evans ye
bigtop-test-framework: cos
smoke-tests(hive,pig,mahout,mapreduce,flume,spark,hbase,tachyon): jay vyas, david capwell
bigpetstore: jay vyas, rj nowling,
zookeeper: sean mackrory
gridgain-hadoop: cos
sqoop: sean mackrory, andrew purtell
maven publishing and packaging: 
test-artifacts and test-execution repos:  
continuous integration infra:
gradle / build system: cos
pig: evans ye, daniel dai
tez: evans ye, oflebbe
oozie evans ye
hue: oflebbe
sentry: Mark Grover
{panel}


---

* [BIGTOP-1603](https://issues.apache.org/jira/browse/BIGTOP-1603) | *Major* | **Rename docker-puppet and vagrant-puppet to better indicate its function and difference**

Since we're close to the official release which brings the docker provisioner up to the surface. It'd be better to have component names reflect its function naively. (Sorry for the bad naming at the very beginning...). This is also a recall of [~jayunit100]'s comment in BIGTOP-1578, and I'm with him. The proposed change:
{noformat}
docker-puppet --> vagrant-puppet-docker 
vagrant-puppet --> vagrant-puppet-vm
{noformat}


---

* [BIGTOP-1601](https://issues.apache.org/jira/browse/BIGTOP-1601) | *Major* | **cleanup whitespaces across test-artifacts**

as in BIGTOP-1287, we have some sitting around bad formatting and other stuff....  lets do a global cleanup of formatting.  

anyone have good tools for this ?  I find it difficult with so many languages to get a good formatting workflow... maybe someone can suggest a good tool for it and put a patch in .   i can also help


---

* [BIGTOP-1600](https://issues.apache.org/jira/browse/BIGTOP-1600) | *Major* | **Improve front page content of website**

Improve description of Bigtop


---

* [BIGTOP-1597](https://issues.apache.org/jira/browse/BIGTOP-1597) | *Major* | **Design flyers for upcoming SCALE conference**

Make a simple flyer with a description of BigTop, logo, QR code and any other details.


---

* [BIGTOP-1596](https://issues.apache.org/jira/browse/BIGTOP-1596) | *Major* | **bigtop build fails because it tries to write to forrest installation**

{code}
      [exec] Fetching plugins descriptor: http://forrest.apache.org/plugins/whiteboard-plugins.xml
     [exec] Getting: http://forrest.apache.org/plugins/whiteboard-plugins.xml
     [exec] To: /home/olaf/bigtop/build/pig/rpm/BUILD/pig-0.12.1/src/docs/build/tmp/plugins-2.xml
     [exec] local file date : Mon Jan 31 18:18:42 PST 2011
     [exec] ......
     [exec] last modified = Fri Jun 10 01:14:49 PDT 2011
     [exec] Plugin list loaded from http://forrest.apache.org/plugins/plugins.xml.
     [exec] Plugin list loaded from http://forrest.apache.org/plugins/whiteboard-plugins.xml.
     [exec]
     [exec] init-plugins:
     [exec]
     [exec] BUILD FAILED
     [exec] /usr/local/apache-forrest/main/targets/plugins.xml:374: Directory /usr/local/apache-forrest/build/plugins creation was not successful for an unknown reason
     [exec]
     [exec] Total time: 6 seconds

BUILD FAILED
/home/olaf/bigtop/build/pig/rpm/BUILD/pig-0.12.1/build.xml:633: exec returned: 1

Total time: 1 minute 4 seconds
error: Bad exit status from /var/tmp/rpm-tmp.dCIFl2 (%build)
    Bad exit status from /var/tmp/rpm-tmp.dCIFl2 (%build)


RPM build errors:
:pig-rpm FAILED

FAILURE: Build failed with an exception.

* Where:
Script '/home/olaf/bigtop/packages.gradle' line: 316

* What went wrong:
Execution failed for task ':pig-rpm'.
> Process 'command 'rpmbuild'' finished with non-zero exit value 1
{code}


---

* [BIGTOP-1595](https://issues.apache.org/jira/browse/BIGTOP-1595) | *Major* | **kill list**

Okay bigtop ! Time to get out the sledgehammers.  

- We can't maintain everything in bigtop at the moment.  Hive's metastore and so on, for example, which are the core of it, isn't working.
  
- Basically anything that is unmaintained and not being used, seems like it can be up for the chopping block.  

Keep in mind the priorities for BIGTOP-1582, which prevents some stuff from going away.


---

* [BIGTOP-1594](https://issues.apache.org/jira/browse/BIGTOP-1594) | *Major* | **Upgrade Pig to 0.14.0**

Bump up Apache Pig version to 0.14.0


---

* [BIGTOP-1593](https://issues.apache.org/jira/browse/BIGTOP-1593) | *Major* | **Fix types in FailureVars**

Instead of converting Strings to the necessary types, initialize with the correct types right away.


---

* [BIGTOP-1591](https://issues.apache.org/jira/browse/BIGTOP-1591) | *Major* | **JarContentTest is failing on JDK7**

{noformat}Caused by: Assertion failed: 

assert e.getMessage().startsWith('Could not open')
       | |            |
       | |            false
       | /usr/java/latest/lib/nofilelikethat.jar (No such file or directory)
       java.io.FileNotFoundException: /usr/java/latest/lib/nofilelikethat.jar (No such file or directory){noformat}


---

* [BIGTOP-1589](https://issues.apache.org/jira/browse/BIGTOP-1589) | *Critical* | **Prioritization is broken in bigtop-detect-javahome**

bigtop-detect-javahome uses 'ls -rd' to sort the JDKs in each category in reverse lexicographical order, but I believe when we switched to having separate variables defined for each major JDK version we overrode that mechanism so older JDKs still take precedence over newer ones.


---

* [BIGTOP-1588](https://issues.apache.org/jira/browse/BIGTOP-1588) | *Major* | **Current Bigtop Pig does not build because of API Change in Hive**

Current pig does not build because of API Change in Hive.

ByteStream.Output  getCount() does not exist any more.

{code}
compile:
     [echo]  *** Compiling Pig UDFs ***
    [javac] /net/os2-debian80/fs1/olaf/bigtop/output/pig/pig-0.12.1/contrib/piggybank/java/build.xml:94: warning: 'includeantruntime' was not set, defaulting to build.sysclasspath=last; set to false for repeatable builds
    [javac] Compiling 164 source files to /net/os2-debian80/fs1/olaf/bigtop/output/pig/pig-0.12.1/contrib/piggybank/java/build/classes
    [javac] warning: [options] bootstrap class path not set in conjunction with -source 1.6
    [javac] /net/os2-debian80/fs1/olaf/bigtop/output/pig/pig-0.12.1/contrib/piggybank/java/src/main/java/org/apache/pig/piggybank/storage/HiveColumnarStorage.java:106: error: cannot find symbol
    [javac]             colValRefs[i].set(byteStream.getData(), startPos, byteStream.getCount() - startPos);
    [javac]                                                                         ^
    [javac]   symbol:   method getCount()
    [javac]   location: variable byteStream of type Output
    [javac] /net/os2-debian80/fs1/olaf/bigtop/output/pig/pig-0.12.1/contrib/piggybank/java/src/main/java/org/apache/pig/piggybank/storage/HiveColumnarStorage.java:107: error: cannot find symbol
    [javac]             startPos = byteStream.getCount();
    [javac]                                  ^
    [javac]   symbol:   method getCount()
    [javac]   location: variable byteStream of type Output
    [javac] Note: Some input files use or override a deprecated API.
    [javac] Note: Recompile with -Xlint:deprecation for details.
    [javac] Note: Some input files use unchecked or unsafe operations.
    [javac] Note: Recompile with -Xlint:unchecked for details.
    [javac] 2 errors
    [javac] 1 warning
{code}


---

* [BIGTOP-1587](https://issues.apache.org/jira/browse/BIGTOP-1587) | *Major* | **Fix typos in install-tomcat.sh**

{noformat}Required not-so-options:
     --build-dir=DIR             path to Whirr dist.dir
     --prefix=PREFIX             path to install into

  Optional options:
     --doc-dir=DIR               path to install docs into [/usr/share/doc/whirr]
     --lib-dir=DIR               path to install Whirr home [/usr/lib/whirr]{noformat}

"whirr" should be "bigtop-tomcat"


---

* [BIGTOP-1586](https://issues.apache.org/jira/browse/BIGTOP-1586) | *Major* | **BigPetStore-Spark only works on the East Coast .**

Yup, its true.  i think :)

When visiting my parents in *oklahoma* I found that the way bigpetstore-spark is set up, only people on the *right* coast can run the unit tests...  something with the default time zone setup in java and the unit tests which test for set equivalence.  

{noformat}
s
Failed to match [Lscala.Tuple5;@7ac2933e and [Lscala.Tuple5;@7c510a68
missing (Store(5,11553),Location(11553,Uniondale,NY),Customer(999,Cesareo,Lamplough,20152),Location(20152,Chantilly,VA),TransactionProduct(999,32,5,java.util.GregorianCalendar[time=1446530891000,areFieldsSet=true,areAllFieldsSet=false,lenient=true,zone=sun.util.calendar.ZoneInfo[id="America/Chicago",offset=-21600000,dstSavings=3600000,useDaylight=true,transitions=235,lastRule=java.util.SimpleTimeZone[id=America/Chicago,offset=-21600000,dstSavings=3600000,useDaylight=true,startYear=0,startMode=3,startMonth=2,startDay=8,startDayOfWeek=1,startTime=7200000,startTimeMode=0,endMode=3,endMonth=10,endDay=1,endDayOfWeek=1,endTime=7200000,endTimeMode=0]],firstDayOfWeek=1,minimalDaysInFirstWeek=1,ERA=1,YEAR=2015,MONTH=10,WEEK\_OF\_YEAR=45,WEEK\_OF\_MONTH=1,DAY\_OF\_MONTH=3,DAY\_OF\_YEAR=307,DAY\_OF\_WEEK=3,DAY\_OF\_WEEK\_IN\_MONTH=1,AM\_PM=0,HOUR=0,HOUR\_OF\_DAY=0,MINUTE=8,SECOND=11,MILLISECOND=0,ZONE\_OFFSET=-21600000,DST\_OFFSET=0],category=dry dog food;brand=Happy Pup;flavor=Fish & Potato;size=30.0;per\_unit\_cost=2.67;))
... not found= (Store(5,11553),Location(11553,Uniondale,NY),Customer(999,Cesareo,Lamplough,20152),Location(20152,Chantilly,VA),TransactionProduct(999,32,5,java.util.GregorianCalendar[time=?,areFieldsSet=false,areAllFieldsSet=true,lenient=true,zone=sun.util.calendar.ZoneInfo[id="GMT",offset=0,dstSavings=0,useDaylight=false,transitions=0,lastRule=null],firstDayOfWeek=1,minimalDaysInFirstWeek=1,ERA=1,YEAR=2015,MONTH=9,WEEK\_OF\_YEAR=2,WEEK\_OF\_MONTH=2,DAY\_OF\_MONTH=12,DAY\_OF\_YEAR=5,DAY\_OF\_WEEK=2,DAY\_OF\_WEEK\_IN\_MONTH=1,AM\_PM=0,HOUR=6,HOUR\_OF\_DAY=4,MINUTE=29,SECOND=46,MILLISECOND=0,ZONE\_OFFSET=0,DST\_OFFSET=0],category=dry dog food;brand=Happy Pup;flavor=Fish & Potato;size=30.0;per\_unit\_cost=2.67;))
... not found= (Store(1,98110),Location(98110,Bainbridge Islan,WA),Customer(999,Cesareo,Lamplough,20152),Location(20152,Chantilly,VA),TransactionProduct(999,31,1,java.util.GregorianCalendar[time=?,areFieldsSet=false,areAllFieldsSet=true,lenient=true,zone=sun.util.calendar.ZoneInfo[id="GMT",offset=0,dstSavings=0,useDaylight=false,transitions=0,lastRule=null],firstDayOfWeek=1,minimalDaysInFirstWeek=1,ERA=1,YEAR=2015,MONTH=10,WEEK\_OF\_YEAR=2,WEEK\_OF\_MONTH=2,DAY\_OF\_MONTH=3,DAY\_OF\_YEAR=5,DAY\_OF\_WEEK=2,DAY\_OF\_WEEK\_IN\_MONTH=1,AM\_PM=0,HOUR=6,HOUR\_OF\_DAY=1,MINUTE=8,SECOND=11,MILLISECOND=0,ZONE\_OFFSET=0,DST\_OFFSET=0],category=poop bags;brand=Dog Days;color=Blue;size=60.0;per\_unit\_cost=0.21;))
... not found= (Store(6,66067),Location(66067,Ottawa,KS),Customer(999,Cesareo,Lamplough,20152),Location(20152,Chantilly,VA),TransactionProduct
{noformat}

I've got a patch coming in which has  some more general improvements to it, and in also some removal of the monads in the unit tests to make it easier to debug/run.  

I'll submit it shortly once i fully fix the time zone issue.  

Even though i love the east coast, I have a dream that anyone, regardless of the coast they are on, race, religion, or creed, can use spark to generate petabytes of fake data !


---

* [BIGTOP-1585](https://issues.apache.org/jira/browse/BIGTOP-1585) | *Major* | **test artifacts tasks include extra tasks for nonexisting components**

Among the {{install-}} tasks I see the following
{code}
install-pom.xml - Installs pom.xml artifact with Maven
install-README - Installs README artifact with Maven
...
install-target - Installs target artifact with Maven
{code}
Clearly, those shouldn't be present.


---

* [BIGTOP-1583](https://issues.apache.org/jira/browse/BIGTOP-1583) | *Minor* | **update the default yum repo in puppet site.pp**

The default yum repo in site.pp is {{http://bigtop01.cloudera.org:8080/view/Hadoop%200.23/job/Bigtop-23-matrix/label=centos5/lastSuccessfulBuild/artifact/output/}}, which is no longer available. If user do not explicitly specify the {{bigtop\_yumrepo\_uri}} in site.csv, the following error occur:
{code}
Error: Execution of '/usr/bin/yum -d 0 -e 0 -y list java-1.7.0-openjdk-devel.x86\_64' returned 1: Error: Cannot retrieve repository metadata (repomd.xml) for repository: Bigtop. Please verify its path and try again
{code}
Let's set the default repo to official release build, or at least make it functional.


---

* [BIGTOP-1581](https://issues.apache.org/jira/browse/BIGTOP-1581) | *Major* | **Allow multiple Flume agents to be executed as a service using Bigtop init.d script**

Using the current init.d script only one Flume agent can be managed as a service. In practice there will be more than one Flume agent on a node which need be managed. If the init.d script can be improved to accept a agent name for the service requests (start|stop|restart|...) and manage them it will help many installations.


---

* [BIGTOP-1580](https://issues.apache.org/jira/browse/BIGTOP-1580) | *Major* | **Improve Bigtop Toolchain: Versioning of Packages**

Right now there is no build numbering (beyond -1 ) for different packaging attempts and bigtop releases.

There is no workable way to increase build numbering in Bigtop. (At least this is the situation for ubuntu and debian, have not checked RPM).

This leads to indentical package versions and buildnumbers for different bigtop builds when no package version upgrade has been made. This is not desirable , since it essentially disables package upgrades at all.

There is a BIGTOP\_BUILD\_STAMP which could be used to introduce the needed semantics but sadly this BIGTOP\_BUILD\_STAMP is appended to the PKG\_VERSION part of the numbering, not the RELEASE\_VERSION part .

I vote to move BIGTOP\_BUILD\_STAMP to the "right" place in the package-version: Appending to RELEASE\_VERSION


---

* [BIGTOP-1579](https://issues.apache.org/jira/browse/BIGTOP-1579) | *Major* | **Implement patching for Bigtop**

Right now, we apply changes/patches in the do-build-component script in the bigtop-packages/common/<package> part of the build process .

Would be cleaner and easier to use the RPM / Deb functionality of RPMbuild / debuild to apply patches. But right now the gradle script is not flexible enough. Since make is now obsolete we can improve this situation.


---

* [BIGTOP-1578](https://issues.apache.org/jira/browse/BIGTOP-1578) | *Minor* | **Refactor vagrant-puppet provisioner to have its configurations all come from yaml**

This is the first step for simplification and consolidation of current available two Bigtop provisioner.
With the yaml file introduced to the provisioner, we can now have a tidy structure by removing provision.sh and do all the configuration in vagrantconfig.yaml. 
Meanwhile, the code snippet used in both vagrant-puppet and docker-puppet is now shared in {{bigtop-deploy/vm/utils/setup-env.sh}}, so that we won't be confusing where to find or add a function.


---

* [BIGTOP-1576](https://issues.apache.org/jira/browse/BIGTOP-1576) | *Minor* | **Add Vagrant installation to bigtop\_toolchain**

As [~cos]'s comment in BIGTOP-1564, this jira is going to "download the package and install it if the local vagrant version is lesser than expected".
The patch will add a puppet recipe to automatically install Vagrant, helping to setup environment for running docker provisioner.


---

* [BIGTOP-1574](https://issues.apache.org/jira/browse/BIGTOP-1574) | *Major* | **Phoenix packaging requires build and classpath changes after PHOENIX-1455**

PHOENIX-1455 replaces org.xerial.snappy with org.iq80.snappy. There are two issues as initially reported on PHOENIX JIRAs.
# PHOENIX-1530: Bigtop shouldn't define 'snappy.version' for the Phoenix build, since there isn't agreement between the build scaffold and Phoenix as to which snappy implementation is wanted.
# PHOENIX-1531: We need a minor fix to how HBASE\_CLASSPATH is set up. We don't want the "core" jar, we want the "client" jar.


---

* [BIGTOP-1571](https://issues.apache.org/jira/browse/BIGTOP-1571) | *Major* | **Remove Whirr from the BOM**

To track Whirr retirement from the stack


---

* [BIGTOP-1570](https://issues.apache.org/jira/browse/BIGTOP-1570) | *Major* | **docker-puppet fails to deploy due to stdlib can not be found**

BIGTOP-1553 brings stdlib in but the module path does not included in the puppet apply snippet in {{docker-hadoop.sh}}.
The following error printed when spinning up docker cluster:
{code}
Error: Could not find class stdlib for bigtop1.docker on node bigtop1.docker
{code}


---

* [BIGTOP-1569](https://issues.apache.org/jira/browse/BIGTOP-1569) | *Major* | **provide alias targets for building packages native to the OS**

Especially when executing in a matrix environment (e.g. on Jenkins) it is very useful to be able to tell our gradle build system -- just build a package that is native to this system instead of specifying rpm/deb.


---

* [BIGTOP-1568](https://issues.apache.org/jira/browse/BIGTOP-1568) | *Major* | **bigtop01 needs gradle**

I finally created a build for bigpestore, and found that  
- http://bigtop01.cloudera.org:8080/job/bigpetstore/ doesn't seem to have gradle installed.... 
- also i can't run {{gradlew}} because it doesn't have {{unzip}} installed. 

So lets update toolchain on bigtop01 ...


---

* [BIGTOP-1567](https://issues.apache.org/jira/browse/BIGTOP-1567) | *Critical* | **puppet cannot install components whatever given to it**

The fix in BIGTOP-1553 introduce an issue that is variable {{$components}} will always be an one item array.
This can be identified by adding a quick evaluation snippet in {{bigtop/bigtop-deploy/puppet/manifests/cluster.pp}}:
{code}
fail("print component[0]: ${$components[0]}")
{code}
the output:
{code}
Error: print component[0]: hadoopyarnmapred-app at /bigtop-home/bigtop-deploy/puppet/manifests/cluster.pp:83 on node bigtop1.vagrant
{code}
Consequently, the following "if" statement for component installation will not be true because it can not match the specific string.


---

* [BIGTOP-1566](https://issues.apache.org/jira/browse/BIGTOP-1566) | *Major* | **Puppet README file needs to reflect multiple modules directoty requirement**

BIGTOP-1553 has introduced new dep on Puppet {{stdlib}} module. 
Because we are running {{puppet apply}} with explicit {{--modulepath}} command-line parameter the following location {{/etc/puppet/modules}} needs to be added to the modulepath. This is missed from the README file.


---

* [BIGTOP-1564](https://issues.apache.org/jira/browse/BIGTOP-1564) | *Major* | **docker-puppet doesn't use vagrantconfg.yaml for configuration parameters**

Looks like {{provision.sh}} has hardcoded content for puppet site.csv configuration file, instead of getting needed parameters from the YAML config.


---

* [BIGTOP-1563](https://issues.apache.org/jira/browse/BIGTOP-1563) | *Major* | **Puppet deployment needs to setup user hdfs keys for password-less logins**

To let some integration tests to function, user {{hdfs}} should be able to login across the nodes with password-less ssh.


---

* [BIGTOP-1562](https://issues.apache.org/jira/browse/BIGTOP-1562) | *Major* | **Critical tachyon pupet improvements.**

The puppet recipe committed with tachyon was minimal : Really it just handles installation.

This improvement makes it so that puppet

- formats tachyon
- sets up logging
- sets the master uri in {{tachyon-env.sh}}

I'll attach an initial patch, and maybe [~dcapwell] can try it out (ive tested locally and added necessary vagrant mods so its easy to test :) )


---

* [BIGTOP-1560](https://issues.apache.org/jira/browse/BIGTOP-1560) | *Major* | **Add a test case for performing block corruption recovery**

Found this issue in internal testing. Roughly:

create file in HDFS
find block for the file
corrupt a block
trigger recovery by trying to read the file
check recovery was successful


---

* [BIGTOP-1559](https://issues.apache.org/jira/browse/BIGTOP-1559) | *Major* | **Tests are failing in Apache CI build**

Looks like we have a couple of tests failing for a long time now. 
- ClusterFailuresTest.testNetworkShutdown
- ClusterFailuresTest.testServiceRestart

For more info look at 
  https://builds.apache.org/job/Bigtop-trunk-iTest/org.apache.bigtop.itest$itest-common/1886/testReport/


---

* [BIGTOP-1558](https://issues.apache.org/jira/browse/BIGTOP-1558) | *Major* | **Make gradle easier to navigate**

Right now, when {{gradle}} is ran user gets a long list of package-specific tasks. if {{gradle tasks}} is ran you'll see a mix of tasks for test artifacts, package related, and some generic gradle build tasks. Often times they lacks any description which makes it hard to navigate. 

Let's make this initial step more user-friendly, eliminating a need to document the build system separately.


---

* [BIGTOP-1557](https://issues.apache.org/jira/browse/BIGTOP-1557) | *Major* | **website misses ci and announce mailing lists info**

The website is missing info on CI and announce lists. Needs to be added.


---

* [BIGTOP-1556](https://issues.apache.org/jira/browse/BIGTOP-1556) | *Major* | **Cleanup some unused minor stuff.**

I noticed a couple files nobody (i think) is using

1) DEVNOTES : A file just floating in the top level directory.
2) bigtop-deploy/vm/boxgrinder recipes. Are we planning to continue w/ boxgrinder, and are we supporting it ?
3) {{bigtop-deploy/vm/vagrant/}} (non puppet recipe)

*shall we delete these ?*
or are people using them?


---

* [BIGTOP-1555](https://issues.apache.org/jira/browse/BIGTOP-1555) | *Minor* | **remove mapred-app from docs or code snippet (post-BIGTOP-1522), cleanup vagrant-puppet to core components.**

In BIGTOP-1522, yarn absorb mapred-app since yarn and mapreduce are Indivisible. As a result some code snippet and readme in vagrant or docker provisioner might need to be update in order to reflect this change.


---

* [BIGTOP-1554](https://issues.apache.org/jira/browse/BIGTOP-1554) | *Major* | **bigtop-deploy/puppet/config/site.csv was wrongfully committed.**

bigtop-deploy/puppet/config/site.csv has been wrongfully committed as a part of BIGTOP-1497 patch.

[~jayunit100], could you please be more careful with reviews? Thanks!


---

* [BIGTOP-1553](https://issues.apache.org/jira/browse/BIGTOP-1553) | *Trivial* | **puppet installation fails when components value is a single item instead of a list**

If the value for components is a single value such as "hive" instead of a list of values then the following error occurs:

components is not an hash or array when accessing it with 0 at /var/tmp/bigtop-0.8.0/bigtop-deploy/puppet/manifests/cluster.pp:123


---

* [BIGTOP-1552](https://issues.apache.org/jira/browse/BIGTOP-1552) | *Minor* | **Add support for AmazonLinux to bigtop-deploy/puppet**

Support for AmazonLinux added to the puppet deploy scripts.


---

* [BIGTOP-1551](https://issues.apache.org/jira/browse/BIGTOP-1551) | *Major* | **build stops because gradle does not handle symlinks well**

Bigtop dies after compiling hue with this error:

{code}
Finished running lintian.
:hue-deb FAILED

FAILURE: Build failed with an exception.

* Where:
Script '/net/os2-debian80/fs1/olaf/bigtop/packages.gradle' line: 201

* What went wrong:
Execution failed for task ':hue-deb'.
> Unable to delete file: xxxxxxx/bigtop/output/hue/hue-3.6.0/debian/tmp/usr/lib/hue/build/env/include/python2.7/boolobject.h

* Try:
Run with --stacktrace option to get the stack trace. Run with --info or --debug option to get more log output.

BUILD FAILED
{code}


---

* [BIGTOP-1550](https://issues.apache.org/jira/browse/BIGTOP-1550) | *Major* | **Spark update to 1.1.0**

Update rather old spark dependency.

This update is not needed by me, but I had to test it for [BIGTOP-1549] anyway and it compiled cleanly.

I cannot test it, though


---

* [BIGTOP-1549](https://issues.apache.org/jira/browse/BIGTOP-1549) | *Critical* | **spark compile broken**

Spark does not compile anymore since the dependency mqtt-client-0.4.0 has been removed from the eclipse repository.

See yourself: 
https://repo.eclipse.org/content/repositories/paho-releases/org/eclipse/paho/mqtt-client/0.4.0/

I did not find a different repository providing it. Since I accidentially removed my maven cache I connot compile bigtop any more.

IMHO The options are:
  * Removing spark
  * Removing mqtt-client-dependency
  * -Looking into whether upgrading spark solves this issue-
  * Providing the needed jar by bigtop itself
  * Uploading the jar to some other repository and adding a new repo to the spark build
  * Asking eclipse to reestablish this artifact


---

* [BIGTOP-1548](https://issues.apache.org/jira/browse/BIGTOP-1548) | *Major* | **hue uses snapshot dependency to removed snapshot**

hue uses dependency to hadoop.version 2.2.0-mr1-cdh5.0.0-SNAPSHOT which has been pulled


---

* [BIGTOP-1545](https://issues.apache.org/jira/browse/BIGTOP-1545) | *Major* | **[BigPetStore] Bump version of BPS data generator library to 0.2.1**

The BPS data generator library had a bug in the calculation of the product category Markov model transition weights in version 0.2.  This was fixed in 0.2.1.  We should bump the version used by BigPetStore Spark.


---

* [BIGTOP-1544](https://issues.apache.org/jira/browse/BIGTOP-1544) | *Major* | **[BigPetStore] Use of java.io.File and check for directory existence will fail with non-POSIX DFSs (HDFS, S3, etc.)**

The BigPetStore Spark driver uses a java.io.File object to store the output directory path. The File's methods are used to check if the path exists and is a directory.

Since non-POSIX DFSs (S3, HDFS, etc.) will not have paths of the appropriate format and will not be accessible through a POSIX interface, these checks will fail, preventing the usage of S3, HDFS, etc.


---

* [BIGTOP-1543](https://issues.apache.org/jira/browse/BIGTOP-1543) | *Major* | **hive-0.14 in bigtop**

* Needed for proper tez support.
* Seems to solve GetLog() impedenace mismatch with hue


---

* [BIGTOP-1542](https://issues.apache.org/jira/browse/BIGTOP-1542) | *Major* | **Debian Packages will not build**

Debian will not build because *.tar.xz files are not copied from build/ to output/


---

* [BIGTOP-1541](https://issues.apache.org/jira/browse/BIGTOP-1541) | *Major* | **Support Debian jessie in Bigtop\_toolchain; cleanup of pp files**

BTW: In order to bootstrap Debian jessie in Docker, use
{code}
mkimage.sh -t $USER/minbase debootstrap --variant=minbase jessie
{code}

mkimage.sh is supplied by docker itself

The patcheset includes some cleanup of puppet code: Removing JDK1.6, moving protobuf to protobuf.pp etc.


---

* [BIGTOP-1537](https://issues.apache.org/jira/browse/BIGTOP-1537) | *Major* | **[BigPetStore] Add  Spark Product Recommender example**

We should add an example for using Spark and MLlib to build an item recommender.

Two challenges:
1. The data generator does not generate user product ratings.  We need a way to provide a metric for the "strength" of an interaction between a user and product.  This could be the normalized purchase frequency for each product.  Further evaluation is needed.

2.  How to evaluate the recommendations.  We will want to divide the user data into 2 groups: validation and training.  For the validation group, we may want to drop certain products and see if the recommender fills in those products or something similar.


---

* [BIGTOP-1535](https://issues.apache.org/jira/browse/BIGTOP-1535) | *Major* | **Add Spark ETL script to BigPetStore**

We should add script that reads the results from the data generator and normalizes the data and splits it into separate tables (ETL).  It would be nice to use Spark SQL but it is not required.


---

* [BIGTOP-1534](https://issues.apache.org/jira/browse/BIGTOP-1534) | *Major* | **Update README.md to reflect new build system and other changes**

It seems that top-level README.md is a bit stale and doesn't reflect new development like Gradle build, etc.


---

* [BIGTOP-1527](https://issues.apache.org/jira/browse/BIGTOP-1527) | *Major* | **Allow to fetch package's source code from Git**

For development purposes. It's useful to target Bigtop on Git-repository of your own package.


---

* [BIGTOP-1526](https://issues.apache.org/jira/browse/BIGTOP-1526) | *Major* | **property file for FailureVars can not be placed to {{/}}**

The following line in FailureVars class
{code}
  private String propertyFile = "/failureVars.properties"
{code}
needs to be fixed to place the properties file into test directory instead of the root file system.


---

* [BIGTOP-1524](https://issues.apache.org/jira/browse/BIGTOP-1524) | *Blocker* | **FailureExecutor  breaks smoke tests : Smoke tests should run from source**

Duh : By adding a hard requirement on itest-snapshot-0.9.0, we now break the existing mapreduce smoke tests. 

Maybe i can add ITest as a compiled, rather than jar file, dependency for {{smoke-tests}}  . let me look into it


---

* [BIGTOP-1523](https://issues.apache.org/jira/browse/BIGTOP-1523) | *Major* | **Gradle install for test artifacts uses wrong sequence of the targets**

The current sequence of components install during test artifacts build-up is
{code}
      installTopLevel
      installCommon
      installConf
      installiTest
{code}
which draws an iTest artifact from a repository server, instead of build a one from the current code. {{installiTest}} should be invoked before {{installCommon}} and {{installConf}}


---

* [BIGTOP-1522](https://issues.apache.org/jira/browse/BIGTOP-1522) | *Major* | **nodemanager deployment needs to include hadoop-mapreduce package**

It appears that if a cluster is deployed with only
{code}
components,hadoop,yarn
{code}
set in {{bigtop-deploy/puppet/config/site.csv}} the nodemanager refuses to start as it can not find {{org.apache.hadoop.mapred.ShuffleHandler}}

Clearly, the mapreduce component needs to be installed in order for the nodemanager to function properly. 

YARN is totally "not a MapReduce". Yeah, right!


---

* [BIGTOP-1521](https://issues.apache.org/jira/browse/BIGTOP-1521) | *Major* | **Bigtop smoke-tests hierarchy and fast failure**

*Problem* Sometimes YARN jobs can hang indefinetly, and in the case of the {{smoke-tests}} , we also can get an infinite hang it appears.  

This can be reproduced by simply messing up/deleting the core hadoop components from {{bigtop-deploy/vm/vagrant-puppet}}'s provision script puppet conf file {{provision.sh}}  and running {{vagrant up}}. 

*Solution* Let add some smarts to the smoke tester - such that the basic yarn services (i.  think hadoop-smoke in test-artifcacts does this maybe ) are confirmed before any yarn based tests are ran.


---

* [BIGTOP-1517](https://issues.apache.org/jira/browse/BIGTOP-1517) | *Minor* | **refactor vagrant provisioners to be configurable by yaml file**

In order to update the configurations of our Bigtop Hadoop provisioners(docker-puppet and vagrant-puppet), we need to modify its Vagrantfile directly. It would be better to have a yaml file for configuration management which consolidate all the things we typically care about when provisioning a cluster.


---

* [BIGTOP-1513](https://issues.apache.org/jira/browse/BIGTOP-1513) | *Major* | **FailureExecutor.groovy is in the wrong module, causing compiler errors.**

Getting the following compiler error: 
[ERROR] /ws/bigtop-tests/test-artifacts/hadoop/src/main/groovy/org/apache/bigtop/itest/hadoop/mapreduce/TestHadoopExamples.groovy:[160,39] 2. ERROR in /ws/bigtop-tests/test-artifacts/hadoop/src/main/groovy/org/apache/bigtop/itest/hadoop/mapreduce/TestHadoopExamples.groovy (at line 160)

It seems FailureExecutor cannot be found because it is in the wrong directory In bigtop.

Currently in:
bigtop/bigtop-tests/test-artifacts/longevity/src/main/groovy/org/apache/bigtop/itest/iolongevity/FailureExecutor.groovy

Needs to be moved to:
bigtop-test-framework/.../failures/FailureExecutor


---

* [BIGTOP-1511](https://issues.apache.org/jira/browse/BIGTOP-1511) | *Trivial* | **TestCLI: make TestCLI compatible with Hadoop 2.4 (HADOOP-8691)**

In HADOOP-8691 Hadoop FsShell output format has been changed, which causes failures of some Bigtop TestCLI test cases (test xml file expects that string 'Found 1 items' can be found in the output while the Hadop 2.4 doesn't do this). 

The proposed fix attached to this JIRA is based on HDFS-6058 (from hadoop-common) which just removes all occurences of TokenComparator looking for string 'Found 1 items'.


---

* [BIGTOP-1509](https://issues.apache.org/jira/browse/BIGTOP-1509) | *Major* | **Update deployment README after BIGTOP-1047**

BIGTOP-1047 is committed. Let's remove the reference to Puppet 2.7


---

* [BIGTOP-1508](https://issues.apache.org/jira/browse/BIGTOP-1508) | *Major* | **fix Puppet warnings under Puppet 3**

Once BIGTOP-1047 is committed, let's fix the [leftover warnings|https://issues.apache.org/jira/browse/BIGTOP-1047?focusedCommentId=14190686&page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel#comment-14190686]


---

* [BIGTOP-1506](https://issues.apache.org/jira/browse/BIGTOP-1506) | *Major* | **bigtop-utils won't detect JAVA\_HOME in some cases**

When environment is spun-off using bigtop\_toolchain for jdk7, bigtop-utils can not detect JAVA\_HOME correctly. 

The JDK in this case is installed in /usr/lib/jdk1.7.0\_60 and linked as /usr/lib/jdk7-latest. bigtop-utils doesn't check these locations.


---

* [BIGTOP-1504](https://issues.apache.org/jira/browse/BIGTOP-1504) | *Major* | **Bigtop docker provision does not work on mac**

If you run the  bigtop-deploy/vm/docker-puppet/docker-hadoop.sh on mac, it fails to run.

The core issue is getopts on mac doesn't support everything like linux does.


---

* [BIGTOP-1502](https://issues.apache.org/jira/browse/BIGTOP-1502) | *Major* | **Improve puppet deployment for new gridgain component**

Let's have puppet recipes that will automatically configure and bring up Gridgain caching layer


---

* [BIGTOP-1501](https://issues.apache.org/jira/browse/BIGTOP-1501) | *Major* | **come up with a way to use Jenkins plugins/Groovy console to create jobs**

The idea here is simple: we're now migrating to the new style of build infrastructure that is 100% Docker centric. This will make our Jenkins jobs highly regular and subject to automatic creation based on a template.

At this point, I don't know of an easy way to automate this and would appreciate if somebody can research it.

The pipeline I imagine would be this: there will be a meta-job on Jenkins running and creating other jobs based on the state of a template in our source code repo.


---

* [BIGTOP-1498](https://issues.apache.org/jira/browse/BIGTOP-1498) | *Minor* | **Add RC Testing to Docker based Bigtop provisioner**

This adds the same functionality as BIGTOP-1449 does to our Docker based Bigtop provisioner(BIGTOP-1417).


---

* [BIGTOP-1497](https://issues.apache.org/jira/browse/BIGTOP-1497) | *Major* | **Add tachyon to bigtop**

Lets package (amplab) tachyon into bigtop.  Its synergistic for both mapreduce, yarn, and spark , which are the dominant processing engines in big data.


---

* [BIGTOP-1495](https://issues.apache.org/jira/browse/BIGTOP-1495) | *Major* | **Remove make build system**

As per discussion on the dev@ list (prove-link?) let's remove the make build system.
SolLet's first make sure the gradle has functionality fully equivalent to that of {{make}} and then drop the latter


---

* [BIGTOP-1491](https://issues.apache.org/jira/browse/BIGTOP-1491) | *Major* | **Update docker-puppet README**

minor updates to docker-puppet readme about {{selinux}} and so on


---

* [BIGTOP-1490](https://issues.apache.org/jira/browse/BIGTOP-1490) | *Major* | **Adding GridGain to BigTop**

Please accept the patch of adding GridGain to the BigTop product. Addition of GridGain was agreed upon in this thread:
http://mail-archives.apache.org/mod\_mbox/bigtop-dev/201403.mbox/%3CCA+0=VoXBik-=go=vmVb3PWbdv08dGBpEm\_UD7NDiRr4hguxFPA@mail.gmail.com%3E


---

* [BIGTOP-1489](https://issues.apache.org/jira/browse/BIGTOP-1489) | *Major* | **move the tomcat\_watchdog code out of install\_solr.sh into a separate file in bigtop-utils in order to facilitate reusability**

Move the tomcat\_watchdog code out of install\_solr.sh into a separate file in bigtop-utils in order to make it easier to reuse the watchdog code in components other than solr


---

* [BIGTOP-1488](https://issues.apache.org/jira/browse/BIGTOP-1488) | *Major* | **bigtop\_toolchain hardcode the apache mirror sites for downloading maven**

In the bigtop\_toolchain module, the puppet modules use hardcoded apache mirror sites to download component tar balls(for example, use ftp://mirror.reverse.net/pub/apache/maven/maven-3/3.0.5/binaries/apache-maven-3.0.5-bin.tar.gz to download maven).
In some cases the hardcoded mirror maybe very slow, causing the installation to be very slow or even fail.
We can use the "www.apache.org/dyn/closer.cgi" to choose apache mirrors automatically and faster the installatin.


---

* [BIGTOP-1487](https://issues.apache.org/jira/browse/BIGTOP-1487) | *Major* | **Documentation for use case and deployment models for failure tests.**

Lets create a wiki page, linked from https://cwiki.apache.org/confluence/display/BIGTOP/Running+integration+and+system+tests which clearly and comprehensively explains the way the failure tests should be run.  

- how they are implemented.
- which nodes are killed, and what percentage are killed, and so on.
- ideally, maybe even a video or a diagram .

This seems like a powerful feature, lets make sure its clear to users how and when  they can leverage it !


---

* [BIGTOP-1486](https://issues.apache.org/jira/browse/BIGTOP-1486) | *Major* | **Upgrade Hue to 3.7**

{panel:title=Important|borderStyle=dashed|borderColor=#ccc|titleBGColor=#F7D6C1|bgColor=#FFFFCE}
The following text is outdated. It refers to Hue 3.6. It was consensus to fix it by updating hue to 3.7.

While Updating to 3.7. unfortunatelty a patch is needed which didn't get into the 3.7 release in time
{panel}

The hive editor beeswax is broken because the file 

{{/usr/lib/hue/apps/beeswax/src/beeswax/templates/execute.mako}}

includes references to impala and impala is not supplied by bigtop.

For instance
{code}
  from impala import conf as impala\_conf
{code}
or line 2280
{code}
% if ( app\_name == 'beeswax' and beeswax\_conf.CLOSE\_QUERIES.get() ) or ( app\_name == 'impala' and impala\_conf.CLOSE\_QUERIES.get() ):
{code}-


---

* [BIGTOP-1481](https://issues.apache.org/jira/browse/BIGTOP-1481) | *Major* | **Log files are cluttered with messages from tar**

For debian/ubuntu When tar generates SDEB packges, log file is cluttered with unneccesary logs from tar.


---

* [BIGTOP-1480](https://issues.apache.org/jira/browse/BIGTOP-1480) | *Blocker* | **Define BOM for 1.0 release of Bigtop**

Let's define the scope of the stack in the next release.
 Target date - 04/5/2015

Capturing the discussion on the dev list so far:

{noformat}
OS:
  CentOS6, CentOS7, Fedora 20
  SLES 11SP3, SLES12, OpenSUSE 13.2
  Ubuntu 14.04 LTS, Debian 8

Java:
  OpenJDK 7

Components:

  Zookeeper 3.4.6 (or later?)
  Hadoop 2.6.0
  HBase 0.98.10.1 (1.0 has been released, shall we upgrade to the latest?)
  Hive 1.1
    Tez-0.6.0 (as a dependency of Hive)
  Sqoop 1.4.5
  Sqoop2 1.99.4
  Oozie 4.0.1
  Giraph 1.1.0
  Groovy 2.3
  Gridgain 6.5.6
  Hue 3.7.1
  DataFU 1.0.0
  Solr 4.9.0
  Crunch 0.10.0
  Spark 1.3.0
  Phoenix 4.3.1
  Tomcat 6.0.36
  jsvc 1.0.15
  Pig 0.14.0
  Mahout 0.10
  Flume 1.5.2
  Tachyon 0.6.0
  Kafka 0.8.1.1
  What other new stuff do we feel like adding?

To retire:
  Whirr 0.8.2 (seems to be headed to the Attic)
{noformat}


---

* [BIGTOP-1472](https://issues.apache.org/jira/browse/BIGTOP-1472) | *Blocker* | **Hadoop RPM build is broken after BIGTOP-1462**

BIGTOP-1462 uses PKG\_NAME instead of NAME in packages.gradle, but there is no PKG\_NAME for Hadoop in bigtop.mk,  it caused the Hadoop build failed.


---

* [BIGTOP-1468](https://issues.apache.org/jira/browse/BIGTOP-1468) | *Major* | **Include zookeeper 3.4.6**

We may consider to include zookeeper 3.4.6 in bigtop 0.9:

1) 12 blocker issues were resolved in zookeeper 3.4.6:

project = ZOOKEEPER AND issuetype = Bug AND status in (Resolved, Closed) AND priority = Blocker AND fixVersion = 3.4.6 ORDER BY summary DESC

2) 16 critical issues were resolved in zookeeper 3.4.6:

project = ZOOKEEPER AND issuetype = Bug AND status in (Resolved, Closed) AND priority = Critical AND fixVersion = 3.4.6 ORDER BY summary DESC


---

* [BIGTOP-1467](https://issues.apache.org/jira/browse/BIGTOP-1467) | *Major* | **version of hadoop-auth in oozie is wrong**

$ rpm -lpq hadoop-2.4.1.726-1.el6.x86\_64.rpm | grep hadoop-auth
/usr/lib/hadoop/hadoop-auth-2.4.1.jar
/usr/lib/hadoop/hadoop-auth.jar

$ rpm -lpq oozie-4.0.1.691-1.el6.noarch.rpm | grep hadoop-auth
/usr/lib/oozie/libtools/hadoop-auth-2.0.2-alpha.jar


---

* [BIGTOP-1465](https://issues.apache.org/jira/browse/BIGTOP-1465) | *Major* | **Include Sqoop1 in bigtop 0.9**

Bigtop 0.9 may include sqoop1:

Sqoop2 is not intended for production deployment(http://sqoop.apache.org/)

Latest stable release is 1.4.5 (download, documentation). Latest cut of Sqoop2 is 1.99.3 (download, documentation). Note that 1.99.3 is not compatible with 1.4.5 and not feature complete, it is not intended for production deployment.

How to do?

1. port sqoop1 from bigtop 0.5

2. separate sqoop1 and sqoop2
a) sqoop2 keeps same directory
b) sqoop1 use sqoop1 directory as:

./bigtop-packages/src/common/sqoop1
./bigtop-packages/src/deb/sqoop1
./bigtop-tests/smoke-tests/sqoop1/build.gradle

3. sqoop1 and sqoop2 use same RPM name

sqoop1: sqoop-1.4.4-1.noarch.rpm
sqoop2: sqoop-1.99.3-1.noarch.rpm


---

* [BIGTOP-1462](https://issues.apache.org/jira/browse/BIGTOP-1462) | *Blocker* | **Failed to build spark by gradle**

When I tried to build spark by gradle, I got the following error:
{code}
error: cannot open /data/bigtop/output/spark/spark-1.0.1-1.el6.src.rpm: No such file or directory
{code}
I have checked the output and found that bigtop wrote spark-core-1.0.1-1.el6.src.rpm to output dir
{code}
[QUIET] [system.out] Wrote: /data/bigtop/build/spark/rpm/SRPMS/spark-core-1.0.1-1.el6.src.rpm
{code} 

The root cause is that packages.gradle uses spark as the name of rpm, but spark.spec uses spark-core


---

* [BIGTOP-1461](https://issues.apache.org/jira/browse/BIGTOP-1461) | *Major* | **Add a simple Hive validation to smoke-tests.**

Lets 
- add a self contained standalone hive validation into {{smoke-tests}} which
- doesnt rely on multiple text files, bash diffs, and other stuff in the relatively complex {{test-artifacts}} tests.


---

* [BIGTOP-1460](https://issues.apache.org/jira/browse/BIGTOP-1460) | *Major* | **maven dependencies broken**

The hadoop build depends on zookeeper. 

for instance look out for zookeeper in ./hadoop-yarn-project/hadoop-yarn/hadoop-yarn-server/hadoop-yarn-server-common/pom.xml 

Discovered this because of [BIGTOP-1458] broke build for hadoop.

Workaround: Build zookeeper first


---

* [BIGTOP-1459](https://issues.apache.org/jira/browse/BIGTOP-1459) | *Major* | **Remove hadoop-client jar from packages that bundle it**

hadoop-client.jar contains no code and is merely an artifact of transitive dependencies that other components (like oozie) rely on it for.

It makes sense to remove hadoop-client.jar from any packages that bundle it.

See BIGTOP-1452 for more details.


---

* [BIGTOP-1458](https://issues.apache.org/jira/browse/BIGTOP-1458) | *Major* | **Maven build severly broken**

some build steps do install files into the repository with maven install:installfile.

The file in the local maven repository may be existing before -- from an existing build in the past, where it has been already downloaded with a accompanied checksum file.

After installing the file/artifact the checksum is invalid (since it is from the download) and does not match the new file.

Workaround: Install all files with checksums side-by-side.


---

* [BIGTOP-1457](https://issues.apache.org/jira/browse/BIGTOP-1457) | *Major* | **Hue do-component-build does not set version properly**

The DESKTOP\_VERSION Environment variable is never set. Should be HUE\_BASE\_VERSION

align do-component-build with conventions of other components


---

* [BIGTOP-1450](https://issues.apache.org/jira/browse/BIGTOP-1450) | *Major* | **Eliminate broken hive test artifacts in favor of smoke-tests.**

*Overall: The hive tests in {{test-artifacts}} are prone to failures from missing data sets and generally need a thorough review*

When testing bigtop 0.8.0 release candidate, I found that I got some errors 
{noformat}

[--- /dev/fd/63  2014-09-16 10:12:54.579647323 +0000, +++ /dev/fd/62     2014-09-16 10:12:54.579647323 +0000, @@ -14,4 +14,4 @@,  INSERT OVERWRITE DIRECTORY '/tmp/count',  SELECT COUNT(1) FROM u\_data,  dfs -cat /tmp/count/*, -0, +100000] err=[14/09/16 10:12:17 WARN mapred.JobConf: The variable mapred.child.ulimit is no longer used., , Logging initialized using configuration in file:/etc/hive/conf.dist/hive-log4j.properties, OK, Time taken: 2.609 seconds, OK, Time taken: 0.284 seconds, Total jobs = 1, Launching Job 1 out of 1, Number of reduce tasks determined at compile time: 1, In order to change the average load for a reducer (in bytes):,   set hive.exec.reducers.bytes.per.reducer=&lt;number&gt;, In order to limit the maximum number of reducers:,   set hive.exec.reducers.max=&lt;number&gt;, In order to set a constant number of reducers:,   set mapreduce.job.reduces=&lt;number&gt;, Starting Job = job\_1410830363557\_0019, Tracking URL = http://bigtop1.vagrant:20888/proxy/application\_1410830363557\_0019/, Kill Command = /usr/lib/hadoop/bin/hadoop job  -kill job\_1410830363557\_0019, Hadoop job information for Stage-1: number of mappers: 1; number of reducers: 1, 2014-09-16 10:12:38,870 Stage-1 map = 0%,  reduce = 0%, 2014-09-16 10:12:45,516 Stage-1 map = 100%,  reduce = 0%, Cumulative CPU 0.81 sec, 2014-09-16 10:12:53,036 Stage-1 map = 100%,  reduce = 100%, Cumulative CPU 1.73 sec, MapReduce Total cumulative CPU time: 1 seconds 730 msec, Ended Job = job\_1410830363557\_0019, Moving data to: /tmp/count, MapReduce Jobs Launched: , Job 0: Map: 1  Reduce: 1   Cumulative CPU: 1.73 sec   HDFS Read: 272 HDFS Write: 2 SUCCESS, Total MapReduce CPU Time Spent: 1 seconds 730 msec, OK, Time taken: 24.594 seconds

{noformat}

I know there is a diff error in here - some kind of diff is going on , but I forgot how the actual,output,and filter are working.  

In any case, I think these tests can be simplified to just grep for a output string and check error code, or else, at least add some very clear assertions as to what failures may be.


---

* [BIGTOP-1449](https://issues.apache.org/jira/browse/BIGTOP-1449) | *Major* | **Add RC Testing support to vagrant recipe**

We can automatically set up vagrant to install a release candidate on n nodes and  run smoke tests.  Here is how .

1) Adding the bigtop folder as a shared folder in Vagrantfile, so that VMs have access to bigtop  source
{noformat}
   # the bigtop puppet recipes
   bigtop\_puppet = "../../puppet"
-
+  bigtop\_home =   "../../../"
...
+  bigtop.vm.synced\_folder bigtop\_home, "/bigtop-home"
 {noformat}

2) cd /bigtop-home [ {{sudo puppet apply --modulepath=./ -e "include bigtop\_toolchain::gradle && alias gradle=/usr/local/gradle/bin/gradle"}}

3) Having the bigtop repo in Vagrantfile point at the RC url (modify the line in provision.sh {{bigtop\_yumrepo\_uri,http://bigtop01.cloudera.org:8080/view/Releases/job/Bigtop-0.8.0/label=centos6/6/artifact/output/}}

4) Export HADOOP\_CONF\_DIR, BIGTOP\_HOME,HADOOP\_MAPRED\_HOME,HIVE\_HOME,HIVE\_CONF\_DIR, and so on...

5) Ensure that a home dir exists for the user (i.e. as fs superuser (i.e. hdfs or root on a posix filesystem) run {{hadoop fs -mkdir /user/vagrant}} )

6) Running the tests {{cd bigtop-tests/smoke-tests/ && gradle compileGroovy test -Dsmoke-tests=mapreduce --info}} 

Might as well do it so that for next release,  we can automate testing of bigtop on n-node clusters.

When doing this task, 

- lets also update {{smoke-tests}} and (1) fix the README (it sais smoke-tests, instead of smoke.tests) (2) parameterize ITest .  Those are both needed for proper automation of RC testing.
- Also lets bound the amount of hive tests we run. Currently it runs all of them.  I think we only need it to run "basic" or a few others, and we can ensure this by setting system properties like this, so the smoke tests is fast and simple:
 {noformat} 
test {
 systemProperties["org.apache.bigtop.itest.hivesmoke.TestHiveSmokeBulk.test\_include"]="basic"
}
{noformat}

So all in all there are basically two tasks:  Add a "test.sh" script to the vagrant provisioner which installs toolchain and runs bigtop smoke tests, and a few complimentary,  minor updates to the smoke-tests .

*Then, next time an RC comes out, to test, we just update number of nodes and run "vagrant up".*  :)


---

* [BIGTOP-1448](https://issues.apache.org/jira/browse/BIGTOP-1448) | *Major* | **Include zookeeper C library in bigtop**

It is nice to include to zookeeper C library in bigtop.

how to do?

1. add c build tool chain in bigtop

2. build zookeeper c library as http://zookeeper.apache.org/doc/trunk/zookeeperProgrammers.html

3. package zookeeper c library


---

* [BIGTOP-1446](https://issues.apache.org/jira/browse/BIGTOP-1446) | *Major* | **Spark fails with clean .m2**

Spark build fails on clean .m2

{noformat}
[INFO] Spark Project Parent POM .......................... SUCCESS [10.968s]
[INFO] Spark Project Core ................................ SUCCESS [3:01.197s]
[INFO] Spark Project Bagel ............................... SUCCESS [23.444s]
[INFO] Spark Project GraphX .............................. SUCCESS [1:02.773s]
[INFO] Spark Project ML Library .......................... SUCCESS [53.874s]
[INFO] Spark Project Streaming ........................... SUCCESS [1:22.051s]
[INFO] Spark Project Tools ............................... SUCCESS [15.079s]
[INFO] Spark Project REPL ................................ SUCCESS [51.980s]
[INFO] Spark Project YARN Parent POM ..................... SUCCESS [1.499s]
[INFO] Spark Project YARN Stable API ..................... SUCCESS [40.595s]
[INFO] Spark Project Assembly ............................ FAILURE [45.677s]
[INFO] Spark Project External Twitter .................... SKIPPED
[INFO] Spark Project External Kafka ...................... SKIPPED
[INFO] Spark Project External Flume ...................... SKIPPED
[INFO] Spark Project External ZeroMQ ..................... SKIPPED
[INFO] Spark Project External MQTT ....................... SKIPPED
[INFO] Spark Project Examples ............................ SKIPPED
[INFO] ------------------------------------------------------------------------
[INFO] BUILD FAILURE
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 9:30.218s
[INFO] Finished at: Sat Sep 13 22:23:20 EDT 2014
[INFO] Final Memory: 50M/1057M
[INFO] ------------------------------------------------------------------------
[ERROR] Failed to execute goal org.apache.maven.plugins:maven-assembly-plugin:2.4:single (dist) on project spark-assembly\_2.10: Execution dist of goal org.apache.maven.plugins:maven-assembly-plugin:2.4:single failed: Plugin org.apache.maven.plugins:maven-assembly-plugin:2.4 or one of its dependencies could not be resolved: Could not find artifact commons-cli:commons-cli:jar:1.2 -> [Help 1]
[ERROR] 
{noformat}


---

* [BIGTOP-1445](https://issues.apache.org/jira/browse/BIGTOP-1445) | *Major* | **Pig fails with clean .ivy and .m2**

Pig build fails with

{noformat}
[ivy:resolve] 		::::::::::::::::::::::::::::::::::::::::::::::
[ivy:resolve] 		::              FAILED DOWNLOADS            ::
[ivy:resolve] 		:: ^ see resolution messages for details  ^ ::
[ivy:resolve] 		::::::::::::::::::::::::::::::::::::::::::::::
[ivy:resolve] 		:: org.mortbay.jetty#jetty;6.1.26!jetty.zip
[ivy:resolve] 		::::::::::::::::::::::::::::::::::::::::::::::
{noformat}


---

* [BIGTOP-1423](https://issues.apache.org/jira/browse/BIGTOP-1423) | *Major* | **Add Groovy installation to the bigtop\_toolchain**

Having standalone groovy in the development environment seems to be helpful. Hence, let's add it.


---

* [BIGTOP-1417](https://issues.apache.org/jira/browse/BIGTOP-1417) | *Minor* | **Dockerize the puppetized vagrant deployer**

This is one of the bigtop's dockerize task which mainly focus on deploying bigtop hadoop cluster using [bigtop-puppet|https://github.com/apache/bigtop/tree/master/bigtop-deploy/puppet] on top of docker containers.


---

* [BIGTOP-1414](https://issues.apache.org/jira/browse/BIGTOP-1414) | *Major* | **Add Apache Spark implementation to BigPetStore**

Currently we only process data with hadoop.  Now its time to add spark to the bigpetstore application.  This will basically demonstrate the difference between a mapreduce based hadoop implementation of a big data app, versus a Spark one.   

*We will need to*

- update graphviz arch.dot to diagram spark as a new path.
- Adding a spark job to the existing code, in a new package., which uses existing scala based generator, however, we will use it inside  a spark job, rather than in a hadoop inputsplit.
- The job should output to an RDD, which can then be serialized to disk, or else, fed into the next spark job... 

*So, the next spark job should*

- group the data and write product summaries to a local file
- run a product recommender against the input data set.

We want the jobs to be runnable as modular, or as a single job, to leverage the RDD paradigm.  

So it will be interesting to see how the code is architected.    Lets start the planning in this JIRA.  I have some stuff ive informally hacked together, maybe i can attach an initial patch just to start a dialog.


---

* [BIGTOP-1395](https://issues.apache.org/jira/browse/BIGTOP-1395) | *Major* | **Simplifying non-component versions evaluation**

BIGTOP-1390 introduces a way to enforce JDK version for the stack build. I suggest to simply the fix quite a bit.


---

* [BIGTOP-1392](https://issues.apache.org/jira/browse/BIGTOP-1392) | *Major* | **Hive basic smoke test fails**

BIGTOP-282 removed a dataset that the basic hive smoke test was using. As a result, running the basic smoke-test fails even though hive may be set-up properly.

The patch uses an existing test dataset to run a very basic test.


---

* [BIGTOP-1388](https://issues.apache.org/jira/browse/BIGTOP-1388) | *Major* | **Use cluster failure tests during other tests with command line parametrization**

User can run a series of cluster failures such as killing/restarting a service and shutting down the network during a mapr or longevity test. The goal is to test that the tests complete during the failures. The failures should be able to be specified as a command line parameter.


---

* [BIGTOP-1384](https://issues.apache.org/jira/browse/BIGTOP-1384) | *Major* | **Implement Gradle Wrapper for smoke tests and cleanup.**

By adding a the infamous *gradle wrapper script* (this is the idiom in gradle - to use the wrapper instead of a local gradle install) into our VCS, we gaurantee that the gradle tricks we implement will be running the exact same on all systems, no matter what.

- Also, it opens the tests up to be runnable by anyone, even those who don't have gradle installed.

- Finally, gradle wrapper will embolden us to be able to use more sophisticated gradle tricks newer features, b/c we will know that they run the same in all environments.

So, this task consists of :

1) Adding gradle wrapper to the {{bigtop-smoke-tests}}
2) Implementing cleanup for the build.gradle files also, possibly allowing for version specific features (i.e. advanced dependency inheritance for subprojects etc)
3) Update README with new instructions for people running the tests.


---

* [BIGTOP-1366](https://issues.apache.org/jira/browse/BIGTOP-1366) | *Minor* | **Updated, Richer Model for Generating Data for BigPetStore**

BigPetStore uses synthetic data as the basis for its workflow.  BPS's current model for generating customer data is sufficient for basic testing of the Hadoop ecosystem, **but the model is very basic and lacks sufficient complexity for embedding interesting patterns into the data**.  

As a result, **more complex, scalable testing such as testing clustering algorithms in Mahout on non-trivial data or multidimensional data with factors influencing it** is not currently possible.

Efforts are currently underway to incrementally improve the current model (see BIGTOP-1271 and BIGTOP-1272).  

To create a model that can that incorporate **realistic, non-hierarchichal patterns** and input data to generate rich customer/transaction data with interesting correlations will require a re-imagining of the current model and its framework.

To support the improvements to the model in BigPetStore, I have been working on an **alternative ab initio model, developed from scratch**. Since the development of a new model involves substantial R&D work with more specialized tools (mathematical and plotting libraries), I'm doing the current work outside of BPS using the iPython Notebook environment.  Due to the long time frame, the model will be developed on a separate timeline to prevent slowing the development of BPS.  

Once the model has stabilized, I will begin incorporating the model into BPS itself.  One option is to implement the model in using Scala for clean integration with **spark** which is likely to play an increasingly important role in the hadoop ecosystem, and thus will be an important part of bigpetstore as a test/blueprint app.


---

* [BIGTOP-1357](https://issues.apache.org/jira/browse/BIGTOP-1357) | *Major* | **Get rid of HCatalog packaging code**

HCatalog is bundled with Hive in the newer releases of hive. Consequently, it's packaging code should reside in Hive's packaging directories (and it already does).

Consequently, we are not using https://github.com/apache/bigtop/tree/master/bigtop-packages/src/common/hcatalog
and the corresponding locations in rpm and deb directories which used to package HCatalog before it was a part of hive.

So, we should get rid of those directories. Also, we should check in bigtop.mk and make sure no references to building HCatalog remain. The only way, we should be able to build HCatalog should be via Hive.


---

* [BIGTOP-1356](https://issues.apache.org/jira/browse/BIGTOP-1356) | *Major* | **Generate hive.install on the fly**

We currently maintain this very hard to maintain list for all jars shipped in hive package:
https://github.com/apache/bigtop/blob/master/bigtop-packages/src/deb/hive/hive.install

This is done because hive-jdbc package needs to include some set of core hive jars and there is no real good way in debian land to say something like include these 5 jars in /usr/lib/hive/lib in hive-jdbc package and include everything else in hive package (btw, rpm does. See here: https://github.com/apache/bigtop/blob/master/bigtop-packages/src/rpm/hive/SPECS/hive.spec#L336)

But, given that this is pretty unmaintainable, we should come up with something better and populate this list on the fly. Something like listing contents of what all is present in HIVE\_HOME/lib and getting rid explicitly of the jars we bundle in hive-jdbc package seems like a good option.


---

* [BIGTOP-1334](https://issues.apache.org/jira/browse/BIGTOP-1334) | *Major* | **Add DFS tests to TestCLI**

TestCLI currently does not support DFSadmin tests. Consequently, multiple tests, including snapshots, fail.


---

* [BIGTOP-1327](https://issues.apache.org/jira/browse/BIGTOP-1327) | *Minor* | **bigpetstore.arch is out of date**

We've now removed hive (BIGTOP-1270) from the BigPetStore integration tests app.  Lets update the arch.dot to reflect the new architecture that will guide BIGTOP-1271 (mainly focused around mapreduce, pig, mahout, and some kind of final sink like hbase/solr).  

Not sure if [~willbenton] has specific ideas for how we will titrate spark into the app yet, but ideas welcome in that area as well.


---

* [BIGTOP-1325](https://issues.apache.org/jira/browse/BIGTOP-1325) | *Major* | **Update TestHDFSCLI to include tests from upstream**

Add the following commands to TestCLI:

appendToFile
text
rmdir
rmdir with ignore-fail-on-non-empty
df
expunge
getmerge


The following tests have been added as TestDFSCLI in BIGTOP-1334:

allowSnapshot
disallowSnapshot
createSnapshot
renameSnapshot
deleteSnapshot
refreshUserToGroupsMappings
refreshSuperUserGroupsConfiguration
setQuota
clrQuota
setSpaceQuota
setBalancerBandwidth
finalizeUpgrade


---

* [BIGTOP-1315](https://issues.apache.org/jira/browse/BIGTOP-1315) | *Major* | **Pig smoke tests:  Refactor ?**

The pig tests which we ship are only running the TestPigTest and TestGruntParser tests.

As usual, I'll make my trademark statement :) 

1) Is all the indirection of including a jar file maintained externally really worth it for two simple tests, neither of  which are customizable, and both of which run on very small data sets, built for  a local machine only ? We can easily maintain our own Itest based groovy tests in the Style of BIGTOP-1222.    Would be easier for others to use and adopt.   

The second test "TestGruntParser" doesnt really seem like it should even run inside of bigtop, should it?

2) If we still do want to keep using the artifacts from pigsmoke, for now we will should to upgrade to pigsmoke 0.12.1.

My personal opinion (if you havent already guessed...) is that I think pig's definition of a "smoke" test isnt quite the same as ours (unless im missing something), so id like to think some more about (1), as a possible option / alternative. :)


---

* [BIGTOP-1301](https://issues.apache.org/jira/browse/BIGTOP-1301) | *Major* | **Groovy 2.3.0 is out! Let's bundle it into the stack**

groovy 2.3 delivers tons of performance improvements, new features, support for NIO2, Java8, and more.


---

* [BIGTOP-1287](https://issues.apache.org/jira/browse/BIGTOP-1287) | *Major* | **Mahout smokes : Remove dirchlet/meanshift clustering**

We need to remove dirchlet and meanshift clustering (removed in mahout 9.x).  

Also formatting is totally wacky so i fixed formatting while at it as well.  

In BIGTOP-1282, we bumped to 9x, so probably this will necessary to keep our smoke tests working.


---

* [BIGTOP-1277](https://issues.apache.org/jira/browse/BIGTOP-1277) | *Major* | **Remove Windows files from unix packaging**

During the build of Hadoop 2.3 for 0.8.0 I've noticed that some of the trash files are getting picked up. Namely:
{noformat}
warning: Installed (but unpackaged) file(s) found:
   /etc/hadoop/conf.empty/hadoop-env.cmd
   /etc/hadoop/conf.empty/mapred-env.cmd
   /etc/hadoop/conf.empty/yarn-env.cmd
   /usr/lib/hadoop/libexec/hadoop-config.cmd
   /usr/lib/hadoop/libexec/hdfs-config.cmd
   /usr/lib/hadoop/libexec/mapred-config.cmd
   /usr/lib/hadoop/libexec/yarn-config.cmd
{noformat}
We should make sure that resulting packages aren't polluted with this.


---

* [BIGTOP-1275](https://issues.apache.org/jira/browse/BIGTOP-1275) | *Major* | **BigPetStore: Add all 50 states**

Jeff Denton at OrangeFS Has created a pull request to generate synthetic data for all 50 states in the union.  

https://github.com/acberk/bigpetstore/blob/903f62fe04b02962a4f97c6f4c9717cd78af1989/src/main/java/org/bigtop/bigpetstore/generator/TransactionIteratorFactory.java

Shall we role this in as a patch ?  Maybe we can do so in a little more sophisticated  way (i.e. have the states in a configuration file - this 200 line enum is getting pretty large).


---

* [BIGTOP-1235](https://issues.apache.org/jira/browse/BIGTOP-1235) | *Critical* | **Speed-up init-hdfs.sh for complete HCFS compliant provisioning**

BIGTOP-1200 provides file schema in JSON format, for any HCFS related tool to read. 

BIGTOP-952 meanwhile give us fast provisioning by running in a single JVM (without multiple haoop fs -... commands\_).

Thus, when those two are finished, we can replace init-hdfs.sh (with the exception of a few extra shell commands in bottom of that script which still will need to be called).  

So this JIRA  will: 

- create a new init-hcfs.groovy script which calls provision.groovy in BIGTOP-952, with init-hcfs.json as input. 
- add in the remaining straggler commands from init-hdfs.sh which dont fit into the generic json format as shell commands.
- delete init-hdfs.sh entirely
- update puppet scripts to use init-hcfs.groovy, calling them with the "hdfs" argument.


---

* [BIGTOP-1204](https://issues.apache.org/jira/browse/BIGTOP-1204) | *Major* | **Add support for AmazonLinux**

Add support for AmazonLinux to bigtop on the latest AmazonLinux AMI to enable cloud deployments.


---

* [BIGTOP-1194](https://issues.apache.org/jira/browse/BIGTOP-1194) | *Minor* | **redhat-lsb-core is sufficient in spec files**

For init scripts that source /lib/lsb/init-functions
Requiring redhat-lsb-core instead of redhat-lsb, which has much larger dependencies, simplifies the deployment.


---

* [BIGTOP-1135](https://issues.apache.org/jira/browse/BIGTOP-1135) | *Major* | **Hue has google analytics enabled by default**

Let's ask upstream if they are open to disable it by default.
Otherwise, let's disable it ourselves.


---

* [BIGTOP-1104](https://issues.apache.org/jira/browse/BIGTOP-1104) | *Major* | **Fix lintian errors**

When building packages on/for Ubuntu and Debian, the 'lintian' tool is run as the last step to check package quality. This utility will produce warning or error messages according to its rules for packaging standards. The results are saved into the package. Although packages produced with lintian errors will successfully install, at least on Ubuntu the Software Center will throw up an ugly dialog declaring the package is of bad quality.


---

* [BIGTOP-1050](https://issues.apache.org/jira/browse/BIGTOP-1050) | *Blocker* | **Permissions on YARN LCE should be 4754**

The permissions we set for the YARN container executor are not exactly correct and are different from what we used to set for the MRv1 task containers. The requirements for the permissions are as follows:

* Readable/executable by the group
* Not executable by others
* Not writable by others
* Set UID
* Owned by root

I've tested this in YARN and have tested that I can still submit and run jobs successfully with these new permissions. This is somewhat second-hand information, so I'll CC [~atm] in case I've missed any important details or context...


---

* [BIGTOP-1047](https://issues.apache.org/jira/browse/BIGTOP-1047) | *Major* | **Support Puppet 3.x**

Currently bigtop-deploy/puppet module supports Puppet 2.x only. In particular, this is because of using dynamic scoping which was deprecated since 2.5 and not supported in 3.x. This task is to get rid of dynamic scoping to make bigtop-deploy/puppet working with Puppet 3.x.

More on dynamic scoping in Puppet: http://docs.puppetlabs.com/guides/scope\_and\_puppet.html


---

* [BIGTOP-965](https://issues.apache.org/jira/browse/BIGTOP-965) | *Major* | **IntegrationTestHiveSmokeBulk not being run**

The IntegrationTestHiveSmokeBulk is not being run. We should ensure that this test is running.


---

* [BIGTOP-894](https://issues.apache.org/jira/browse/BIGTOP-894) | *Blocker* | **Pig compilation fails on RPM systems on Bigtop trunk**

BIGTOP-870 bumped up version of Pig from 0.10 to 0.11 for Bigtop 0.6 release. However, while that seems to build Pig fine on Debian based systems, Pig compilation fails on RPM based systems with an error like:

{code}
04:27:41  compile:
04:27:41       [echo]  *** Compiling Pig UDFs ***
04:27:41      [javac] /mnt/jenkins/workspace/Bigtop-trunk-Pig/label/centos6/build/pig/rpm/BUILD/pig-0.11.0/contrib/piggybank/java/build.xml:93: warning: 'includeantruntime' was not set, defaulting to build.sysclasspath=last; set to false for repeatable builds
04:27:41      [javac] Compiling 158 source files to /mnt/jenkins/workspace/Bigtop-trunk-Pig/label/centos6/build/pig/rpm/BUILD/pig-0.11.0/contrib/piggybank/java/build/classes
04:27:41      [javac] /mnt/jenkins/workspace/Bigtop-trunk-Pig/label/centos6/build/pig/rpm/BUILD/pig-0.11.0/contrib/piggybank/java/src/main/java/org/apache/pig/piggybank/evaluation/IsInt.java:31: unmappable character for encoding ASCII
04:27:41      [javac]  * Note this function checks for Integer range ???2,147,483,648 to 2,147,483,647.
04:27:41      [javac]                                                ^
04:27:41      [javac] /mnt/jenkins/workspace/Bigtop-trunk-Pig/label/centos6/build/pig/rpm/BUILD/pig-0.11.0/contrib/piggybank/java/src/main/java/org/apache/pig/piggybank/evaluation/IsInt.java:31: unmappable character for encoding ASCII
04:27:41      [javac]  * Note this function checks for Integer range ???2,147,483,648 to 2,147,483,647.
04:27:41      [javac]                                                 ^
04:27:41      [javac] /mnt/jenkins/workspace/Bigtop-trunk-Pig/label/centos6/build/pig/rpm/BUILD/pig-0.11.0/contrib/piggybank/java/src/main/java/org/apache/pig/piggybank/evaluation/IsInt.java:31: unmappable character for encoding ASCII
04:27:41      [javac]  * Note this function checks for Integer range ???2,147,483,648 to 2,147,483,647.
04:27:41      [javac]                                                  ^
04:27:42      [javac] 3 errors
{code}



