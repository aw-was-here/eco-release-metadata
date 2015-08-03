
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

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


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

* [BIGTOP-1946](https://issues.apache.org/jira/browse/BIGTOP-1946) | *Blocker* | **Missing ASL header in some of iTest files**

The following files are missing the ASL headers
{code}
bigtop-test-framework/src/main/groovy/org/apache/bigtop/itest/failures/FailureExecutor.groovy
bigtop-test-framework/src/main/groovy/org/apache/bigtop/itest/failures/FailureVars.groovy
{code}


---

* [BIGTOP-1941](https://issues.apache.org/jira/browse/BIGTOP-1941) | *Major* | **Upgrade Phoenix to 4.4.0**

From Phoenix 4.4.0, there are support for Spark and new queryserver. It would be nice to have awesome features on Bigtop.


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

* [BIGTOP-1914](https://issues.apache.org/jira/browse/BIGTOP-1914) | *Trivial* | **improve puppet README.md file**

I'm propose to improve readability of README file for puppet deployment.


---

* [BIGTOP-1910](https://issues.apache.org/jira/browse/BIGTOP-1910) | *Major* | **Adjust the dependency for hue-beeswax**

Recent HUE beeswax does not use beeswax daemon. It just connect hiveserver2 through Thrift. So hue-beeswax does not need 'hive' as a dependency anymore.


---

* [BIGTOP-1902](https://issues.apache.org/jira/browse/BIGTOP-1902) | *Trivial* | **typo in bigtop-deploy/vm/vagrant-puppet-vm/vagrantconfig.yaml**

so `mapreduce` is typed as `mapredcue` which is not that big of a deal, because if users set `run\_smoke\_tests: true` the smoke tests of mapreduce will run smoothly  because it's spelled right in bigtop-deploy/vm/utils/smoke-tests.sh ... but still.


---

* [BIGTOP-1898](https://issues.apache.org/jira/browse/BIGTOP-1898) | *Major* | **Dockerfiles to build bigtop/puppet docker images for 1.0 release**

Since we're upgrading supported OS in 1.0 release(see BIGTOP-1480), all the provided bigtop docker images must be upgraded to proper version as well.
This is also the building block of CI overhaul because all the CI jobs are now running in containers.
The draft version of dockerfiles can be found [here|https://github.com/evans-ye/bigtop-dockerfiles]. I'll upload a patch once all the image has been tested.


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

* [BIGTOP-1892](https://issues.apache.org/jira/browse/BIGTOP-1892) | *Minor* | **Current required version of gradle 2.4 is not used everywhere**

Based on the current state of puppet orchestration, Bigtop requires gradle 2.4, but this is not used/stated on all places.


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

* [BIGTOP-1877](https://issues.apache.org/jira/browse/BIGTOP-1877) | *Major* | **Upgrade Crunch to 0.12.0**

Recent release of Apache Crunch added a bunch of  features and improvements. eg., Spark, ORC support ...


---

* [BIGTOP-1838](https://issues.apache.org/jira/browse/BIGTOP-1838) | *Minor* | **Pig build does not publish artifacts of build**

The pig build does not execute the mvn-install target. This means that other pieces of the bigtop ecosystem do not pick up the correct pig dependencies from the bigtop build. Instead, they pick them up from the central maven repository (or they fail to find them if a bigtop has pig version that is not publicly released).

This is a problem because builds like datafu pick up their pig dependency via ivy and they are not able to do so.


---

* [BIGTOP-1795](https://issues.apache.org/jira/browse/BIGTOP-1795) | *Major* | **Upgrade bigtop\_toolchain to Maven 3.2.5**

Zeppelin (see BIGTOP-1769 for main Zeppelin Integration JIRA) requires Maven 3.1+ as of https://github.com/apache/incubator-zeppelin/commit/2498e5d


---

* [BIGTOP-1149](https://issues.apache.org/jira/browse/BIGTOP-1149) | *Major* | **Package Kite**

I was looking into morphline and Apache Flume and noticed that CDK was needed in order to get the morphline jars.

So let's package morphline so other projects can benefit from it!



