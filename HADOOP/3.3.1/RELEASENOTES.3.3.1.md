
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
# Apache Hadoop  3.3.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [HADOOP-16730](https://issues.apache.org/jira/browse/HADOOP-16730) | *Major* | **ABFS: Support for Shared Access Signatures (SAS)**

ABFS support for a SAS token provider plug-in.


---

* [HDFS-15281](https://issues.apache.org/jira/browse/HDFS-15281) | *Major* | **ZKFC ignores dfs.namenode.rpc-bind-host and uses dfs.namenode.rpc-address to bind to host address**

ZKFC binds host address to "dfs.namenode.servicerpc-bind-host", if configured. Otherwise, it binds to "dfs.namenode.rpc-bind-host". If neither of those is configured, ZKFC binds itself to NameNode RPC server address (effectively "dfs.namenode.rpc-address").


---

* [HADOOP-16916](https://issues.apache.org/jira/browse/HADOOP-16916) | *Minor* | **ABFS: Delegation SAS generator for integration with Ranger**

Azure ABFS support for Shared Access Signatures (SAS)


---

* [HADOOP-17024](https://issues.apache.org/jira/browse/HADOOP-17024) | *Major* | **ListStatus on ViewFS root (ls "/") should list the linkFallBack root (configured target root).**

ViewFS#listStatus on root("/") considers listing from fallbackLink if available. If the same directory name is present in configured mount path as well as in fallback link, then only the configured mount path will be listed in the returned result.


---

* [HADOOP-17076](https://issues.apache.org/jira/browse/HADOOP-17076) | *Minor* | **ABFS: Delegation SAS Generator Updates**

Azure Blob File System (ABFS) SAS Generator Update


---

* [HADOOP-17089](https://issues.apache.org/jira/browse/HADOOP-17089) | *Critical* | **WASB: Update azure-storage-java SDK**

Azure WASB bug fix that can cause list results to appear empty.


---

* [HADOOP-17105](https://issues.apache.org/jira/browse/HADOOP-17105) | *Minor* | **S3AFS globStatus attempts to resolve symlinks**

Remove unnecessary symlink resolution in S3AFileSystem globStatus


---

* [HADOOP-13230](https://issues.apache.org/jira/browse/HADOOP-13230) | *Major* | **S3A to optionally retain directory markers**

The S3A connector now has an option to stop deleting directory markers as files are written. This eliminates the IO throttling the operations can cause, and avoids creating tombstone markers on versioned S3 buckets.

This feature is incompatible with all versions of Hadoop which lack the HADOOP-17199 change to list and getFileStatus calls.

Consult the S3A documentation for further details


---

* [HADOOP-17215](https://issues.apache.org/jira/browse/HADOOP-17215) | *Major* | **ABFS: Support for conditional overwrite**

ABFS: Support for conditional overwrite.


---

* [YARN-9809](https://issues.apache.org/jira/browse/YARN-9809) | *Major* | **NMs should supply a health status when registering with RM**

Improved node registration with node health status.


---

* [HADOOP-17125](https://issues.apache.org/jira/browse/HADOOP-17125) | *Major* | **Using snappy-java in SnappyCodec**

The SnappyCodec uses the snappy-java compression library, rather than explicitly referencing native binaries.  It contains the native libraries for many operating systems and instruction sets, falling back to a pure java implementation. It does requires the snappy-java.jar is on the classpath. It can be found in hadoop-common/lib, and has already been present as part of the avro dependencies



