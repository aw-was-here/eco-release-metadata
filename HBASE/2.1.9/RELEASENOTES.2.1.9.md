
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
# Apache HBase  2.1.9 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HBASE-23312](https://issues.apache.org/jira/browse/HBASE-23312) | *Major* | **HBase Thrift SPNEGO configs (HBASE-19852) should be backwards compatible**

The newer HBase Thrift SPNEGO configs should not be required. The hbase.thrift.spnego.keytab.file and hbase.thrift.spnego.principal configs will fall back to the hbase.thrift.keytab.file and hbase.thrift.kerberos.principal original configs. The older configs will log a deprecation warning. It is preferred to new the newer SPNEGO configurations.


---

* [HBASE-23549](https://issues.apache.org/jira/browse/HBASE-23549) | *Minor* | **Document steps to disable MOB for a column family**

The reference guide now includes a walk through of disabling the MOB feature if needed while maintaining availability.


---

* [HBASE-23239](https://issues.apache.org/jira/browse/HBASE-23239) | *Major* | **Reporting on status of backing MOB files from client-facing cells**

<!-- markdown -->

Users of the MOB feature can now use the `mobrefs` utility to get statistics about data in the MOB system and verify the health of backing files on HDFS.

```
HADOOP_CLASSPATH=/etc/hbase/conf:$(hbase mapredcp) yarn jar \
    /some/path/to/hbase-shaded-mapreduce.jar mobrefs mobrefs-report-output some_table foo
```

See javadocs of the class `MobRefReporter` for more details.

the reference guide has added some information about MOB internals and troubleshooting.


---

* [HBASE-20461](https://issues.apache.org/jira/browse/HBASE-20461) | *Major* | **Implement fsync for AsyncFSWAL**

Now AsyncFSWAL also supports Durability.FSYNC\_WAL.


---

* [HBASE-23320](https://issues.apache.org/jira/browse/HBASE-23320) | *Major* | **Upgrade surefire plugin to 3.0.0-M4**

Bumped surefire plugin to 3.0.0-M4


---

* [HBASE-23619](https://issues.apache.org/jira/browse/HBASE-23619) | *Trivial* | **Use built-in formatting for logging in hbase-zookeeper**

Changed the logging in hbase-zookeeper to use built-in formatting


---

* [HBASE-23679](https://issues.apache.org/jira/browse/HBASE-23679) | *Critical* | **FileSystem instance leaks due to bulk loads with Kerberos enabled**

This issues fixes an issue with Bulk Loading on installations with Kerberos enabled and more than a single RegionServer. When multiple tables are involved in hosting a table's regions which are being bulk-loaded into, all but the RegionServer hosting the table's first Region will "leak" one DistributedFileSystem object onto the heap, never freeing that memory. Eventually, with enough bulk loads, this will create a situation for RegionServers where they have no free heap space and will either spend all time in JVM GC, lose their ZK session, or crash with an OutOfMemoryError.

The only mitigation for this issue is to periodically restart RegionServers. All earlier versions of HBase 2.x are subject to this issue (2.0.x, \<=2.1.8, \<=2.2.3)


---

* [HBASE-23686](https://issues.apache.org/jira/browse/HBASE-23686) | *Major* | **Revert binary incompatible change and remove reflection**

- Reverts a binary incompatible binary change for ByteRangeUtils
- Usage of reflection inside CommonFSUtils removed


---

* [HBASE-17115](https://issues.apache.org/jira/browse/HBASE-17115) | *Major* | **HMaster/HRegion Info Server does not honour admin.acl**

Implements authorization for the HBase Web UI by limiting access to certain endpoints which could be used to extract sensitive information from HBase.

Access to these restricted endpoints can be limited to a group of administrators, identified either by a list of users (hbase.security.authentication.spnego.admin.users) or by a list of groups
(hbase.security.authentication.spnego.admin.groups).  By default, neither of these values are set which will preserve backwards compatibility (allowing all authenticated users to access all endpoints).

Further, users who have sensitive information in the HBase service configuration can set hbase.security.authentication.ui.config.protected to true which will treat the configuration endpoint as a protected, admin-only resource. By default, all authenticated users may access the configuration endpoint.


---

* [HBASE-23554](https://issues.apache.org/jira/browse/HBASE-23554) | *Major* | **Encoded regionname to regionname utility**

    Adds shell command regioninfo:

      hbase(main):001:0\>  regioninfo '0e6aa5c19ae2b2627649dc7708ce27d0'
      {ENCODED =\> 0e6aa5c19ae2b2627649dc7708ce27d0, NAME =\> 'TestTable,,1575941375972.0e6aa5c19ae2b2627649dc7708ce27d0.', STARTKEY =\> '', ENDKEY =\> '00000000000000000000299441'}
      Took 0.4737 seconds



