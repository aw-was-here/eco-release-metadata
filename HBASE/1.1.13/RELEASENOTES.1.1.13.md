
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
# Apache HBase  1.1.13 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-18631](https://issues.apache.org/jira/browse/HBASE-18631) | *Minor* | **Allow configuration of ChaosMonkey properties via hbase-site**

This change invalidates the need for a separate Java properties file to configure the ChaosMonkey included with HBase. These properties can be provided directly in hbase-site.xml. If configuration in provided in both locations, the Java properties file takes precendence.


---

* [HBASE-18665](https://issues.apache.org/jira/browse/HBASE-18665) | *Critical* | **ReversedScannerCallable invokes getRegionLocations incorrectly**

Performing reverse scan on tables used the meta cache incorrectly and fetched data from meta table every time. This fix solves this issue and which results in performance improvement for reverse scans.


---

* [HBASE-14745](https://issues.apache.org/jira/browse/HBASE-14745) | *Blocker* | **Shade the last few dependencies in hbase-shaded-client**

Previously some dependencies in hbase-shaded-client were still leaking into the un-shaded namespace. This should now be fixed.

Additionally the rat checking on generated intermediate files from shading should be skipped.


---

* [HBASE-18577](https://issues.apache.org/jira/browse/HBASE-18577) | *Critical* | **shaded client includes several non-relocated third party dependencies**

<!-- markdown -->

The HBase shaded artifacts (hbase-shaded-client and hbase-shaded-server) no longer contain several non-relocated third party dependency classes that were mistakenly included. Downstream users who relied on these classes being present will need to add a runtime dependency onto an appropriate third party artifact.

Previously, we erroneously packaged several third party libs without relocating them. In some cases these libraries have now been relocated; in some cases they are no longer included at all.

Includes:

* jaxb
* jetty
* jersey
* codahale metrics (HBase 1.4+ only)
* commons-crypto
* jets3t
* junit
* curator (HBase 1.4+)
* netty 3 (HBase 1.1)
* mokito-junit4 (HBase 1.1)

There is now testing to ensure that the shaded artifacts only contain expected relocated content. It can be run via `mvn -Dtest=noUnitTests -pl hbase-shaded/hbase-shaded-check-invariants -am -Prelease verify`.

For version 2.0+ this patch removes hadoop-mapreduce-client-core from the set of dependencies included for the hbase-client and hbase-shaded-client artifacts.

For 2.0+, the slf4j-log4j12 dependency is now optional for both shaded artifacts.


---

* [HBASE-18675](https://issues.apache.org/jira/browse/HBASE-18675) | *Minor* | **Making {max,min}SessionTimeout configurable for MiniZooKeeperCluster**

<!-- markdown -->

Standalone clusters and minicluster instances can now configure the session timeout for our embedded ZooKeeper quorum using `hbase.zookeeper.property.minSessionTimeout` and `hbase.zookeeper.property.maxSessionTimeout`.


---

* [HBASE-19055](https://issues.apache.org/jira/browse/HBASE-19055) | *Blocker* | **Backport HBASE-19042 to other active branches**

Precommit switched from Oracle JDK 8 to OpenJDK-8.


---

* [HBASE-19052](https://issues.apache.org/jira/browse/HBASE-19052) | *Critical* | **FixedFileTrailer should recognize CellComparatorImpl class in branch-1.x**

FixedFileTrailer#getComparatorClass() recognizes CellComparatorImpl and CellComparatorImpl$MetaCellComparator classes.

This is for rolling upgrade from 1.x release to 2.0 release.


---

* [HBASE-19189](https://issues.apache.org/jira/browse/HBASE-19189) | *Major* | **Ad-hoc test job for running a subset of tests lots of times**

<!-- markdown -->

Folks can now test out tests on an arbitrary release branch. Head over to [builds.a.o job "HBase-adhoc-run-tests"](https://builds.apache.org/view/H-L/view/HBase/job/HBase-adhoc-run-tests/), then pick "Build with parameters".
Tests are specified as just names e.g. TestLogRollingNoCluster. can also be a glob. e.g. TestHFile*



