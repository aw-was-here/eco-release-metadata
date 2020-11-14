
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
# Apache HBase  2.2.5 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-24032](https://issues.apache.org/jira/browse/HBASE-24032) | *Major* | **[RSGroup] Assign created tables to respective rsgroup automatically instead of manual operations**

Admin can determine which tables go to which rsgroup by script  (setting hbase.rsgroup.table.mapping.script with local filystem path) on Master side which aims to lighten the burden of admin operations.  Note, since HBase 3+, rsgroup can be specified in TableDescriptor as well, if clients specify this, master will skip the determination from script.

Here is a simple example of script:
{code}
# Input consists of two string, 1st is the namespace of the table, 2nd is the table name of the table
#!/bin/bash
namespace=$1
tablename=$2
if [[ $namespace == test ]]; then
  echo test
elif [[ $tablename == \*foo\* ]]; then
  echo other
else
  echo default
fi
{code}


---

* [HBASE-8868](https://issues.apache.org/jira/browse/HBASE-8868) | *Minor* | **add metric to report client shortcircuit reads**

Expose file system level read metrics for RegionServer.

If the HBase RS runs on top of HDFS, calculate the aggregation of
ReadStatistics of each HdfsFileInputStream. These metrics include:
(1) total number of bytes read from HDFS.
(2) total number of bytes read from local DataNode.
(3) total number of bytes read locally through short-circuit read.
(4) total number of bytes read locally through zero-copy read.

Because HDFS ReadStatistics is calculated per input stream, it is not
feasible to update the aggregated number in real time. Instead, the
metrics are updated when an input stream is closed.


---

* [HBASE-24050](https://issues.apache.org/jira/browse/HBASE-24050) | *Major* | **Deprecated PBType on all 2.x branches**

org.apache.hadoop.hbase.types.PBType is marked as deprecated without any replacement. It will be moved to hbase-example module and marked as IA.Private in 3.0.0. This is a mistake as it should not be part of our public API. Users who depend on this class should just copy the code your own code base.


---

* [HBASE-24122](https://issues.apache.org/jira/browse/HBASE-24122) | *Major* | **Change machine ulimit-l to ulimit-a so dumps full ulimit rather than just 'max locked memory'**

Our 'Build Artifacts' have a machine directory under which we emit vitals on the host the build was run on. We used to emit the result of 'ulimit -l' as a file named 'ulimit-l'. This has been hijacked to instead emit result of running 'ulimit -a' which includes stat on ulimit -l.


---

* [HBASE-24099](https://issues.apache.org/jira/browse/HBASE-24099) | *Major* | **Use a fair ReentrantReadWriteLock for the region close lock**

This change modifies the default acquisition policy for the region's close lock in order to prevent observed starvation of close requests. The new boolean configuration parameter 'hbase.regionserver.fair.region.close.lock' controls the lock acquisition policy: if true, the lock is created in fair mode (default); if false, the lock is created in nonfair mode (the old default).


---

* [HBASE-24121](https://issues.apache.org/jira/browse/HBASE-24121) | *Major* | **[Authorization] ServiceAuthorizationManager isn't dynamically updatable. And it should be.**

Master & RegionService now support refresh policy authorization defined in hbase-policy.xml without restarting service. To refresh policy, please execute hbase shell command: update\_config or update\_config\_all after policy file updated and synced on all nodes.


---

* [HBASE-24112](https://issues.apache.org/jira/browse/HBASE-24112) | *Major* | **[RSGroup] Support renaming rsgroup**

Support RSGroup renaming in core codebase. New API Admin#renameRSGroup(String, String) is introduced in 3.0.0.


---

* [HBASE-24218](https://issues.apache.org/jira/browse/HBASE-24218) | *Major* | **Add hadoop 3.2.x in hadoop check**

Add hadoop-3.2.0 and hadoop-3.2.1 in hadoop check and when '--quick-hadoopcheck' we will only check hadoop-3.2.1.

Notice that, for aligning the personality scripts across all the active branches, we will commit the patch to all active branches, but the hadoop-3.2.x support in hadoopcheck is only applied to branch-2.2+.


---

* [HBASE-24196](https://issues.apache.org/jira/browse/HBASE-24196) | *Major* | **[Shell] Add rename rsgroup command in hbase shell**

user or admin can now use
hbase shell \> rename\_rsgroup 'oldname', 'newname'
to rename rsgroup.


---

* [HBASE-24252](https://issues.apache.org/jira/browse/HBASE-24252) | *Major* | **Implement proxyuser/doAs mechanism for hbase-http**

This feature enables the HBase Web UI's to accept a 'proxyuser' via the HTTP Request's query string. When the parameter \`hbase.security.authentication.spnego.kerberos.proxyuser.enable\` is set to \`true\` in hbase-site.xml (default is \`false\`), the HBase UI will attempt to impersonate the user specified by the query parameter "doAs". This query parameter is checked case-insensitively. When this option is not provided, the user who executed the request is the "real" user and there is no ability to execute impersonation against the WebUI.

For example, if the user "bob" with Kerberos credentials executes a request against the WebUI with this feature enabled and a query string which includes \`doAs=alice\`, the HBase UI will treat this request as executed as \`alice\`, not \`bob\`.

The standard Hadoop proxyuser configuration properties to limit users who may impersonate others apply to this change (e.g. to enable \`bob\` to impersonate \`alice\`). See the Hadoop documentation for more information on how to configure these proxyuser rules.


---

* [HBASE-22710](https://issues.apache.org/jira/browse/HBASE-22710) | *Major* | **Wrong result in one case of scan that use  raw and versions and filter together**

Make the logic of the versions chosen more reasonable for raw scan, to avoid lose result when using filter.


---

* [HBASE-24271](https://issues.apache.org/jira/browse/HBASE-24271) | *Major* | **Set values in \`conf/hbase-site.xml\` that enable running on \`LocalFileSystem\` out of the box**

<!-- markdown -->
HBASE-24271 makes changes the the default `conf/hbase-site.xml` such that `bin/hbase` will run directly out of the binary tarball or a compiled source tree without any configuration modifications vs. Hadoop 2.8+. This changes our long-standing history of shipping no configured values in `conf/hbase-site.xml`, so existing processes that assume this file is empty of configuration properties may require attention.


---

* [HBASE-24115](https://issues.apache.org/jira/browse/HBASE-24115) | *Major* | **Relocate test-only REST "client" from src/ to test/ and mark Private**

Relocate test-only REST RemoteHTable and RemoteAdmin from src/ to test/. And mark them as InterfaceAudience.Private.


---

* [HBASE-24217](https://issues.apache.org/jira/browse/HBASE-24217) | *Major* | **Add hadoop 3.2.x support**

CI coverage has been extended to include Hadoop 3.2.x for HBase 2.2+.



