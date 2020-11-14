
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
# Apache HBase  1.3.6 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-22856](https://issues.apache.org/jira/browse/HBASE-22856) | *Major* | **HBASE-Find-Flaky-Tests fails with pip error**

Update the base docker image to ubuntu 18.04 for the find flaky tests jenkins job.


---

* [HBASE-22728](https://issues.apache.org/jira/browse/HBASE-22728) | *Major* | **Upgrade jackson dependencies in branch-1**

1. Stopped using Jackson1(org.codehaus.jackson\*) in HBase code base. 
2. Upgraded to Jackson2(com.fasterxml.jackson\*) instead. 
3. Stopped exposing vulnerable Jackson1 dependencies (org.codehaus.jackson:jackson-mapper-asl:1.9.13) so that downstreamers would not pull it in from HBase.
4. However, since Hadoop requires this dependency, put vulnerable jackson at compile scope in hbase-assembly module so that HBase tarball contains this mapper jar in lib. Still, downsteam applications can't pull in Jackson1 from HBase.
5. Upgraded maven assembly plugin to 3.1.1.


---

* [HBASE-22810](https://issues.apache.org/jira/browse/HBASE-22810) | *Major* | **Initialize an separate ThreadPoolExecutor for taking/restoring snapshot**

Introduced a new config key for the snapshot taking/restoring operations at master side:  hbase.master.executor.snapshot.threads, its default value is 3.  means we can have 3 snapshot operations running at the same time.


---

* [HBASE-22900](https://issues.apache.org/jira/browse/HBASE-22900) | *Minor* | **No longer include multiple httpcore and httpclient versions in binary package**

only a single version of httpclient 4 and httpcore 4 are included in the binary tarball now. previously, multiple minor versions were included and which got used would depend on classpath ordering.


---

* [HBASE-23015](https://issues.apache.org/jira/browse/HBASE-23015) | *Blocker* | **Replace Jackson with relocated gson everywhere but hbase-rest**

<!-- markdown -->

HBase has stopped including Jackson in the classpath seen by downstream  users except for as a part of running the HBase REST Service or when brought in transitively from Apache Hadoop.

Downstream users who still need Jackson classes should include the dependency themselves.

Moving from Jackson2 to shaded Gson can also expose some additional fields in 
serialized JSON strings. e.g. BucketAllocator JSON used to ignore "indexStatistics", "freeSize" earlier, however, now with Gson converter, these fields would be present in serialized string.


---

* [HBASE-22874](https://issues.apache.org/jira/browse/HBASE-22874) | *Critical* | **Define a public interface for Canary and move existing implementation to LimitedPrivate**

<!-- markdown -->
Downstream users who wish to programmatically check the health of their HBase cluster may now rely on a public interface derived from the previously private implementation of the canary cli tool. The interface is named `Canary` and can be found in the user facing javadocs.

Downstream users who previously relied on the invoking the canary via the Java classname (either on the command line or programmatically) will need to change how they do so because the non-public implementation has moved.


---

* [HBASE-23101](https://issues.apache.org/jira/browse/HBASE-23101) | *Blocker* | **Backport HBASE-22380 to branch-1**

Incompatible changes were made to the "Region" public interface to make sure a list of clusterIds can be passed to the "bulkLoadHFiles" function to break circle replication during bulk load.

NOTE: Downstream co-processor authors be aware of the change and use the interface/make the necessary adjustments accordingly.


---

* [HBASE-23174](https://issues.apache.org/jira/browse/HBASE-23174) | *Blocker* | **Upgrade jackson and jackson-databind to 2.9.10 (branch-1)**

Jackson has been updated for the Apache HBase REST Proxy to address CVE-2019-16335 and CVE-2019-14540.



