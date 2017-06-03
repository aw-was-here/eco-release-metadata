
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

## Release 1.2.1 - Unreleased (as of 2017-06-03)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2253](https://issues.apache.org/jira/browse/BIGTOP-2253) | Rewrite Bigtop Docker Provisioner to use native solutions and support multi-host cluster deployment |  Major | docker, provisioner | Evans Ye | Evans Ye |
| [BIGTOP-2779](https://issues.apache.org/jira/browse/BIGTOP-2779) | new hive charm |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2677](https://issues.apache.org/jira/browse/BIGTOP-2677) | layer-spark: Improve sparkpi action output |  Minor | spark | Antonio Rosales | Kevin W Monroe |
| [BIGTOP-2770](https://issues.apache.org/jira/browse/BIGTOP-2770) | Juju charm/bundle refresh |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2778](https://issues.apache.org/jira/browse/BIGTOP-2778) | Delete PermSize / MaxPermsize options, no longer support by Java 8 |  Trivial | build | YoungWoo Kim | Arnaud Launay |
| [BIGTOP-2355](https://issues.apache.org/jira/browse/BIGTOP-2355) | Update Mahout version to 0.13.0 |  Minor | build | Andrew Musselman | Andrew Musselman |
| [BIGTOP-2777](https://issues.apache.org/jira/browse/BIGTOP-2777) | make hbase charm more robust |  Minor | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2783](https://issues.apache.org/jira/browse/BIGTOP-2783) | new charm icons for zookeeper and zeppelin |  Trivial | deployment | Kevin W Monroe | Kevin W Monroe |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2738](https://issues.apache.org/jira/browse/BIGTOP-2738) | spark-worker fails to start |  Critical | spark | Amir Sanjar | Amir Sanjar |
| [BIGTOP-2740](https://issues.apache.org/jira/browse/BIGTOP-2740) | hbase 1.1.3 does not work on ppc64le |  Critical | hbase | Kevin W Monroe | Kevin W Monroe |
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
| [BIGTOP-2788](https://issues.apache.org/jira/browse/BIGTOP-2788) | Corrects Apex patch for version 3.6.0 |  Trivial | . | Arnaud Launay | Arnaud Launay |
| [BIGTOP-2790](https://issues.apache.org/jira/browse/BIGTOP-2790) | Ambari: deploying cluster fails due to ambari-agent version mismatch |  Major | . | Kengo Seki | Kengo Seki |
| [BIGTOP-2789](https://issues.apache.org/jira/browse/BIGTOP-2789) | Ambari: installing ODPi mpack fails due to changing its file name |  Major | . | Kengo Seki | Kengo Seki |
| [BIGTOP-2793](https://issues.apache.org/jira/browse/BIGTOP-2793) | BIGTOP-2790 broke Ambari build on rpm-based system |  Major | build | Kengo Seki | Kengo Seki |


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


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [BIGTOP-2747](https://issues.apache.org/jira/browse/BIGTOP-2747) | new charm revs for bigtop-1.2 |  Major | deployment | Kevin W Monroe | Kevin W Monroe |
| [BIGTOP-2776](https://issues.apache.org/jira/browse/BIGTOP-2776) | Bump Apache Apex version to 3.6.0 |  Major | build | Thomas Weise | Thomas Weise |


